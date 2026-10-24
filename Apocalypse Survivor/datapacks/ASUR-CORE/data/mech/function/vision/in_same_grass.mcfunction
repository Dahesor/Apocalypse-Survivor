#>@public mech:vision/in_same_grass
# Checks if the current player is in the same grass as the input location
# @context @player The player being checked
# @input score #in_x calculator
#   The x coordinate of the target location
# @input score #in_z calculator
#   The z coordinate of the target location
# @predicate true if passes

function as:core/get_coords
execute unless block ~ ~ ~ #mech:may_hide run return fail
execute if score #x calculator = #in_x calculator if score #z calculator = #in_z calculator run return 1

# return fail if too far
execute if predicate {type:"any_of",terms:[\
    {type:"int_value_check",test:{min:21},value:{type:"abs",input:{\
        type:"sub",\
            left:{type:"score",score:"calculator",target:{type:"fixed",name:"#x"}},\
            right:{type:"score",score:"calculator",target:{type:"fixed",name:"#in_x"}}\
        }\
    }},\
    {type:"int_value_check",test:{min:21},value:{type:"abs",input:{\
        type:"sub",\
            left:{type:"score",score:"calculator",target:{type:"fixed",name:"#z"}},\
            right:{type:"score",score:"calculator",target:{type:"fixed",name:"#in_z"}}\
        }\
    }}]} \
run return fail

# Get direction
#>score #dx calculator
# @private within mech:vision
#>score #dz calculator
# @private within mech:vision
scoreboard players set #dx calculator 1
scoreboard players set #dz calculator 1
execute if score #in_x calculator < #x calculator run scoreboard players set #dx calculator -1
execute if score #in_z calculator < #z calculator run scoreboard players set #dz calculator -1

# init
#>score #count_x calculator
# @private within mech:vision
#>score #count_z calculator
# @private within mech:vision
scoreboard players operation #count_x calculator = #x calculator
scoreboard players operation #count_x calculator -= #in_x calculator
execute if score #count_x calculator matches ..-1 run scoreboard players operation #count_x calculator *= #-1 calculator
scoreboard players add #count_x calculator 1
scoreboard players operation #count_z calculator = #z calculator
scoreboard players operation #count_z calculator -= #in_z calculator
execute if score #count_z calculator matches ..-1 run scoreboard players operation #count_z calculator *= #-1 calculator
scoreboard players add #count_z calculator 1
data modify storage run: grid set value []

scoreboard players set #last_reachable calculator 1
function mech:vision/grass/node/each_z

return run data get storage run: grid[-1][-1]