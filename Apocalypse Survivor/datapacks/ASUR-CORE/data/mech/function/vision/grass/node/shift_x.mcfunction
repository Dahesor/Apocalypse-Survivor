#>@private mech:vision/grass/node/shift_x

scoreboard players add #this.x calculator 1
execute if score #this.x calculator >= #count_x calculator run return 1

execute if score #dx calculator matches 1.. positioned ~1 ~ ~ run return run function mech:vision/grass/node/each_x
execute positioned ~-1 ~ ~ run return run function mech:vision/grass/node/each_x