data modify storage registry:item new set value {\
    id:"food:god_apple",\
    model:"as:treasure/god_apple",\
    rarity:"mythic",\
    data:{food:{cake:20,fruit:120,type:"eat"},treasure:{price:19999}},\
    components:{enchantment_glint_override:true},\
    lore:[\
        {},\
        {},\
    ],\
}

function registry:__parse__/item/new