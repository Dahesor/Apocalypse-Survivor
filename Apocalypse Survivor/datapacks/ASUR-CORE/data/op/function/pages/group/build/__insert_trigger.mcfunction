#>op:pages/group/build/__insert_trigger
# @private within op:

$data modify storage ram: dialog.dialog.actions[-1].action set value {type:"run_command",command:"/trigger privilege_input set $(i)"}
