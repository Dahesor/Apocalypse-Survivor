#>@public registry:__get__/effect/instance
# Create an instance of a effect
# @input storage registry:effect this.id
#   The ID of the effect
# @input storage registry:effect this.i_duration
#   Duration of the effect
# @input storage registry:effect this.j_intensity
#   Intensity of the effect. default 0.
# @input storage registry:effect this.hidden
#   Is the effect hidden. default false.
# @writes storage registry:effect this
#   The new instance

#>@local score %duration

execute unless data storage registry:effect this.j_intensity run data modify storage registry:effect this.j_intensity set value 0
scoreboard players set %duration calculator 100
execute store result score %duration calculator run data get storage registry:effect this.i_duration

function registry:__get__/effect/private/__load_data__ with storage registry:effect this
execute store result storage registry:effect this.i_duration int 1 run scoreboard players get %duration calculator
scoreboard players operation %duration calculator += $gametime data
execute store result storage registry:effect this.until int 1 run scoreboard players get %duration calculator