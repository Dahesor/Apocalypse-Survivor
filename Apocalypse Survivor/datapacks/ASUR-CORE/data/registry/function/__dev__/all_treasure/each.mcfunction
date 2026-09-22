execute unless data storage registry:item run[0].id run return fail
data modify storage registry:item this set from storage registry:item run[0]
execute if data storage registry:item this.data{treasure:{}} run function registry:__get__/item/give_single
data remove storage registry:item run[0]
function registry:__dev__/all_treasure/each