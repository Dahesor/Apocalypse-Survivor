#>@public op:auth/validate
# Check if the current player is authenticated to use op features
# @context as the player being validated
# @predicate Pass if the current player is authenticated

execute store result score $this op_auth run stopwatch query op:auth 1
execute if score @s op_auth > $this op_auth run return 1
return fail