data modify storage ram: components."minecraft:lore" append value ""
data modify storage ram: components."minecraft:lore" append value {translate:"item_class.treasure",color:"light_purple",italic:false}
data modify storage ram: components."minecraft:lore" append value {translate:"item_class.treasure.price",color:"green",italic:false,with:[0]}
execute store result storage ram: components."minecraft:lore"[-1].with[0] int 1 run data get storage registry:item ztemp.data.treasure.price
