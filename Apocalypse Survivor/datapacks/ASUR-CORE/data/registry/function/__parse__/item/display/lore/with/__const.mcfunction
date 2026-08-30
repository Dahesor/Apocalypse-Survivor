$execute store result storage ram: i.i int 1 run scoreboard players get $(name) const
data modify storage ram: i.str set value ""
execute if data storage registry:item new.lore[0].with[0].extra run data modify storage ram: i.str set from storage registry:item new.lore[0].with[0].extra

function registry:__parse__/item/display/lore/with/__add_var with storage ram: i