#>registry:item/equipment/armor/diamond_chestplate
# @protected within registry:item

data modify storage registry:item new set value {\
    id:"equipment:armor/diamond_chestplate",\
    item:"diamond_chestplate",\
    rarity:"common",\
    data:{armor:{equip:{slot:"chest",asset_id:"diamond",equip_sound:"item.armor.equip_diamond"}}},\
    components:{},\
    lore:[\
        {},\
        {},\
    ],\
}

function registry:__parse__/item/new