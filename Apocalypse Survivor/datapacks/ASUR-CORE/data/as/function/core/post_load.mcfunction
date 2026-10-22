#>as:core/post_load
# @private within as:load

#>@internal tag ROOT World Entity
#>@internal tag ROOT.minecart World Entity: Minecart
#>@internal tag ROOT.text World Entity: Text Display
#>@internal tag ROOT.marker World Entity: Marker

execute positioned 0 0 0 unless loaded ~ ~ ~ run function as:core/root/forceload
execute positioned 0 0 0 unless entity 0-0-0-0-1 run function as:core/root/text_display
execute positioned 0 0 0 unless entity 0-0-0-0-0 run function as:core/root/minecart
execute positioned 0 0 0 unless entity 0-0-0-0-9 run summon marker ~ 400 ~ {Tags:["ROOT.marker","ROOT"],UUID:[I;0,0,0,9]}