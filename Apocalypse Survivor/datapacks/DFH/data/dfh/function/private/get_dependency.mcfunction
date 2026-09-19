scoreboard players set #dependency dfh.calculator 0
execute store result score #dependency dfh.calculator run function dah.actbar_mixer:version
execute unless score #dependency dfh.calculator matches 3.. run tellraw @a ["",{"text":"[DFH] ","color":"dark_aqua"},{"text":"Dependency Actionbar Mixer not found. Please ","color":"red"},{text:"Install Actionbar Mixer v1.3.2 or Higher",underlined:true,click_event:{action:"open_url",url:"https://github.com/Dahesor/Actionbar-Mixer-for-Minecraft"}}]


return 1
data modify storage dfh:var definition.functions set value ["dah.actbar_mixer:version","dah.actbar_mixer:remove/this","dah.actbar_mixer:redraw","dah.actbar_mixer:z_private/uid/get","dah.actbar_mixer:remove/for_all","dah.actbar_mixer:new/prepend"]