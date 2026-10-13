#>@private as:player/effect/render/malloc/instance


data modify storage as:effect this prepend value {valid:{flag:true},char:"",maximum:0,progress:0,remaining:0}

execute store result storage as:effect this[0].maximum int 1 run scoreboard players get $length calculator
data modify storage as:effect this[0].remaining set from storage as:effect this[0].maximum

data modify storage as:effect this[0].progress set compute default integer as:core/effect/get_progress
function as:player/effect/render/update/__map_char with storage as:effect this[0]


data modify storage as:effect ztemp set from storage as:effect this[0]
data remove storage as:effect this[0]