#>as:tick
# @protected within minecraft
#>@public score #loop_20 20 looping counter
#>@public score #loop_10 10 looping counter
#>@public score #toggle 2 toggling counter
#>@public score $gametime

execute store result score $gametime data run time query gametime

scoreboard players add #loop_20 calculator 1
execute if score #loop_20 calculator matches 20.. run scoreboard players set #loop_20 calculator 0
scoreboard players add #loop_10 calculator 1
execute if score #loop_10 calculator matches 10.. run scoreboard players set #loop_10 calculator 0
scoreboard players add #toggle calculator 1
execute if score #toggle calculator matches 2.. run scoreboard players set #toggle calculator 0


execute as @a run function as:player/tick

#Step Effect Icon Progress
function as:player/effect/render/step_progress