execute store result storage ram: i.i int 1 run scoreboard players remove $this privilege_input 100
function op:group/manage/__get_entry with storage ram: i

data modify storage ram: dialog.dialog set value {type:"confirmation",title:{translate:"op.menu.group.info"},can_close_with_escape:true,\
    pause:false, after_action: "none",\
    no:{label:{translate:"gui.back"},action:{type:"run_command",command:"trigger privilege_trigger set 999"}},\
    yes:{label:{translate:"action.delete",color:"#e83636"},tooltip:{translate:"op.menu.group.delete.confirm",color:"red",bold:true}},\
    body:[\
        {type:"plain_message",contents:["",{translate:"op.menu.group.info",color:"green"},"\n\n",{translate:"op.menu.group.create.confirm.fullname",with:[{text:"NULL",color:"aqua"}]},"\n\n",{translate:"op.menu.group.create.confirm.tag",with:["NULL"]},"\n\n",{translate:"op.menu.group.create.confirm.leader",with:[{object:"player",player:"Steve",extra:[" ","Steve"]}]}]},\
        {type:"plain_message",contents:["",{translate:"op.menu.group.edit_member",color:"green",underlined:true,click_event:{action:"run_command",command:"function op:group/manage/edit_members {id:'id'}"}}," ",{translate:"op.menu.group.create.confirm.members"}]},\
    ],\
}

function op:pages/group/build/__edit_memberbtk with storage persistent: this

data modify storage ram: dialog.dialog.body[0].contents[3].with[0].text set from storage persistent: this.full_name
data modify storage ram: dialog.dialog.body[0].contents[5].with[0] set from storage persistent: this.tag
data modify storage ram: dialog.dialog.body[0].contents[7].with[0].player set from storage persistent: this.leader.name
data modify storage ram: dialog.dialog.body[0].contents[7].with[0].extra[1] set from storage persistent: this.leader.name

data modify storage run: list set value []
data modify storage run: list append from storage persistent: this.players[].name
data remove storage run: list[0]
execute if data storage run: list[0] run function op:group/new/confirm/members


function op:group/manage/__insert_delete with storage persistent: this

function op:pages/show with storage ram: dialog