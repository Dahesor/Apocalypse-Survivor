# Give this player #count@calculator amout of <this>

function registry:__get__/item/expand
data modify storage ram: container set value []
data modify storage ram: container append from storage registry:item this.stack
data modify storage ram: container[0].Slot set value 0b
data modify entity 0-0-0-0-0 Items set from storage ram: container

tag @s add __this
execute as 0-0-0-0-0 run loot give @a[tag=__this] loot registry:item/give
tag @s remove __this