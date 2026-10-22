#>@private mech:vision/grass/node/shift_z

scoreboard players remove #count_z calculator 1
execute if score #count_z calculator matches ..0 run return 1

execute if score #dz calculator matches 1.. positioned ~ ~ ~1 run return run function mech:vision/grass/node/each_z
execute positioned ~ ~ ~-1 run function mech:vision/grass/node/each_z