execute unless data storage registry:root task[0] run return 1
scoreboard players add #chain_length calculator 1
execute if score #chain_length calculator matches 1000.. run tellraw @a [{color:"red",text:"[ERROR] Registry Loading Error:\n   At root registry runner: \n     \"Stack\" Overflow with infinite recursive dependencies."},{text:"\n   Stack Dump:\n      "},{storage:"registry:root",nbt:"task[]",separator:" ======== \n      ",color:"white"}]
execute if score #chain_length calculator matches 1000.. run return fail

data modify storage registry:root this set from storage registry:root task[0]
data remove storage registry:root task[0]

# Handle later if the current task has unmet dependencies
execute if data storage registry:root this.require[0] unless function registry:root/__run__/depend_check/predicate run return run function registry:root/__run__/this

# Case manual
execute if data storage registry:root this.register{type:"manual"} run function as:core/run with storage registry:root this.register
execute if data storage registry:root this.register{type:"manual"} run return run function registry:root/__run__/this

# Case Auto
function registry:root/__run__/__auto with storage registry:root this
return run function registry:root/__run__/this