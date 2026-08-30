scoreboard players operation $this privilege_input = @s privilege_input
scoreboard players set @s privilege_input 0
execute unless function op:auth/validate run return run dialog clear @s


execute if score @s privilege_waiting matches 1 run return run function op:pages/group/info