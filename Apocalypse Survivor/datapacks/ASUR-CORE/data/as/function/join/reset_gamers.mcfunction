#>@internal as:join/reset_gamers

data modify storage as:player gamers set value []
data remove storage as:player zprocessing

execute as @a if predicate as:is_player run data modify storage as:player gamers append compute default integer {type:"score",score:"UID",target:"this"}