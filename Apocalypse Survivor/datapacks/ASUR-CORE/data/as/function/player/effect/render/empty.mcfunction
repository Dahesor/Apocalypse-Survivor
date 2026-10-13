#>@internal as:player/effect/render/empty
# Empty all effect slots

data modify storage as:effect this set value []
data modify storage as:effect fTick set value []
data modify storage as:effect ztemp set value {}
data modify storage as:effect sTick set value []
data modify storage as:effect save set value []
