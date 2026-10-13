#>as:player/effect/analyze
# @private within as:player

#>@private context_int_provider as:core/effect/get_progress
#>@private context_int_provider as:core/effect/step_remaining
#>@private tag core.has_effect This player has an active effect instance
#>@private tag core.effect_ticker
#>@private tag core.effect_ticker_slow

execute if score @s effect.next_until >= $gametime calculator run function as:player/effect/remove/full_clean

execute if entity @s[tag=core.effect_ticker] run function as:player/effect/tick/per_tick
execute if entity @s[tag=core.effect_ticker_slow] run function as:player/effect/tick/per_second