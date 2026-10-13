#>@public as:player/effect/remove/empty_all
# Removes all active effects for all players
# @context @any

data modify storage as:player players[].effects set value []

function dah.actbar_mixer:remove/for_all {id:"as:effect"}

scoreboard players reset * effect.next_until
tag @a remove core.has_effect