data modify storage run: with_type_test set from storage registry:item new.lore[0].with[0].type
execute if data storage run: {with_type_test:"const"} run return run function registry:__parse__/item/display/lore/with/__const with storage registry:item new.lore[0].with[0]


data remove storage registry:item new.lore[0].with[0]
execute if data storage registry:item new.lore[0].with[0] run function registry:__parse__/item/display/lore/with