#>as:player/effect/render/malloc/find
# @private within %parent/%parent

# If no slot can be gc, create a new one
execute unless data storage as:effect this[{valid:{flag:false}}] run return run function as:player/effect/render/malloc/new

data modify storage as:effect save set value []
function as:player/effect/render/malloc/iterate
data modify storage as:effect this prepend from storage as:effect save[]
execute store result score #count calculator run data get storage as:effect save
data modify storage as:effect save set value []
