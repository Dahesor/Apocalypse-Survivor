scoreboard players set @s privilege_trigger 300
$data modify storage persistent: this set from storage persistent: groups[{id:$(id)}]
$data remove storage persistent: groups[{id:$(id)}]

execute if data storage persistent: this.players[0] run function op:group/manage/edit/del_notice_each