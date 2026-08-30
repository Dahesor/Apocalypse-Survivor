scoreboard players operation $this calculator = @s food.fruit

scoreboard players operation $this calculator /= #10 calculator
execute if score $this calculator matches 1 run return run data modify storage dah:actbar new.text[17].text set value "h"
execute if score $this calculator matches 2.. run data modify storage dah:actbar new.text[17].text set value "G"
execute if score $this calculator matches 3 run return run data modify storage dah:actbar new.text[15].text set value "h"
execute if score $this calculator matches 4.. run data modify storage dah:actbar new.text[15].text set value "G"
execute if score $this calculator matches 5 run return run data modify storage dah:actbar new.text[13].text set value "h"
execute if score $this calculator matches 6.. run data modify storage dah:actbar new.text[13].text set value "G"