data modify storage dnt:ram in append from storage persistent: this.players[0].name
data modify storage dnt:ram in append value "\n"
data remove storage persistent: this.players[0]
execute if data storage persistent: this.players[0] run function op:group/manage/install_concat