#>mech:vision/grass/node/each_z
# @private within mech:vision

data modify storage run: grid append value []

#>@private score #this.x calculator
#>@private score #last_reachable calculator

scoreboard players set #this.x calculator 0
function mech:vision/grass/node/each_x
scoreboard players set #last_reachable calculator 0


function mech:vision/grass/node/shift_z