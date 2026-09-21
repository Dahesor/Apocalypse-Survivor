data modify storage registry:item new set value {\
    id:"food:milk_bottle",\
    model:"as:food/milk_bottle",\
    max_stack_size:4,\
    rarity:"refined",\
    data:{food:{meat:10,water:60,type:"drink"}},\
    components:{},\
    lore:[\
        {},\
    ],\
}

function registry:__parse__/item/new