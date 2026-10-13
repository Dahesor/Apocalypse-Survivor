#>@public as:player/effect/apply_this_only
# Apply an effect to the executor player only
# @input storage registry:effect this.id
#   The ID of the effect
# @input storage registry:effect this.i_duration
#   Duration of the effect
# @input storage registry:effect this.j_intensity
#   Intensity of the effect. default 0.
# @input storage registry:effect this.hidden
#   is the effect hidden. default false.
# @context the player to apply the effect to

execute unless entity @s[type=player] run return fail

function registry:__get__/effect/instance
function as:player/effect/render/malloc
data modify storage registry:effect this.frame set from storage as:effect return
function as:player/effect/apply/self