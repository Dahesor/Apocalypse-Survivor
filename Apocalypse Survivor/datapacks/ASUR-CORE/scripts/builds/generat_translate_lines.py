import json
import re
from pathlib import Path
from typing import Any


PROJECT_ROOT = Path(__file__).resolve().parents[2]
SOURCE_DIR = PROJECT_ROOT / "data" / "registry" / "function" / "item"
TARGET_FILE = PROJECT_ROOT / ".." / ".." /  ".." /  ".." / "resourcepacks" / "Apocalypse Survivor Resources" / "lang" / "assets" / "item" / "lang" / "zh_cn.json"

ITEM_COMMAND = "data modify storage registry:item new set value"
ID_PATTERN = re.compile(
    r"^[ \t]*id[ \t]*:[ \t]*(?P<quote>['\"])(?P<id>[^'\"]+)(?P=quote)[ \t]*,",
    re.MULTILINE,
)
LORE_PATTERN = re.compile(r"\blore[ \t]*:[ \t]*\[")


def _first_non_empty_line(text: str) -> str | None:
    for line in text.splitlines():
        if line.strip():
            return line.strip()
    return None


def _count_lore_objects(text: str, opening_bracket: int) -> int:
    """Count direct object entries in a lore array.

    Objects nested inside a lore entry do not represent additional lore lines.
    Strings are ignored while balancing brackets and braces so JSON/SNBT text in
    an entry cannot interfere with the count.
    """

    array_depth = 1
    object_depth = 0
    count = 0
    quote: str | None = None
    escaped = False

    for character in text[opening_bracket + 1 :]:
        if quote is not None:
            if escaped:
                escaped = False
            elif character == "\\":
                escaped = True
            elif character == quote:
                quote = None
            continue

        if character in {'"', "'"}:
            quote = character
        elif character == "[":
            array_depth += 1
        elif character == "]":
            array_depth -= 1
            if array_depth == 0:
                if object_depth != 0:
                    raise ValueError("unbalanced braces in lore array")
                return count
        elif character == "{":
            if array_depth == 1 and object_depth == 0:
                count += 1
            object_depth += 1
        elif character == "}":
            object_depth -= 1
            if object_depth < 0:
                raise ValueError("unbalanced braces in lore array")

    raise ValueError("lore array is not closed")


def _item_translation_info(path: Path) -> tuple[str, int] | None:
    text = path.read_text(encoding="utf-8-sig")
    first_line = _first_non_empty_line(text)
    if first_line is None or not first_line.startswith(ITEM_COMMAND):
        return None

    id_match = ID_PATTERN.search(text)
    if id_match is None:
        raise ValueError(f'{path}: item command does not contain a quoted "id" field')

    lore_match = LORE_PATTERN.search(text, id_match.end())
    if lore_match is None:
        raise ValueError(f'{path}: item "{id_match.group("id")}" has no lore array')

    opening_bracket = lore_match.end() - 1
    try:
        lore_count = _count_lore_objects(text, opening_bracket)
    except ValueError as error:
        raise ValueError(f"{path}: {error}") from error

    return id_match.group("id"), lore_count


def _read_translations(target_file: Path) -> dict[str, Any]:
    if not target_file.exists():
        return {}

    try:
        translations = json.loads(target_file.read_text(encoding="utf-8-sig"))
    except json.JSONDecodeError as error:
        raise ValueError(f"{target_file}: invalid JSON: {error}") from error

    if not isinstance(translations, dict):
        raise ValueError(f"{target_file}: the JSON root must be an object")
    return translations


def generate_translate_lines(source_dir: Path, target_file: Path) -> int:
    """Add missing item name/lore translation keys and return their count."""

    source_dir = Path(source_dir)
    target_file = Path(target_file)
    translations = _read_translations(target_file)
    added = 0

    for source_file in sorted(source_dir.rglob("*.mcfunction")):
        item_info = _item_translation_info(source_file)
        if item_info is None:
            continue

        item_id, lore_count = item_info
        keys = [f"item.{item_id}.name"]
        keys.extend(f"item.{item_id}.lore.{line}" for line in range(1, lore_count + 1))

        for key in keys:
            if key not in translations:
                translations[key] = "TEXTNOTFOUND"
                added += 1

    if added or not target_file.exists():
        target_file.parent.mkdir(parents=True, exist_ok=True)
        target_file.write_text(
            json.dumps(translations, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )

    return added


def main() -> None:
    generate_translate_lines(SOURCE_DIR, TARGET_FILE)


if __name__ == "__main__":
    main()
