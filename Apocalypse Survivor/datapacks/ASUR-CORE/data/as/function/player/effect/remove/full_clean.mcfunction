#>as:player/effect/remove/full_clean
# @private within %parent/%parent
# Check and clean all expired effects

function as:player/uid/get_self
function as:player/effect/remove/_full_clean

scoreboard players set @s effect.next_until 2147483647
execute if data storage as:player players[0].effects[0] store result score @s effect.next_until run data get storage as:player players[0].effects[0].until
execute unless data storage as:player players[0].effects[0] run tag @s remove core.has_effect
execute unless data storage as:player players[0].effects[].ticker{every:"second"} run tag @s remove core.effect_ticker_slow
execute unless data storage as:player players[0].effects[].ticker{every:"4_ticks"} run tag @s remove core.effect_ticker_4th
execute unless data storage as:player players[0].effects[].ticker{every:"tick"} run tag @s remove core.effect_ticker

function as:player/effect/draw/main