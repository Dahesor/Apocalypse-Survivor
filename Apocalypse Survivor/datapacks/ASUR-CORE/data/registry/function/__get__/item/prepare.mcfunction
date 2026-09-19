# Prepare 1 of <this> in 0-0-0-0-0

function registry:__get__/item/expand
data modify storage ram: container set value []
data modify storage ram: container append from storage registry:item this.stack
data modify storage ram: container[0].Slot set value 0b
data modify entity 0-0-0-0-0 Items set from storage ram: container