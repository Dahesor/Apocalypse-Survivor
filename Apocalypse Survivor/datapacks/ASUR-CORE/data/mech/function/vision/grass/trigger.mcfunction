#>mech:vision/grass/trigger
# @private within mech:vision
# @callby advancement mech:vision/in_tall_grass

#>@public predicate mech:vision/is_hiding If the player is in vegetation or closet

execute unless predicate mech:vision/is_hiding run function mech:vision/grass/enter

execute unless score @s hiding matches 2.. run scoreboard players set @s hiding 2