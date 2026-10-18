#>@private as:player/effect/apply/get/child

scoreboard players set $instance_change calculator -1
data modify storage as:effect child set value {}
data modify storage as:effect child.i_duration set from storage registry:effect this.i_duration
data modify storage as:effect child.j_intensity set from storage registry:effect this.j_intensity
data modify storage as:effect child.until set from storage registry:effect this.until
data modify storage as:effect child.hidden set from storage registry:effect this.hidden
data modify storage as:effect child.frame set from storage registry:effect this.frame

data modify storage as:effect children set value []
data modify storage as:effect children set from storage as:player keffects[0].child
execute unless data storage as:effect children[0] run return run data modify storage as:player keffects[0].child append from storage as:effect child
data remove storage as:player keffects[0].child


function as:player/effect/apply/get/child/loop