#>@private as:player/effect/apply/__get_existed
# Moves an existing effect from the player's effects list to the keffects list

$data modify storage as:player keffects append from storage as:player players[0].effects[{id:"$(id)"}]