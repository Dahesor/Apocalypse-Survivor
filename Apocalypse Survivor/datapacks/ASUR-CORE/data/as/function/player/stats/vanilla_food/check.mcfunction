scoreboard players set #threshold.exhust calculator 19
scoreboard players set #threshold.repair calculator 18
execute if entity @s[tag=no_sprint] run scoreboard players set #threshold.exhust calculator 5
execute if entity @s[tag=no_sprint] run scoreboard players set #threshold.repair calculator 2

execute unless score @s monitor.food < #threshold.exhust calculator run function as:player/stats/vanilla_food/exhust
execute if score @s monitor.food < #threshold.repair calculator run function as:player/stats/vanilla_food/restore