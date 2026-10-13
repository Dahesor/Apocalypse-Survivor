#>@public as:core/error/handle
# Calling this function is a way to throw out an error or any unexpected situation
# @macro struct{
#   message: string,
#   type: ("error" | "warning")
# }

$data modify storage core: ram set value {message:"$(message)",type:"$(type)"}
execute if data storage core: ram{type:"info"} run data modify storage core: ram.text set value [{text:"[INFO] ",color:"aqua",hover_event:{action:"show_text",value:""}},{text:""}]
execute if data storage core: ram{type:"warning"} run data modify storage core: ram.text set value [{text:"[WARN] ",color:"gold",hover_event:{action:"show_text",value:""}},{text:""}]
execute if data storage core: ram{type:"error"} run data modify storage core: ram.text set value [{text:"[ERROR] ",color:"red",hover_event:{action:"show_text",value:""}},{text:""}]

execute unless data storage core: ram.text run return run function as:core/error/handle {message:"Rrror handle failed: Unknown error level",type:"error"}

data modify storage core: ram.text[1].text set from storage core: ram.message
execute store result storage core: ram.time int 1 run scoreboard players get $gametime data
data modify storage core: ram.text[0].hover_event.value set string storage core: ram.time

data modify storage core: log append from storage core: ram

execute if data storage core: ram{type:"error"} run tellraw @a {storage:"core:",nbt:"ram.text",interpret:true}