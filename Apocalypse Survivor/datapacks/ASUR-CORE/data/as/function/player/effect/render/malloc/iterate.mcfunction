#>@private as:player/effect/render/malloc/iterate
# Find the next available slot for allocation

execute unless data storage as:effect this[0] run return run function as:core/error/handle {message:"effect render malloc failed: could not find available slot when there is a false flag",type:"error"}

execute if data storage as:effect this[0].valid{flag:false} run return run function as:player/effect/render/malloc/use_this

data modify storage as:effect save append from storage as:effect this[0]
data remove storage as:effect this[0]
function as:player/effect/render/malloc/iterate