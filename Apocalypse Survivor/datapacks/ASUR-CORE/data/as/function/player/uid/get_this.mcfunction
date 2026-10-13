#>@public as:player/uid/get_this
# Get a player storage
# @input score $this UID
#   The UID of the player whose storage is being retrieved
# @writes storage as:player players[0]
#   The target's storage


scoreboard players operation #UID_GET UID = $this UID
function as:player/uid/zzz/get

#>@private score #UID_GET
#>@private score #NEXT_UID