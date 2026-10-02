execute store result score #count calculator run data get storage as:effect sTick
execute if score #count calculator matches ..0 run return fail
scoreboard players set $step calculator 10
data modify storage as:effect this set from storage as:effect sTick
function as:player/effect/render/update/this