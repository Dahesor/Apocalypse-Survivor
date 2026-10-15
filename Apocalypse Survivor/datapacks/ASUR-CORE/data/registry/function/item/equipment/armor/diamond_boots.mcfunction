#>registry:item/equipment/armor/diamond_boots
# @protected within registry:item

data modify storage registry:item new set value {\
    id:"equipment:armor/diamond_boots",\
    model:"diamond_boots",\
    rarity:"refined",\
    data:{armor:{equip:{slot:"feet",asset_id:"diamond",equip_sound:"item.armor.equip_diamond"}}},\
    components:{},\
    lore:[\
        {},\
    ],\
}

function registry:__parse__/item/new