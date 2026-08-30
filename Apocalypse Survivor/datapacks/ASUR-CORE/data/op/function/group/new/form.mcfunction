dialog clear @s
$data modify storage ram: form set value $(form)

data modify storage run: list set value [""]

execute if data storage ram: form{tag:""} run data modify storage run: list append value {translate:"op.menu.group.create.input.tag",color:"aqua"}
execute if data storage ram: form{fullname:""} run data modify storage run: list append value {translate:"op.menu.group.create.input.fullname",color:"aqua"}
execute if data storage ram: form{leader:""} run data modify storage run: list append value {translate:"op.menu.group.create.input.leader",color:"aqua"}

execute if data storage run: list[1] run return run tellraw @s {translate:"op.menu.group.create.input.null_err",with:[{storage:"run:",nbt:"list[]",interpret:true,separator:"\n - "}],color:"red"}

data modify storage ram: form.member_list set value []
execute unless data storage ram: form{members:""} run function op:group/new/parse_names

data modify storage ram: dialog.dialog set value {type:"confirmation",after_action:"none",pause:false,\
    can_close_with_escape:true,\
    title:{translate:"op.menu.group.action.create"},\
    body:[\
        {type:"plain_message",contents:["",{translate:"op.menu.group.create.confirm.body",color:"green"},"\n\n",{translate:"op.menu.group.create.confirm.fullname",with:[{text:"NULL",color:"aqua"}]},"\n\n",{translate:"op.menu.group.create.confirm.tag",with:["NULL"]},"\n\n",{translate:"op.menu.group.create.confirm.leader",with:[{object:"player",player:"Steve",extra:[" ","Steve"]}]}]},\
        {type:"plain_message",contents:[{translate:"op.menu.group.create.confirm.members"}]},\
    ],\
    yes:{label:{translate:"op.menu.group.action.create",color:"green"},action:{"type":"run_command",command:"return fail"}},\
    no:{label:{translate:"gui.cancel"},action:{type:"run_command",command:"/trigger privilege_trigger set 999"}}\
}

function op:group/new/confirm/__template with storage ram:

data modify storage ram: dialog.dialog.body[0].contents[3].with[0].text set from storage ram: form.fullname
data modify storage ram: dialog.dialog.body[0].contents[5].with[0] set from storage ram: form.tag
data modify storage ram: dialog.dialog.body[0].contents[7].with[0].player set from storage ram: form.leader
data modify storage ram: dialog.dialog.body[0].contents[7].with[0].extra[1] set from storage ram: form.leader

data modify storage run: list set from storage ram: form.member_list
execute if data storage run: list[0] run function op:group/new/confirm/members

function op:pages/show with storage ram: dialog