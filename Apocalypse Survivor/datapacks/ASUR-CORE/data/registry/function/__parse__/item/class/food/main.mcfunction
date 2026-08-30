data modify storage ram: components."minecraft:lore" append value ""
data modify storage ram: components."minecraft:lore" append value {translate:"item_class.food",color:"blue",italic:false}

# Load data into scoreboard
scoreboard players set $this food.cake 0
scoreboard players set $this food.fruit 0
scoreboard players set $this food.meat 0
scoreboard players set $this food.vegie 0
scoreboard players set $this water 0
execute if data storage registry:item ztemp.data.food.cake store result score $this food.cake run data get storage registry:item ztemp.data.food.cake
execute if data storage registry:item ztemp.data.food.fruit store result score $this food.fruit run data get storage registry:item ztemp.data.food.fruit
execute if data storage registry:item ztemp.data.food.meat store result score $this food.meat run data get storage registry:item ztemp.data.food.meat
execute if data storage registry:item ztemp.data.food.vegie store result score $this food.vegie run data get storage registry:item ztemp.data.food.vegie
execute if data storage registry:item ztemp.data.food.water store result score $this water run data get storage registry:item ztemp.data.food.water

data modify storage dnt:ram in set value [""]


data modify storage run: full_icon set value "J"
data modify storage run: half_icon set value "k"
scoreboard players operation #count calculator = $this food.cake
function registry:__parse__/item/class/food/this_type

data modify storage run: full_icon set value "A"
data modify storage run: half_icon set value "s"
scoreboard players operation #count calculator = $this food.meat
function registry:__parse__/item/class/food/this_type

data modify storage run: full_icon set value "D"
data modify storage run: half_icon set value "f"
scoreboard players operation #count calculator = $this food.vegie
function registry:__parse__/item/class/food/this_type

data modify storage run: full_icon set value "G"
data modify storage run: half_icon set value "h"
scoreboard players operation #count calculator = $this food.fruit
function registry:__parse__/item/class/food/this_type

data modify storage run: full_icon set value "Z"
data modify storage run: half_icon set value "x"
scoreboard players operation #count calculator = $this water
function registry:__parse__/item/class/food/this_type

function dnt:concat

data modify storage ram: components."minecraft:lore" append value {text:"",italic:false,font:"as:icon",color:"white"}
data modify storage ram: components."minecraft:lore"[-1].text set from storage dnt:ram out

data modify storage ram: components."minecraft:food" set value {nutrition:0,saturation:0,can_always_eat:true}
data modify storage ram: components."minecraft:consumable" set value {animation:"eat",sound:"entity.generic.eat"}
execute if data storage registry:item ztemp.data.food{type:"drink"} run data modify storage ram: components."minecraft:consumable" set value {animation:"drink",sound:"entity.generic.drink",has_consume_particles:false}
execute if data storage registry:item ztemp.data.food.consume_sec run data modify storage ram: components."minecraft:consumable".consume_seconds set from storage registry:item ztemp.data.food.consume_sec