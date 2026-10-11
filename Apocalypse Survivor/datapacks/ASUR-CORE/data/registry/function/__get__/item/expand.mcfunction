#>@public registry:__get__/item/expand
# Load a item id into its full data from registry
# @input storage registry:item this.id
#   The ID of the item to expand
# @writes storage registry:item this
#   The full data of the item, read from registry

function registry:__get__/item/private/__load_data__ with storage registry:item this