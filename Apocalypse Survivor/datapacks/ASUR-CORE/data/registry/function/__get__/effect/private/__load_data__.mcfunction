#>@protected registry:__get__/effect/private/__load_data__

# Load $(id) in to this

$data modify storage registry:effect this merge from storage registry:effect entry[{id:"$(id)"}]