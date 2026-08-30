$scoreboard players set $(name) zzzgroup_update 1
$scoreboard players operation $(name) group = $this group
$execute if data storage persistent: groups[].players[{name:"$(name)"}] run data remove storage persistent: groups[].players[{name:"$(name)"}]
$execute if data storage persistent: new.players[{name:"$(name)"}] run data remove storage persistent: new.players[{name:"$(name)"}]

$data modify storage persistent: new.players append value {name:"$(name)"}