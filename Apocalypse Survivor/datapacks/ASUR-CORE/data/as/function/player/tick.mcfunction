#>as:player/tick
# @private within as:tick

# Dev
execute if entity @s[tag=__this] run say __this leaked

# Second
execute if score #loop_20 calculator matches 3 run function as:player/second

# Universal
advancement revoke @s only mech:vision/in_tall_grass
execute if score @s privilege_trigger matches 1.. run function op:trigger/trig
execute if score @s privilege_input matches 1.. run function op:trigger/input
execute if score @s leave_game matches 1.. run function as:player/left_game

# Players Only
execute unless predicate as:is_player run return 1

# Check air to render water bar at the correct position
execute if predicate as:player/has_hud run function as:player/stats/render/water/air
execute if entity @s[tag=core.has_effect] run function as:player/effect/analyze
function as:player/stats/gamemode/gamemode
function as:player/stats/vanilla_food/check

function #as:player_tick