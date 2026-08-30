scoreboard players operation $this calculator = @s food.meat

scoreboard players operation $this calculator /= #10 calculator
execute if score $this calculator matches 1 run return run data modify storage dah:actbar new.text[5].text set value "s"
execute if score $this calculator matches 2.. run data modify storage dah:actbar new.text[5].text set value "A"
execute if score $this calculator matches 3 run return run data modify storage dah:actbar new.text[3].text set value "s"
execute if score $this calculator matches 4.. run data modify storage dah:actbar new.text[3].text set value "A"
execute if score $this calculator matches 5 run return run data modify storage dah:actbar new.text[1].text set value "s"
execute if score $this calculator matches 6.. run data modify storage dah:actbar new.text[1].text set value "A"
