#>@public registry:__get__/item/give_single
# Give the current player 1 of `this` item
# @input storage registry:item this.id
#   The ID of the item to give
# @context As the player receiving the item

scoreboard players set #count calculator 1
function registry:__get__/item/give