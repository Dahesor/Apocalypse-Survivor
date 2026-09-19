data remove storage registry:root new
data modify storage registry:root ready set value []
data modify storage registry:root task set from storage registry:root entry
scoreboard players set #chain_length calculator 0
return run function registry:root/__run__/this