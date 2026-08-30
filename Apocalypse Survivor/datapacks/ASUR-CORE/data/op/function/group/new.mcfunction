dialog clear @s
$data modify storage ram: form set value $(form)

data modify storage persistent: new set value {full_name:"",id:-1,leader:{name:""},players:[],tag:""}
data modify storage persistent: new.full_name set from storage ram: form.fullname
execute store result score $this group store result storage persistent: new.id int 1 run random value 1..2147483647
data modify storage persistent: new.leader.name set from storage ram: form.leader
data modify storage persistent: new.tag set from storage ram: form.tag


function op:group/new/member/this with storage persistent: new.leader

execute if data storage ram: form.member_list[0] run function op:group/new/member/each

scoreboard players set @s privilege_trigger 300
data modify storage persistent: groups append from storage persistent: new

function op:group/notify_update