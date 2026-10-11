#>@public op:auth/self
# grants the current player op authentication for a certain duration
# @context as the player being granted

#>@public score OP_AUTH_EXPIRE_SEC
# The duration in seconds for which the op authentication is valid

execute store result score @s op_auth run stopwatch query op:auth 1
scoreboard players operation @s op_auth += OP_AUTH_EXPIRE_SEC op_auth