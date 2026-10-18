#>as:player/effect/modify/insert_instances
# Insert instances in keffects into the player's effect list.
# Does not add tags to player or emit any hooks.
# @private within as:player/effect
# @input storage as:effect inserts[]
#   The instances to insert
# @writes storage as:effect inserts[]
# @writes storage as:player keffects[]


execute unless data storage as:effect inserts[0] run return 1
data remove storage as:player keffects
data modify storage as:player keffects append from storage as:effect inserts[0]

execute store result score $new_until calculator run data get storage as:player keffects[0].until
function as:player/effect/modify/loop_apply

data remove storage as:effect inserts[0]
function as:player/effect/modify/insert_instances