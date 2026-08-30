function op:group/manage/__del_notice with storage persistent: this.players[0]

data remove storage persistent: this.players[0]
execute if data storage persistent: this.players[0] run function op:group/manage/edit/del_notice_each

function op:group/notify_update