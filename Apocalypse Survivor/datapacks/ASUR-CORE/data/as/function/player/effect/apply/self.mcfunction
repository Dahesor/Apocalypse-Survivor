#>@public as:player/effect/apply/self
# Applies an effect instance to the this player
# The instance must be created and allocated for slots beforehand
# @context the player receiving the effect
# @input storage registry:effect this
#   The full effect instance to be applied to the player

# Apply the new instance
execute if function as:player/effect/apply/get run function as:player/effect/apply/apply

tag @s add core.has_effect
execute store result score @s effect.next_until run data get storage as:player players[0].effects[0].until


function as:player/effect/draw/main