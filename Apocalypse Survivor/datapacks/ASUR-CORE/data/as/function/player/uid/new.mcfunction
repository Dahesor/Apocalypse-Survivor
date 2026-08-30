data modify storage as:player players append value {UID:-1,Name:"",UUID:"0-0-2-2-2"}

execute store result score @s UID run scoreboard players add #NEXT_UID UID 1
execute store result storage as:player players[-1].UID int 1 run scoreboard players get @s UID

tag @s add __this
data modify entity 0-0-0-0-1 text set value {selector:"@a[limit=1,tag=__this]"}
tag @s remove __this

data modify storage as:player players[-1].Name set from entity 0-0-0-0-1 text.insertion
function gu:convert with entity @s
data modify storage as:player players[-1].UUID set from storage gu:main out