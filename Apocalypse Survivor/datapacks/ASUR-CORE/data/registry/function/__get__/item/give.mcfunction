#>@public registry:__get__/item/give
# Give the current player some amount of `this` item
# @input storage registry:item this.id
#   The ID of the item to give
# @input score #count calculator
#   The amount of the item to give
# @context As the player receiving the item


function registry:__get__/item/prepare

tag @s add __this
execute as 0-0-0-0-0 run loot give @a[tag=__this] loot registry:item/give
tag @s remove __this