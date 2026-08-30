scoreboard objectives add privilege_trigger trigger
scoreboard objectives add privilege_input trigger
scoreboard objectives add privilege_waiting dummy
scoreboard objectives add op_auth dummy
scoreboard objectives add zzzgroup_update dummy
scoreboard objectives add group dummy

scoreboard players set OP_AUTH_EXPIRE_SEC op_auth 1800

stopwatch create op:auth