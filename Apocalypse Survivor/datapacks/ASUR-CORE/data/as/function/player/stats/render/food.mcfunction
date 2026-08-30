function dah.actbar_mixer:remove/this {id:"as:food"}
data modify storage dah:actbar new set value {id:"as:food",text:[{text:"+Qq.",font:"as:hud",shadow_color:0},{text:"a"},{text:"*"},{text:"a"},{text:"*"},{text:"a"},{text:"*"},{text:"d"},{text:"*"},{text:"d"},{text:"*"},{text:"d"},{text:"*"},{text:"g"},{text:"*"},{text:"g"},{text:"*"},{text:"g"},{text:"*"},{text:"j"},{text:"-qW,"}]}

function as:player/stats/render/food/meat
function as:player/stats/render/food/vegie
function as:player/stats/render/food/fruit

execute if score @s food.cake matches 1..19 run data modify storage dah:actbar new.text[19].text set value "k"
execute if score @s food.cake matches 20.. run data modify storage dah:actbar new.text[19].text set value "J"
function dah.actbar_mixer:new/append