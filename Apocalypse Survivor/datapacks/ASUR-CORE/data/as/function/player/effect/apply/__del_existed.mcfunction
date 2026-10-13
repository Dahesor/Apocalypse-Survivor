#>@private as:player/effect/apply/__del_existed
# Delete an existing effect from the player's effects list

$data remove storage as:player players[0].effects[{id:"$(id)"}]