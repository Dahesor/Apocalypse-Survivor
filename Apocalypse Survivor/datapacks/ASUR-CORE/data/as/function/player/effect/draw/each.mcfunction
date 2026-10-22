#>@private as:player/effect/draw/each

execute unless data storage as:player keffects[0] run return 1

data modify storage dah:actbar new.text[1].extra append value "{"

data modify storage as:effect text append value {text:"",extra:["[<",{storage:"as:effect",interpret:true,nbt:"NULL",font:"as:effect/frame"}]}
data modify storage as:effect text[-1].text set from storage as:player keffects[0].icon
data modify storage as:effect text[-1].extra[1].nbt set from storage as:player keffects[0].frame

data remove storage as:player keffects[0]
function as:player/effect/draw/each