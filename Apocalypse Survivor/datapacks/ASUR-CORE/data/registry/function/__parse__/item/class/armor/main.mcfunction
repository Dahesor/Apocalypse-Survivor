#>@protected registry:__parse__/item/class/armor/main

data modify storage ram: components."minecraft:max_stack_size" set value 1
data modify storage ram: components."minecraft:equippable" set from storage registry:item ztemp.data.armor.equip
data modify storage ram: components."minecraft:custom_data".armor.__mech_inv set from storage registry:item ztemp.data.armor.equip
data remove storage ram: components."minecraft:custom_data".armor.__mech_inv.asset_id