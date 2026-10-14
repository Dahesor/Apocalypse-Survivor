#>@public as:player/effect/remove/empty_this
# Removes all active effects for the player
# @context the player whose effects are being removed

function as:player/uid/get_self
data modify storage as:player players[0].effects set value []
function dah.actbar_mixer:remove/this {id:"as:effect"}

tag @s remove core.has_effect
tag @s remove core.effect_ticker
tag @s remove core.effect_ticker_4th
tag @s remove core.effect_ticker_slow
scoreboard players set @s effect.next_until 2147483647