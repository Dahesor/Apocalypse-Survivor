#>@private as:player/effect/remove/expired

execute if data storage as:player players[0].effects[0].child[0] if function as:player/effect/remove/promote_child run return 1

# Run hook
execute if data storage as:player players[0].effects[0].hooks.before_remove run function as:core/run with storage as:player players[0].effects[0].hooks.before_remove

data remove storage as:player players[0].effects[0]