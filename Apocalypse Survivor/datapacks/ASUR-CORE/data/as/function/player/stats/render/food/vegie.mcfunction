scoreboard players operation $this calculator = @s food.vegie

scoreboard players operation $this calculator /= #10 calculator
execute if score $this calculator matches 1 run return run data modify storage dah:actbar new.text[11].text set value "f"
execute if score $this calculator matches 2.. run data modify storage dah:actbar new.text[11].text set value "D"
execute if score $this calculator matches 3 run return run data modify storage dah:actbar new.text[9].text set value "f"
execute if score $this calculator matches 4.. run data modify storage dah:actbar new.text[9].text set value "D"
execute if score $this calculator matches 5 run return run data modify storage dah:actbar new.text[7].text set value "f"
execute if score $this calculator matches 6.. run data modify storage dah:actbar new.text[7].text set value "D"
