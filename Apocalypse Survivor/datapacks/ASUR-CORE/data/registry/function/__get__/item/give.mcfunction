# Give this player #count@calculator amout of <this>

function registry:__get__/item/prepare

tag @s add __this
execute as 0-0-0-0-0 run loot give @a[tag=__this] loot registry:item/give
tag @s remove __this