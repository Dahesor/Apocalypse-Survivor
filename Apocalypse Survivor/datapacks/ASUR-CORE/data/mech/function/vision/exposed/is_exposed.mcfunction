#>@internal mech:vision/exposed/is_exposed
# Find which players can this player see
# @context @player
# @returns whether this player is visible on map

execute unless predicate as:is_alive_player run return fail
execute if predicate mech:vision/is_hiding run return fail
execute if predicate mech:vision/exposed run return 1

function as:core/team/set_context

scoreboard players set #return calculator 0

tag @s add __this
execute as @a[predicate=as:is_alive_player] unless predicate as:core/same_team_ctx if entity @s[distance=..75] if predicate {type:"entity_properties",entity:"this",predicate:{"type_specific/player":{looking_at:{entity_tags:{all_of:["__this"]}}},entity_type:"player"}} run scoreboard players set #return calculator 1
tag @s remove __this

return run scoreboard players get #return calculator