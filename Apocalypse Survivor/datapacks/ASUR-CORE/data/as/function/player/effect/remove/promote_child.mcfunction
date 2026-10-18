#>@private as:player/effect/remove/promote_child
# @returns
#   @success if a child was successfully promoted

execute unless function as:player/effect/remove/get_next_child run return fail


data modify storage as:effect child set value {frame:"NULL",hidden:false,i_duration:0,j_intensity:0,until:0,valid:true}
data modify storage as:effect child merge from storage as:player players[0].effects[0].child[0]
data modify storage as:effect inserts prepend from storage as:player players[0].effects[0]
data modify storage as:effect inserts[0] merge from storage as:effect child
data remove storage as:effect inserts[0].child[0]

execute unless data storage as:player players[0].effects[0].hooks.instance_change run return run data remove storage as:player players[0].effects[0]


# Run hook
data modify storage as:effect params.new set from storage as:effect child
data modify storage as:effect params.old set from storage as:player players[0].effects[0]
data remove storage as:player players[0].effects[0]
function as:core/run with storage as:player players[0].effects[0].hooks.instance_change

return 1