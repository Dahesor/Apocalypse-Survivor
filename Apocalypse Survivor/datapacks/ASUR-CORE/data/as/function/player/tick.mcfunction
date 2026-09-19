# Dev
execute if entity @s[tag=__this] run say __this leaked

# Second
execute if score #loop_20 calculator matches 3 run function as:player/second

# Universal
execute if score @s privilege_trigger matches 1.. run function op:trigger/trig
execute if score @s privilege_input matches 1.. run function op:trigger/input
execute if score @s leave_game matches 1.. run function as:player/left_game

#> Players Only
execute unless predicate as:is_player run return 1

execute if score @s effect_update matches 1.. run scoreboard players remove @s effect_update 1
execute if score @s effect_update matches 1 run function as:player/effect/analyze

# Check air to render water bar at the correct position
execute if predicate as:player/has_hud run function as:player/stats/render/water/air
function as:player/stats/gamemode/gamemode
function as:player/stats/vanilla_food/check