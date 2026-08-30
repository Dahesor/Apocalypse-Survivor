execute store result score $this op_auth run stopwatch query op:auth 1
execute if score @s op_auth > $this op_auth run return 1
return fail