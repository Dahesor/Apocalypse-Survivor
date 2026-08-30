data modify storage ram: dialog.dialog set value {type:"multi_action",after_action:"none",pause:false,\
    can_close_with_escape:true,columns:2,\
    title:{translate:"op.menu.group.title"},\
    body:[{type:"plain_message",width:240,contents:[{translate:"op.menu.group.body"}]}],\
    actions:[\
        {label:{translate:"op.menu.group.action.create",color:"aqua"},action:{"type":"run_command",command:"/trigger privilege_trigger set 310"},width:200},\
        {label:{translate:"op.menu.group.action.data_help",color:"yellow"},width:200,tooltip:{translate:"op.menu.group.action.data_help.tip"}},\
    ],\
    exit_action:{label:{translate:"gui.done"},action:{type:"run_command",command:"/trigger privilege_trigger set 999"}}\
}



data modify storage persistent: run set from storage persistent: groups
scoreboard players set #count calculator 99
function op:pages/group/build/add_buttons

scoreboard players enable @s privilege_input
scoreboard players set @s privilege_waiting 1

function op:pages/show with storage ram: dialog