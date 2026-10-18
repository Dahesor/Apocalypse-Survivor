#>as:load
# @protected within minecraft

schedule function as:core/post_load 2s

#Scb
scoreboard objectives add calculator dummy
scoreboard objectives add const dummy
scoreboard objectives add UID dummy
scoreboard objectives add food.fruit dummy
scoreboard objectives add food.vegie dummy
scoreboard objectives add food.meat dummy
scoreboard objectives add food.cake dummy
scoreboard objectives add monitor.air air
scoreboard objectives add monitor.food food
scoreboard objectives add record.gamemode dummy
scoreboard objectives add water dummy
scoreboard objectives add data dummy
scoreboard objectives add Options dummy
scoreboard objectives add join_game dummy
scoreboard objectives add leave_game custom:leave_game
scoreboard objectives add revive_cd dummy

#>objective effect.next_until
# @private within as:player
# The time when the player's shortest effect is due
scoreboard objectives add effect.next_until dummy

#Consts
scoreboard players set #100 calculator 100
scoreboard players set #20 calculator 20
scoreboard players set #10 calculator 10
scoreboard players set #2 calculator 2
scoreboard players set #-1 calculator -1

# Teams
team add red
team add blue
team modify red color red
team modify blue color blue
team modify red friendlyFire false
team modify blue friendlyFire false
team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
team modify red nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams

# Storage inits
data modify storage as:player __UIDGET__ set value {UID:0}
data modify storage ram: i set value {d:0d,dx:0,dy:0,dz:0,f:0f,i:0,j:0,str:"",x:0,y:0,z:0,id:""}
data modify storage as:effect mapping set value {"1":"a","2":"b","3":"c","4":"d","5":"e","6":"f","7":"g","8":"h","9":"i","10":"j","11":"k","12":"l","13":"m","14":"n","15":"o","16":"p","17":"q","18":"r","19":"s","20":"t","0":"z"}

#>@internal storage core: The main storage for core data
#>@internal storage ram: Temporary storage for runtime data with type checking
#>@internal storage run: Temporary storage for runtime data without type checking
#>@internal storage persistent: Storage for data that persists and can be transferred between map instances
#>@internal storage as:player Storage for player-specific data
#>@internal storage as:effect Storage for effect status bar data

#>@internal tag __this
# temp tag to mark a certain entity
#
# **must be removed within context**

#>@internal score #count calculator

#>@public tag trigger.ignore_inventory Some advancement inventory_change may ignore players with this tag

#>@public predicate as:is_alive_player
#>@public predicate as:is_player true if the player is a player instead of a spectator
#>@public predicate as:player/is_reviving true if the player is currently in the process of reviving
#>@internal predicate as:player/has_hud
#>@internal predicate as:player/listen_to_inventory_change