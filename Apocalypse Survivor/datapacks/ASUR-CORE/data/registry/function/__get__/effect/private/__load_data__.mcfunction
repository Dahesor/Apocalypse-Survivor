#>@protected registry:__get__/effect/private/__load_data__
# @returns
#   @success if the entry was successfully loaded

# Load $(id) in to this

$data modify storage registry:effect this merge from storage registry:effect entry[{id:"$(id)"}]
execute if data storage registry:effect this.load.v run return 1

function as:core/error/handle {message:[{text:"Registry Error [EFFECT]: Failed to load entry: "},{storage:"registry:effect",nbt:"this.id"}],type:"error"}
return fail