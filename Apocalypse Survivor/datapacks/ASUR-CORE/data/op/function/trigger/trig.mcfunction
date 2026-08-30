scoreboard players operation $this privilege_trigger = @s privilege_trigger
scoreboard players set @s privilege_trigger 0
execute unless function op:auth/validate run return run function op:auth/menu
scoreboard players enable @s privilege_trigger

execute if score $this privilege_trigger matches 999 run return run dialog clear @s
execute if score $this privilege_trigger matches 1 run return run function op:pages/main

execute if score $this privilege_trigger matches 300 run return run function op:pages/group/front
execute if score $this privilege_trigger matches 310 run return run function op:pages/group/new