data modify storage as:effect this[0].remaining set compute default integer as:core/effect/step_remaining
execute store result score $% calculator run compute default integer as:core/effect/get_progress

execute unless predicate {type:"int_value_check",test:{type:"score",score:"calculator",target:{type:"fixed",name:"$%"}},value:{type:"storage",storage:"as:effect",path:"this[0].progress"}} run function as:player/effect/render/update/map_char

data modify storage as:effect this append from storage as:effect this[0]
data remove storage as:effect this[0]
scoreboard players remove #count calculator 1
execute if score #count calculator matches 1.. run function as:player/effect/render/update/this