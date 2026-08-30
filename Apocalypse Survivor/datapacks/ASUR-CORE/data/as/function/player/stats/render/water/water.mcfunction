data modify storage dah:actbar new set value {id:"as:water",text:[{text:"+Qq.",font:"as:hud",shadow_color:0},{text:"z"},{text:"*"},{text:"z"},{text:"*"},{text:"z"},{text:"*"},{text:"z"},{text:"*"},{text:"z"},{text:"*"},{text:"z"},{text:"*"},{text:"z"},{text:"*"},{text:"z"},{text:"*"},{text:"z"},{text:"*"},{text:"z"},{text:"-qW,"}]}

execute if score @s monitor.air matches ..299 run data modify storage dah:actbar new.text[0].font set value "as:hud_above"

scoreboard players operation $this calculator = @s water

scoreboard players operation $this calculator /= #10 calculator
execute if score $this calculator matches 1 run return run data modify storage dah:actbar new.text[19].text set value "x"
execute if score $this calculator matches 2.. run data modify storage dah:actbar new.text[19].text set value "Z"
execute if score $this calculator matches 3 run return run data modify storage dah:actbar new.text[17].text set value "x"
execute if score $this calculator matches 4.. run data modify storage dah:actbar new.text[17].text set value "Z"
execute if score $this calculator matches 5 run return run data modify storage dah:actbar new.text[15].text set value "x"
execute if score $this calculator matches 6.. run data modify storage dah:actbar new.text[15].text set value "Z"
execute if score $this calculator matches 7 run return run data modify storage dah:actbar new.text[13].text set value "x"
execute if score $this calculator matches 8.. run data modify storage dah:actbar new.text[13].text set value "Z"
execute if score $this calculator matches 9 run return run data modify storage dah:actbar new.text[11].text set value "x"
execute if score $this calculator matches 10.. run data modify storage dah:actbar new.text[11].text set value "Z"
execute if score $this calculator matches 11 run return run data modify storage dah:actbar new.text[9].text set value "x"
execute if score $this calculator matches 12.. run data modify storage dah:actbar new.text[9].text set value "Z"
execute if score $this calculator matches 13 run return run data modify storage dah:actbar new.text[7].text set value "x"
execute if score $this calculator matches 14.. run data modify storage dah:actbar new.text[7].text set value "Z"
execute if score $this calculator matches 15 run return run data modify storage dah:actbar new.text[5].text set value "x"
execute if score $this calculator matches 16.. run data modify storage dah:actbar new.text[5].text set value "Z"
execute if score $this calculator matches 17 run return run data modify storage dah:actbar new.text[3].text set value "x"
execute if score $this calculator matches 18.. run data modify storage dah:actbar new.text[3].text set value "Z"
execute if score $this calculator matches 19 run return run data modify storage dah:actbar new.text[1].text set value "x"
execute if score $this calculator matches 20.. run data modify storage dah:actbar new.text[1].text set value "Z"
