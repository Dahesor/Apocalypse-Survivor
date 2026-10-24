#>mech:player_tick
# @protected within as:
# @context @player

execute if predicate {type:"any_of",terms:["mech:vision/is_hiding","mech:vision/exposed"]} run function mech:vision/grass/ticker