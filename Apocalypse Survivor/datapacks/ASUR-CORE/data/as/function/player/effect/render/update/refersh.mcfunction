#>@private as:player/effect/render/update/refersh
#>@local score $%

# this[0].remaining -= step
data modify storage as:effect this[0].remaining set compute default integer as:core/effect/step_remaining
execute store result score $% calculator run compute default integer as:core/effect/get_progress

# If step progress has changed, update the rendered character
execute unless predicate {type:"int_value_check",test:{type:"score",score:"calculator",target:{type:"fixed",name:"$%"}},value:{type:"storage",storage:"as:effect",path:"this[0].progress"}} run function as:player/effect/render/update/map_char

# If timer reached 0, de-active
execute if predicate {type:"int_value_check",test:{max:0},value:{type:"storage",storage:"as:effect",path:"this[0].progress"}} run data modify storage as:effect this[0].valid.flag set value false
