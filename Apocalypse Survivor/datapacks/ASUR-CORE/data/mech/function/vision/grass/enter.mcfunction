#>@private mech:vision/grass/enter Entered hiding spot
# When player enters grass

function as:core/team/set_context

# No players from other teams nearby, skip checking
execute unless entity @a[predicate=as:is_alive_player,predicate=!as:core/same_team_ctx,distance=..20] run return 1

