#>mech:vision/grass/trigger
# @private within mech:vision
# @callby advancement mech:vision/in_tall_grass

#>@public predicate mech:vision/is_hiding If the player is in vegetation or closet
#>@public predicate mech:vision/exposed If the player is exposed

execute unless predicate mech:vision/is_hiding unless predicate mech:vision/exposed run function mech:vision/grass/enter

execute if score @s hiding matches -1..2 run scoreboard players add @s hiding 2