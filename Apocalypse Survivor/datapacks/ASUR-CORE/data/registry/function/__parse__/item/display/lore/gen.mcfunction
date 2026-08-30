execute if score #count calculator >= #max calculator run return 1
execute store result storage ram: i.i int 1 run scoreboard players add #count calculator 1
data modify storage ram: i.str set from storage registry:item ztemp.id
function registry:__parse__/item/display/lore/__line with storage ram: i