dialog show @s {type:"confirmation",after_action:"none",pause:false,\
    can_close_with_escape:true,\
    title:{translate:"op.menu.group.action.create"},\
    inputs:[\
        {type:"text",label:{translate:"op.menu.group.create.input.tag",color:"aqua"},width:140,key:"tag",max_length:6},\
        {type:"text",label:{translate:"op.menu.group.create.input.fullname",color:"aqua"},width:140,max_length:20,key:"fullname"},\
        {type:"text",label:{translate:"op.menu.group.create.input.leader",color:"aqua"},width:140,max_length:20,key:"leader"},\
        {type:"text",label:{translate:"op.menu.group.create.input.members",color:"aqua"},width:200,key:"members",multiline:{height:80},max_length:999999999},\
    ],\
    yes:{label:{translate:"op.menu.group.action.create",color:"green"},action:{"type":"dynamic/run_command",template:"/function op:group/new/form {form:{tag:'$(tag)',fullname:'$(fullname)',leader:'$(leader)',members:'$(members)'}}"}},\
    no:{label:{translate:"gui.cancel"},action:{type:"run_command",command:"/trigger privilege_trigger set 999"}}\
}

