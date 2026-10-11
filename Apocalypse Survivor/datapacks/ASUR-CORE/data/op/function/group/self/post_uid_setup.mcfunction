#>op:group/self/post_uid_setup
# @private within op:

execute unless score @s UID matches 1.. run return run tellraw @a [{"text":"[Warn] UID not set for player: ",color:"gold"},{"selector":"@s"}]
function op:group/self/check_status