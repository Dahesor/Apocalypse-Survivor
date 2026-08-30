scoreboard players reset @s zzzgroup_update
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

execute unless score @s group matches 1.. run return run tellraw @s [{translate:"sys.head",color:"yellow"},{translate:"group.left_group",color:"green"}]

data modify storage persistent: this.leader set value {logged_in:true}
data modify storage persistent: this.leader.UUID_array set from entity @s UUID
function gu:convert with entity @s
data modify storage persistent: this.leader.UUID set from storage gu:main out

function as:player/uid/get_self
scoreboard players set #return calculator 0
function op:group/self/__write_data with storage as:player players[0]
execute store result storage ram: i.i int 1 run scoreboard players get @s group
function op:group/self/__get_group with storage ram: i


execute unless score #return calculator matches 1 run tellraw @s [{translate:"sys.head",color:"yellow"},{translate:"group.join_group",color:"green",with:[[{storage:"persistent:",nbt:"this.full_name"},"§7[",{storage:"persistent:",nbt:"this.tag",interpret:true},"§7]"]]}]
execute if score #return calculator matches 1 run tellraw @s [{translate:"sys.head",color:"yellow"},{translate:"group.join_group.leader",color:"green",with:[[{storage:"persistent:",nbt:"this.full_name"},"§7[",{storage:"persistent:",nbt:"this.tag",interpret:true},"§7]"]]}]
