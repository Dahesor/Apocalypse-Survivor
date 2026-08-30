execute unless data storage ram: form.member_list[0] run return 1

data modify storage run: name set from storage ram: form.member_list[0]
data remove storage ram: form.member_list[0]

scoreboard players set #return calculator 0
execute store result score #return calculator run function op:group/manage/edit/__is_leader with storage run:
execute if score #return calculator matches 0 run tellraw @s [{text:"[Warn] ",color:"gold"},{storage:"run:",nbt:"name"}," cannot join the group since they are a leader. Entry skipped."]
execute if score #return calculator matches 0 run return run function op:group/manage/edit/entry

function op:group/new/member/this with storage run:
function op:group/manage/edit/entry