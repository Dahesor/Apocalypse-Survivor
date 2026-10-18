#>@private as:player/effect/modify/loop_apply

#>@local score $new_until
# The duration of the new instance
#>@local score $until
# The duration of this instance

execute unless data storage as:player players[0].effects[0] run return run data modify storage as:player players[0].effects prepend from storage as:player keffects[]

execute store result score $until calculator run data get storage as:player players[0].effects[0].until
execute if score $until calculator >= $new_until calculator run return run data modify storage as:player players[0].effects prepend from storage as:player keffects[]

data modify storage as:player keffects insert -2 from storage as:player players[0].effects[0]
data remove storage as:player players[0].effects[0]
function as:player/effect/modify/loop_apply