#>@private as:player/effect/render/malloc/new

function as:player/effect/render/malloc/instance

# Append the new slot
scoreboard players set #count calculator 0
execute store result score #count calculator run data get storage as:effect this
data modify storage as:effect this append from storage as:effect ztemp