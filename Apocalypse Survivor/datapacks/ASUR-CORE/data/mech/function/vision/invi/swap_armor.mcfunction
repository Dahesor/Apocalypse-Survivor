#>mech:vision/invi/swap_armor
# @private within as:armor

execute if entity @s[tag=mech.invisible] run function mech:vision/invi/hide_armor
execute unless entity @s[tag=mech.invisible] run function mech:vision/invi/show_armor

advancement revoke @s only as:armor/swap