#>as:player/effect/tick/per_4_tick
# @private within %parent/%parent

function as:player/uid/get_self

data modify storage ram: run_list set value []
data modify storage ram: run_list append from storage as:player players[0].effects[{ticker:{every:"4_ticks"}}].ticker

function as:core/run_list