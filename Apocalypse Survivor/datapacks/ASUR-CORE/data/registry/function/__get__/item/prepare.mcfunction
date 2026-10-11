#>@public registry:__get__/item/prepare
# Load the item stack of `this` item into the entity 0-0-0-0-0
# @input storage registry:item this.id
#   The ID of the item to prepare
# @writes entity 0-0-0-0-0 Items[0]
#   The generated item stack

function registry:__get__/item/expand
data modify storage ram: container set value []
data modify storage ram: container append from storage registry:item this.stack
data modify storage ram: container[0].Slot set value 0b
data modify entity 0-0-0-0-0 Items set from storage ram: container