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
data modify storage ram: i set value {d:0d,dx:0,dy:0,dz:0,f:0f,i:0,j:0,str:"",x:0,y:0,z:0}