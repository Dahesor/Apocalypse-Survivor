effect give @s saturation 1 1 true
execute store result score #temp calculator run data get entity @s foodSaturationLevel
execute if score #temp calculator matches 1.. run function dfh:logic/regen/apply_exhution