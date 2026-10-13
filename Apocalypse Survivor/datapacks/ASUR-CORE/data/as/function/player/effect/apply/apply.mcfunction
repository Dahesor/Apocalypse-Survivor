#>@private as:player/effect/apply/apply
#>@local score $new_until
# The duration of the new instance

function as:player/effect/apply/__del_existed with storage as:player keffects[0]
data modify storage registry:effect ztemp set from storage as:player keffects[0]
data modify storage as:player keffects set value []
data modify storage as:player keffects append from storage registry:effect ztemp
execute store result score $new_until calculator run data get storage as:player keffects[0].until
function as:player/effect/apply/loop_apply

execute if data storage registry:effect ztemp.hooks.on_apply run function as:core/run with storage registry:effect ztemp.hooks.on_apply