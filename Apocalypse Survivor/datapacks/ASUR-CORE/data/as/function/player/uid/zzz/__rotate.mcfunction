$data modify storage as:player temp set from storage as:player players[{UID:$(UID)}]
$data remove storage as:player players[{UID:$(UID)}]
data modify storage as:player players prepend from storage as:player temp
data remove storage as:player temp