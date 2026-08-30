tag @s add dfh.__inventory_changed

scoreboard players set $saddle_item calculator 0
execute if items entity @s saddle * run scoreboard players set $saddle_item calculator 1

execute if score $saddle_item calculator matches 1 run item modify entity @s saddle {function:"set_enchantments",add:true,enchantments:{"dfh:exhustion":12}}
execute if score $saddle_item calculator matches 0 run item replace entity @s saddle with barrier[enchantments={"dfh:exhustion":12},equippable={slot:"saddle",equip_sound:"intentionally_empty"},custom_data={dfh:{temp:1b}}]

tag @s remove dfh.__inventory_changed