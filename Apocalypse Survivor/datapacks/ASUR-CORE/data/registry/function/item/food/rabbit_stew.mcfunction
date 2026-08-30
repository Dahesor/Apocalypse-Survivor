data modify storage registry:item new set value {\
    id:"food:rabbit_stew",\
    item:"ghast_tear",\
    model:"rabbit_stew",\
    max_stack_size:4,\
    rarity:"epic",\
    data:{food:{vegie:50,meat:30,water:60,type:"eat"}},\
    components:{},\
    lore:[\
        {},\
    ],\
}

function registry:__parse__/item/new