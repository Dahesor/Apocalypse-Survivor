#>@protected registry:__get__/item/private/__load_data__
# @returns
#   @success if the entry was successfully loaded

# Load $(id) in to this

$data modify storage registry:item this set from storage registry:item entry[{id:"$(id)"}]
$say data modify storage registry:item this set from storage registry:item entry[{id:"$(id)"}]
execute if data storage registry:item this.load.v run return 1

function as:core/error/handle {message:[{text:"Registry Error [ITEM]: Failed to load entry: "},{storage:"registry:item",nbt:"this.id"}],type:"error"}
return fail