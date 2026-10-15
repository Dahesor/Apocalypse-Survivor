#>@private mech:vision/invi/_process_showing

data modify storage ram: container[0].components."minecraft:equippable" set from storage ram: container[0].components."minecraft:custom_data".armor.equip
scoreboard players remove #count calculator 1
data modify storage ram: container append from storage ram: container[0]
data remove storage ram: container[0]
execute if score #count calculator matches 1.. run function mech:vision/invi/_process_showing