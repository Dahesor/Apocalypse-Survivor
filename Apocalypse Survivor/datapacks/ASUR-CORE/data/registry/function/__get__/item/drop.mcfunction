#>@public registry:__get__/item/drop
# Drop a particular amount of `this` item
# @input storage registry:item this.id
#   The ID of the item to drop
# @input score #count calculator
#   The amount of the item to drop

function registry:__get__/item/prepare
execute as 0-0-0-0-0 run loot spawn ~ ~ ~ loot registry:item/give