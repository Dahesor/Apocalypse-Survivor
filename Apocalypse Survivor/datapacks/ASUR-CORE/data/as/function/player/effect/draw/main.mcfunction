#>as:player/effect/draw/main
# Draws the active effects for the player
# @context the player whose effects are being drawn
# @private within %parent/%parent

function as:player/uid/get_self

data modify storage as:player keffects set from storage as:player players[0].effects
data remove storage as:player keffects[{hidden:true}]
data remove storage as:effect text
execute unless data storage as:player keffects[0] run return run function dah.actbar_mixer:remove/this {id:"as:effect"}
data modify storage dah:actbar new set value {id:"as:effect",text:[{text:"",font:"as:effect/icon",shadow_color:0},{text:""},"ICONS",{text:"+"}]}

function as:player/effect/draw/each

data modify storage dah:actbar new.text[3].extra set from storage dah:actbar new.text[1].extra
data modify storage dah:actbar new.text[2] set from storage as:effect text

function dah.actbar_mixer:remove/this {id:"as:effect"}
function dah.actbar_mixer:new/append