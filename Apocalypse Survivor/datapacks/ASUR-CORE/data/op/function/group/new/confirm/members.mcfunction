data modify storage ram: dialog.dialog.body[1].contents append value "\n\n"
data modify storage ram: dialog.dialog.body[1].contents append value [{object:"player",player:"Steve"}," ","Steve"]
data modify storage ram: dialog.dialog.body[1].contents[-1][0].player set from storage run: list[0]
data modify storage ram: dialog.dialog.body[1].contents[-1][2] set from storage run: list[0]
data remove storage run: list[0]
execute if data storage run: list[0] run return run function op:group/new/confirm/members
