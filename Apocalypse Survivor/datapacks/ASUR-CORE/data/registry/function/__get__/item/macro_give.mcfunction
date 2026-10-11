#>@public registry:__get__/item/macro_give
# Give the current player 1 of `this` item
# @macro struct {id:"string"}
# @context As the player receiving the item

scoreboard players set #count calculator 1
$data modify storage registry:item this set value {id:'$(id)'}
function registry:__get__/item/give