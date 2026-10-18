#>@private as:player/effect/remove/_full_clean

#>@local score $until

execute unless data storage as:player players[0].effects[0] run return 1
execute store result score $until calculator run data get storage as:player players[0].effects[0].until

execute if score $until calculator >= $gametime data run return 1

function as:player/effect/remove/expired

function as:player/effect/remove/_full_clean