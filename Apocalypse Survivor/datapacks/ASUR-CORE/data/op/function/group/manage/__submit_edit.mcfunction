$data modify storage ram: form set value $(form)

data modify storage ram: form.member_list set value []
execute unless data storage ram: form{members:""} run function op:group/new/parse_names

data modify storage persistent: new set value {players:[]}

execute if data storage ram: form.member_list[0] run function op:group/manage/edit/entry


function op:group/manage/edit/__apply_change with storage ram: form

function op:group/notify_update

scoreboard players set @s privilege_trigger 300