execute if data storage ram: form{members:""} run return run execute unless data storage ram: {this:""} run function op:group/new/parse/try_add_player
data modify storage ram: char set string storage ram: form.members 0 1

data modify storage ram: form.members set string storage ram: form.members 1

execute if data storage ram: {char:"\n"} run return run function op:group/new/parse/try_add_player

function op:group/new/parse/__make_name with storage ram:
function op:group/new/parse/next_char