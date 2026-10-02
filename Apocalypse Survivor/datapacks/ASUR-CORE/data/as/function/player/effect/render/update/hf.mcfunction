execute store result score #count calculator run data get storage as:effect fTick
execute if score #count calculator matches ..0 run return fail
scoreboard players set $step calculator 2
data modify storage as:effect this set from storage as:effect fTick
function as:player/effect/render/update/this