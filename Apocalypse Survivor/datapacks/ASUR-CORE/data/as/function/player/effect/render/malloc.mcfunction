#>@public as:player/effect/render/malloc
# Request for a new slot for effect rendering
# @input storage registry:effect this.i_duration
# @writes storage as:effect return
#   The path to the allocated slot in as:effect

#>@private score $length
# The length of the requested slot for effect rendering in ticks

execute store result score $length calculator run data get storage registry:effect this.i_duration

# Select an update frequency based on the requested slot length
execute if score $length calculator matches 120.. run data modify storage as:effect this set from storage as:effect sTick
execute unless score $length calculator matches 120.. run data modify storage as:effect this set from storage as:effect fTick

function as:player/effect/render/malloc/find

execute if score $length calculator matches 120.. run data modify storage as:effect sTick set from storage as:effect this
execute unless score $length calculator matches 120.. run data modify storage as:effect fTick set from storage as:effect this

execute store result storage ram: i.x int 1 run scoreboard players get #count calculator
execute if score $length calculator matches 120.. run data modify storage ram: i.str set value "sTick"
execute unless score $length calculator matches 120.. run data modify storage ram: i.str set value "fTick"
function as:player/effect/render/malloc/__make_path with storage ram: i
