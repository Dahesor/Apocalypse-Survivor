#>@private mech:vision/grass/enter Entered hiding spot
# When player enters grass

function as:core/team/set_context

# No players from other teams nearby, skip checking
execute unless entity @a[predicate=as:is_alive_player,predicate=!as:core/same_team_ctx,distance=..20] run return run function mech:vision/invi/apply

function as:core/get_coords

#>@local score #_x calculator
#>@local score #_z calculator

#>@private score #failed_hide calculator

scoreboard players operation #_x calculator = #x calculator
scoreboard players operation #_z calculator = #z calculator
scoreboard players set #failed_hide calculator 0

execute as @a[predicate=as:is_alive_player,predicate=!as:core/same_team_ctx,distance=..20] at @s run function mech:vision/grass/same_grass_check

execute if score #failed_hide calculator matches 1 run return run function mech:vision/grass/exposed

function mech:vision/invi/apply