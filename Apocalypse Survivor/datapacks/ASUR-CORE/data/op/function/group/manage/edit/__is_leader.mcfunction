#>op:group/manage/edit/__is_leader
# @private within op:

$execute if data storage persistent: groups[].leader{name:"$(name)"} run return fail
return 1