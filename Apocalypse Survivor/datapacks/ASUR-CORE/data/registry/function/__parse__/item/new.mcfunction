#init
data modify storage registry:item ztemp set from storage registry:item new
data modify storage registry:item ztemp.display set value {lore_resolved:[]}
data modify storage ram: components set value {}
data modify storage ram: components."minecraft:lore" set value [""]

#Item and as item id
data modify storage registry:item ztemp.stack set value {id:"barrier",components:{"minecraft:custom_data":{item:{id:"_"}}}}
data modify storage registry:item ztemp.stack.id set from storage registry:item ztemp.item
data modify storage registry:item ztemp.stack.components."minecraft:custom_data".item.id set from storage registry:item ztemp.id
data modify storage registry:item ztemp.stack.components."minecraft:custom_data" merge from storage registry:item ztemp.data
data modify storage registry:item ztemp.stack.components merge from storage registry:item ztemp.components

#Rarity
function registry:__parse__/item/display/rarity

#Item Model
execute if data storage registry:item ztemp.model run data modify storage ram: components."minecraft:item_model" set from storage registry:item ztemp.model

#Stack Size
execute if data storage registry:item ztemp.max_stack_size run data modify storage ram: components."minecraft:max_stack_size" set from storage registry:item ztemp.max_stack_size

#Item Name
function registry:__parse__/item/display/__item_name with storage registry:item ztemp

#Item Lore
scoreboard players set #count calculator 0
execute store result score #max calculator run data get storage registry:item ztemp.lore
function registry:__parse__/item/display/lore/gen

#Apply Display
data modify storage ram: components."minecraft:custom_name" set from storage registry:item ztemp.display.item_name
data modify storage ram: components.minecraft:lore append from storage registry:item ztemp.display.lore_resolved[]

# Item Classes
execute if data storage registry:item ztemp.data.food run function registry:__parse__/item/class/food/main

#Add to Reg
data modify storage registry:item ztemp.stack.components merge from storage ram: components
data modify storage registry:item entry append from storage registry:item ztemp