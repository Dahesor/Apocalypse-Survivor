#>@public as:player/uid/get_self
# Get the player storage of the executor player
# @context the player whose UID is being retrieved
# @writes storage as:player players[0]
#   The target's storage

scoreboard players operation #UID_GET UID = @s UID
function as:player/uid/zzz/get