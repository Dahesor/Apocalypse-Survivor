execute unless score @s monitor.food matches 1.. run return run function as:player/stats/vanilla_food/exhust_1

scoreboard players operation #temp calculator = @s monitor.food
scoreboard players operation #temp calculator -= #threshold.exhust calculator
execute if score #temp calculator matches 12.. run return run function as:player/stats/vanilla_food/exhust_12

function as:player/stats/vanilla_food/exhust_1