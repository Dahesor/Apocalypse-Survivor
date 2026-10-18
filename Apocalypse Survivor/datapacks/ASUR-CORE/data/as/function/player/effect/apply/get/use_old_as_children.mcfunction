#>@private as:player/effect/apply/get/use_old_as_children
# @returns `1`

scoreboard players set $instance_change calculator 1
data modify storage as:effect params.new set from storage registry:effect this
data modify storage as:effect params.old set from storage as:player keffects[0]

data modify storage as:player keffects prepend from storage registry:effect this
data modify storage as:player keffects[0].child prepend value {}
data modify storage as:player keffects[0].child[0].i_duration set from storage as:player keffects[1].i_duration
data modify storage as:player keffects[0].child[0].j_intensity set from storage as:player keffects[1].j_intensity
data modify storage as:player keffects[0].child[0].until set from storage as:player keffects[1].until
data modify storage as:player keffects[0].child[0].hidden set from storage as:player keffects[1].hidden
data modify storage as:player keffects[0].child[0].frame set from storage as:player keffects[1].frame
data modify storage as:player keffects[0].child append from storage as:player keffects[1].child[]
return 1