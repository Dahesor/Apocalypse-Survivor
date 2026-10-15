#>mech:vision/invi/hide_armor
# @private within mech:

item replace entity 0-0-0-0-0 container.* with air
item override entity 0-0-0-0-0 container.* from entity @s armor.*

data modify storage ram: container set from entity 0-0-0-0-0 Items
execute store result score #count calculator run data get storage ram: container
execute if score #count calculator matches 1.. run function mech:vision/invi/_process_hiding
data modify entity 0-0-0-0-0 Items set from storage ram: container
item override entity @s armor.* from entity 0-0-0-0-0 container.*