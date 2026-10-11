#>registry:item/treasure/mythic/terra_restore
# @protected within registry:item

data modify storage registry:item new set value {\
    id:"treasure:terra_restore",\
    rarity:"mythic",\
    data:{treasure:{price:18888}},\
    max_stack_size:1,\
    components:{},\
    model:"as:treasure/terra_restore",\
    lore:[\
        {},\
    ],\
}

function registry:__parse__/item/new