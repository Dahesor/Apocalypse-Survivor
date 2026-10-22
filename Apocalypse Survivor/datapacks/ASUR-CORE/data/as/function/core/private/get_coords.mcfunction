#>as:core/private/get_coords
# @private within as:core/get_coords

tp @s ~ ~ ~

data modify storage ram: Pos set from entity @s Pos

execute store result score #x calculator run data get storage ram: Pos[0]
execute store result score #y calculator run data get storage ram: Pos[1]
execute store result score #z calculator run data get storage ram: Pos[2]
scoreboard players remove #y calculator 400

tp @s 0 400 0