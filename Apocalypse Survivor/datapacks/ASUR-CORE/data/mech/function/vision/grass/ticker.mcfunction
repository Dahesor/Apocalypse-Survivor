#>mech:vision/grass/ticker
# @private within mech:

scoreboard players remove @s hiding 1
execute if score @s hiding matches 0 run function mech:vision/grass/left

execute if score #loop_4 calculator matches 2 run data modify storage registry:effect this set value {id:"buff:invisible",hidden:true,i_duration:4,j_intensity:0}
execute if score #loop_4 calculator matches 2 run function as:player/effect/apply_this_only