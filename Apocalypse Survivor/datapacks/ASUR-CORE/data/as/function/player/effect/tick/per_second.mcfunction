#>as:player/effect/tick/per_second
# @private within %parent/%parent

function as:player/uid/get_self

data modify storage ram: run_list set value []
data modify storage ram: run_list append from storage as:player players[0].effects[{ticker:{every:"second"}}].ticker

function as:core/run_list