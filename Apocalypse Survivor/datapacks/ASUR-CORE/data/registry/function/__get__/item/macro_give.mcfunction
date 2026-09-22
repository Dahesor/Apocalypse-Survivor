# Give this player 1 item of $(this)

scoreboard players set #count calculator 1
$data modify storage registry:item this set value {id:'$(id)'}
function registry:__get__/item/give