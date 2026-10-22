#>@public as:core/team/set_context
# Set the executor's team as the context for subsequent operations
# @context as a player with team

#>score $context.team calculator
# @private within as:core

execute if entity @s[team=red] run scoreboard players set $context.team calculator 1
execute if entity @s[team=blue] run scoreboard players set $context.team calculator 2

#>@public predicate as:core/same_team_ctx
# Checks if the executor is on the same team as the context
# 
# Must run as:core/team/set_context before checking this predicate