#>@private mech:vision/grass/node/check_last_row
# @predicate true if the adjacent last row grid is reachable

execute store result storage ram: i.i int 1 run scoreboard players get #this.x calculator
return run function mech:vision/grass/node/__check_last_row with storage ram: i