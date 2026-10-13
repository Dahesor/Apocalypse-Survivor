#>@private as:player/effect/remove/_full_clean

#>@local score $until

execute unless data storage as:player players[0].effects[0] run return 1
execute store result score $until calculator run data get storage as:player players[0].effects[0].until

execute if score $until calculator >= $gametime data run return 1

# Run hook
execute if data storage as:player players[0].effects[0].hooks.before_remove run function as:core/run with storage as:player players[0].effects[0].hooks.before_remove

data remove storage as:player players[0].effects[0]
function as:player/effect/remove/_full_clean