data modify storage registry:item new set value {\
    id:"treasure:diamond",\
    model:"as:treasure/diamond",\
    rarity:"legendary",\
    data:{treasure:{price:8888}},\
    max_stack_size:1,\
    components:{enchantment_glint_override:true},\
    lore:[\
        {},\
    ],\
}

function registry:__parse__/item/new