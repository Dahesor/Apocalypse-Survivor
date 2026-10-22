#>@public as:core/get_coords
# Retrieves the coordinates of the current position
# @context at the position to get coordinates from
# @writes score #x calculator
# @writes score #y calculator
# @writes score #z calculator

#>@public score #x calculator
#>@public score #y calculator
#>@public score #z calculator

execute positioned ~ ~400 ~ as 0-0-0-0-9 run function as:core/private/get_coords