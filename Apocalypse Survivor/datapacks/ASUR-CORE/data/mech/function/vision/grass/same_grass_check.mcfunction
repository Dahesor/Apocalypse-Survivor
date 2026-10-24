#>@private mech:vision/grass/same_grass_check

#>@local score #_x calculator
#>@local score #_z calculator
#>@private tag mech.hiding_exposed The player is hiding but has been exposed

scoreboard players operation #in_x calculator = #_x calculator
scoreboard players operation #in_z calculator = #_z calculator

execute unless function mech:vision/in_same_grass run return fail

scoreboard players set #failed_hide calculator 1
function mech:vision/grass/exposed