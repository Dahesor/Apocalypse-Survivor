data modify storage run: name set from storage ram: form.member_list[0]
function op:group/new/member/this with storage run:
data remove storage ram: form.member_list[0]
execute if data storage ram: form.member_list[0] run function op:group/new/member/each