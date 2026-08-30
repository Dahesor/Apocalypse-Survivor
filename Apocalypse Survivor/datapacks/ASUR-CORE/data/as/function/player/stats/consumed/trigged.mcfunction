advancement revoke @s only as:consume/food

data modify storage ram: data set value {}
execute if items entity @s weapon.offhand *[custom_data~{food:{}}] run data modify storage ram: data set from entity @s equipment.offhand.components."minecraft:custom_data"
execute if items entity @s weapon *[custom_data~{food:{}}] run data modify storage ram: data set from entity @s SelectedItem.components."minecraft:custom_data"

execute unless data storage ram: data.food run return fail

execute if data storage ram: data.food.vegie run function as:player/stats/consumed/vegie
execute if data storage ram: data.food.fruit run function as:player/stats/consumed/fruit
execute if data storage ram: data.food.meat run function as:player/stats/consumed/meat
execute if data storage ram: data.food.cake run function as:player/stats/consumed/cake
execute if data storage ram: data.food.water run function as:player/stats/consumed/water

function as:player/stats/render/update_all