# Add the lore line
$data modify storage registry:item ztemp.display.lore_resolved append value {translate:"item.$(str).lore.$(i)",color:"gray",italic:false}

# Apply style
execute if data storage registry:item new.lore[0].style run data modify storage registry:item ztemp.display.lore_resolved[-1] merge from storage registry:item new.lore[0].style

# Reslove Translate Vars
execute if data storage registry:item new.lore[0].with[0] run function registry:__parse__/item/display/lore/with

data remove storage registry:item new.lore[0]
function registry:__parse__/item/display/lore/gen