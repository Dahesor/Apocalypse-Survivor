#>@private as:player/effect/apply/apply
#>@local score $new_until
# The duration of the new instance

function as:player/effect/apply/__del_existed with storage as:player keffects[0]

data modify storage as:effect inserts set value []
data modify storage as:effect inserts append from storage as:player keffects[0]
data modify storage registry:effect ztemp set from storage as:effect inserts[0]

function as:player/effect/modify/insert_instances

execute if data storage registry:effect ztemp.ticker{every:"tick"} run tag @s add core.effect_ticker
execute if data storage registry:effect ztemp.ticker{every:"4_ticks"} run tag @s add core.effect_ticker_4th
execute if data storage registry:effect ztemp.ticker{every:"second"} run tag @s add core.effect_ticker_slow
execute if score $instance_change calculator matches 0 if data storage registry:effect ztemp.hooks.on_apply run return run function as:core/run with storage registry:effect ztemp.hooks.on_apply
execute if score $instance_change calculator matches 1 if data storage registry:effect ztemp.hooks.instance_change run return run function as:core/run with storage registry:effect ztemp.hooks.instance_change