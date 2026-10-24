#>@private registry:effect/buff/invisible/on_remove

tag @s remove effect.invisible
execute if predicate mech:vision/invisible_by_hiding run return 1

function mech:vision/invi/remove