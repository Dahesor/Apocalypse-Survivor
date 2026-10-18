#>as:player/effect/analyze
# @private within as:player

#>@private context_int_provider as:core/effect/get_progress
#>@private context_int_provider as:core/effect/step_remaining
#>@private tag core.has_effect This player has an active effect instance
#>@private tag core.effect_ticker
#>@private tag core.effect_ticker_4th
#>@private tag core.effect_ticker_slow

execute if score @s effect.next_until < $gametime data run function as:player/effect/remove/full_clean

execute if entity @s[tag=core.effect_ticker] run function as:player/effect/tick/per_tick
execute if score #loop_4 calculator matches 1 if entity @s[tag=core.effect_ticker_4th] run function as:player/effect/tick/per_4_tick
execute if score #loop_20 calculator matches 3 if entity @s[tag=core.effect_ticker_slow] run function as:player/effect/tick/per_second