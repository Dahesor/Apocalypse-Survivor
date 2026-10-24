#>mech:vision/grass/ticker
# @private within mech:

execute if score @s hiding matches 1 run function mech:vision/grass/left
execute if score @s hiding matches 1.. run scoreboard players remove @s hiding 1
execute if score @s hiding matches ..-1 run scoreboard players add @s hiding 1