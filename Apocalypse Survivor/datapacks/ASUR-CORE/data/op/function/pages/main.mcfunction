execute unless function op:auth/validate run return run function op:auth/menu

dialog show @s {\
    title:{translate:"op.menu.main.title"},\
    type:"multi_action",after_action:"none",pause:false,columns:1,can_close_with_escape:true,\
    actions:[\
        {label:{translate:"op.menu.game.title"},tooltip:{translate:"op.menu.game.tip"},action:{type:"run_command",command:"/trigger privilege_trigger set 999"},width:240},\
        {label:{translate:"op.menu.team.title"},tooltip:{translate:"op.menu.team.tip"},action:{type:"run_command",command:"/trigger privilege_trigger set 999"},width:240},\
        {label:{translate:"op.menu.group.title"},tooltip:{translate:"op.menu.group.tip"},action:{type:"run_command",command:"/trigger privilege_trigger set 300"},width:240},\
    ],\
    exit_action:{label:{translate:"gui.done"},action:{type:"run_command",command:"/trigger privilege_trigger set 999"}}\
}