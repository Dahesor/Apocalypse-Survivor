#>@private as:player/effect/render/update/next
# Update the next effect in the list

data modify storage as:effect this append from storage as:effect this[0]
data remove storage as:effect this[0]
scoreboard players remove #count calculator 1
execute if score #count calculator matches 1.. run function as:player/effect/render/update/this