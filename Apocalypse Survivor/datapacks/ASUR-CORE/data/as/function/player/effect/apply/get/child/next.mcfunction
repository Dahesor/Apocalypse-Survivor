#>@private as:player/effect/apply/get/child/next

data modify storage as:player keffects[0].child append from storage as:effect children[0]
function as:player/effect/apply/get/child/skip