execute unless data storage persistent: run[0] run return 1
data modify storage ram: dialog.dialog.actions append value {width:160,label:["[","","] ",""]}
data modify storage ram: dialog.dialog.actions[-1].label[1] set from storage persistent: run[0].tag
data modify storage ram: dialog.dialog.actions[-1].label[3] set from storage persistent: run[0].full_name
execute store result storage ram: i.i int 1 run scoreboard players add #count calculator 1
function op:pages/group/build/__insert_trigger with storage ram: i

data remove storage persistent: run[0]
function op:pages/group/build/add_buttons