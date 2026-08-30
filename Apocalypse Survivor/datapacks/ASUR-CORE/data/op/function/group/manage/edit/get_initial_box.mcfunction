data remove storage persistent: this.players[0]
execute unless data storage persistent: this.players[0] run return run data modify storage dnt:ram out set value ""
data modify storage dnt:ram in set value []
execute if data storage persistent: this.players[0] run function op:group/manage/install_concat
function dnt:concat