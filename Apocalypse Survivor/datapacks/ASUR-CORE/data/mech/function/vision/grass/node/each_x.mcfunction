#>@private mech:vision/grass/node/each_x

data modify storage run: grid[-1] append value false

execute unless block ~ ~ ~ #mech:may_hide run return run function mech:vision/grass/node/skip_this_x

execute if score #last_reachable calculator matches 0 unless function mech:vision/grass/node/check_last_row run return run function mech:vision/grass/node/skip_this_x

data modify storage run: grid[-1][-1] set value true
scoreboard players set #last_reachable calculator 1


function mech:vision/grass/node/shift_x