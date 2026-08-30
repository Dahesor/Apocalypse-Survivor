execute if score #LAST_GET UID = #UID_GET UID run return 1

execute store result storage as:player __UIDGET__.UID int 1 run scoreboard players operation #LAST_GET UID = #UID_GET UID

function as:player/uid/zzz/__rotate with storage as:player __UIDGET__