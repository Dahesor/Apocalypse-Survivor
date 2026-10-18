#>@private as:player/effect/remove/get_next_child
# @returns
#   @success if there is a valid child

execute unless data storage as:player players[0].effects[0].child[0] run return fail

execute store result score $until calculator run data get storage as:player players[0].effects[0].child[0].until
execute if score $until calculator >= $gametime data run return 1

data remove storage as:player players[0].effects[0].child[0]
return run function as:player/effect/remove/get_next_child