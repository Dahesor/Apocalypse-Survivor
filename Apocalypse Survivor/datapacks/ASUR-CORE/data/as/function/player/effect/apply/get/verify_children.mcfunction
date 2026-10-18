#>@private as:player/effect/apply/get/verify_children
# Check all children of the instance against the master data
# keep only the valid ones

scoreboard players set $instance_change calculator 1
data modify storage as:effect params.new set from storage registry:effect this
data modify storage as:effect params.old set from storage as:player keffects[0]

data modify storage as:player keffects insert 1 value {}
data modify storage as:player keffects[1].child set from storage as:player keffects[0].child
data modify storage as:player keffects[0] set from storage registry:effect this
execute unless data storage as:player keffects[1].child[0].until run return 1

execute store result score $this calculator run data get storage as:player keffects[0].until
function as:player/effect/apply/get/_verify_children

return 1