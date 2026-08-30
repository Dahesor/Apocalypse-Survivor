execute if entity @s[gamemode=survival,scores={record.gamemode=0}] run return 0
execute if entity @s[gamemode=creative,scores={record.gamemode=1}] run return 1
execute if entity @s[gamemode=adventure,scores={record.gamemode=2}] run return 2
execute if entity @s[gamemode=spectator,scores={record.gamemode=3}] run return 3

execute if entity @s[gamemode=survival] run scoreboard players set @s record.gamemode 0
execute if entity @s[gamemode=creative] run scoreboard players set @s record.gamemode 1
execute if entity @s[gamemode=adventure] run scoreboard players set @s record.gamemode 2
execute if entity @s[gamemode=spectator] run scoreboard players set @s record.gamemode 3

execute if predicate as:player/has_hud run function as:player/stats/render/update_all
execute unless predicate as:player/has_hud run function as:player/stats/render/erase_all
