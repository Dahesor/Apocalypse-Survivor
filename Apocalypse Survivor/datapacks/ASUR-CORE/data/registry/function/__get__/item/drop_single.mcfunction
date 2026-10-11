#>@public registry:__get__/item/drop_single
# Drop 1 of the item `this`
# @input storage registry:item this.id
#   The ID of the item to drop

scoreboard players set #count calculator 1
function registry:__get__/item/drop