#>@private as:player/effect/apply/get/child/skip

data remove storage as:effect children[0]
execute unless data storage as:effect children[0] run return run data modify storage as:player keffects[0].child append from storage as:effect child
function as:player/effect/apply/get/child/loop