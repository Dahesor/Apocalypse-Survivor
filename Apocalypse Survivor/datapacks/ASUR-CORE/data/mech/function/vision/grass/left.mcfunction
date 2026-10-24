#>@private mech:vision/grass/left
# @callby function mech:vision/grass/ticker
# When player left grass

execute if entity @s[tag=!effect.invisible] run function mech:vision/invi/remove

