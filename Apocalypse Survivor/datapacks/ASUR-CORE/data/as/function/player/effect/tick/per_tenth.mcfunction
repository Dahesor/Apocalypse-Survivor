#>as:player/effect/tick/per_tenth
# @private within %parent/%parent

function as:player/uid/get_self

data modify storage ram: run_list set value []
data modify storage ram: run_list append from storage as:player players[0].effects[{ticker:{every:"tenth"}}].ticker

function as:core/run_list