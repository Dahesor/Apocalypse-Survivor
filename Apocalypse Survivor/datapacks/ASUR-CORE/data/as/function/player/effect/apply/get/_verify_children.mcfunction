#>@private as:player/effect/apply/get/_verify_children

execute unless data storage as:player keffects[1].child[0].until run return 1

execute unless predicate {\
    type:"int_value_check",\
    value:{type:"storage",storage:"as:player",path:"keffects[1].child[-1].until"},\
    test:{min:{type:"add",inputs:[{type:"score",score:"calculator",target:{type:"fixed",name:"$this"}},1]}}\
} run return 1

data modify storage as:player keffects[0].child prepend from storage as:player keffects[1].child[-1]
data remove storage as:player keffects[1].child[-1]
function as:player/effect/apply/get/_verify_children