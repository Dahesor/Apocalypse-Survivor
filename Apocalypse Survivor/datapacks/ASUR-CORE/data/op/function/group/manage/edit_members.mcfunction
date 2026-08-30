$data modify storage persistent: this set from storage persistent: groups[{id:$(id)}]

data modify storage ram: dialog.dialog set value {type:"confirmation",after_action:"none",pause:false,\
    can_close_with_escape:true,title:{translate:"op.menu.group.edit_member"},\
    inputs:[\
        {type:"text",multiline:{height:120},key:"members",label:{translate:"op.menu.group.create.input.members",color:"aqua"},initial:"",width:200,max_length:999999999},\
    ],\
    body:{contents:{translate:"op.menu.group.edit_member.tip",color:"yellow"},type:"plain_message"},\
    no:{label:{translate:"gui.cancel"},action:{type:"run_command",command:"trigger privilege_trigger set 300"}},\
    yes:{label:{translate:"action.edit",color:"yellow"},action:{type:"dynamic/run_command",template:"function op:group/manage/__submit_edit {form:{members:'$(members)',id:$(id)}}"}},\
}
$data modify storage dnt:ram in set value [",id:$(id)","}}"]
data modify storage dnt:ram in prepend value "function op:group/manage/__submit_edit {form:{members:'$(members)'"
function dnt:concat
data modify storage ram: dialog.dialog.yes.action.template set from storage dnt:ram out

function op:group/manage/edit/get_initial_box
data modify storage ram: dialog.dialog.inputs[0].initial set from storage dnt:ram out

function op:pages/show with storage ram: dialog