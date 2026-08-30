execute if score #count calculator matches 20.. run data modify storage dnt:ram in append from storage run: full_icon
execute if score #count calculator matches 20.. run scoreboard players remove #count calculator 20
execute if score #count calculator matches 1..19 run data modify storage dnt:ram in append from storage run: half_icon
execute if score #count calculator matches 1..19 run scoreboard players set #count calculator 0
execute if score #count calculator matches 1.. run function registry:__parse__/item/class/food/this_type