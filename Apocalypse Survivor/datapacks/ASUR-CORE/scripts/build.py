from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parent.parent

from builds.generat_translate_lines import main as generate_translate_lines


def main() -> None:
    generate_translate_lines()


if __name__ == "__main__":
    main()
