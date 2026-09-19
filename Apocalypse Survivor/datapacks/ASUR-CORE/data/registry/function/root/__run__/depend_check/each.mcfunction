execute unless data storage registry:root ztemp.require[0] run return 1
data modify storage ram: i.id set from storage registry:root ztemp.require[0]
scoreboard players set #return calculator 0
execute store result score #return calculator run function registry:root/__run__/depend_check/__verify with storage ram: i
execute unless score #return calculator matches 1 run return fail

data remove storage registry:root ztemp.require[0]
return run function registry:root/__run__/depend_check/each