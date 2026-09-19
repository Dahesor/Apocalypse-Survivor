# Handles registering all entries.
# Might have to async this in the future

data modify storage registry:root entry set value []
function #registry:root
execute unless function registry:root/run run tellraw @a {color:"red",text:"[ERROR] Fatal Error: Registry init failed. Please report this issue to the developers"}