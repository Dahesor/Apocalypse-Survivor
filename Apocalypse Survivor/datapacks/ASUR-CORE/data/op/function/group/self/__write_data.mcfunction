$execute if data storage persistent: groups[].leader{name:"$(Name)"} run scoreboard players set #return calculator 1
$data modify storage persistent: groups[].leader{name:"$(Name)"} merge from storage persistent: this.leader
$data modify storage persistent: groups[].players[{name:"$(Name)"}] merge from storage persistent: this.leader