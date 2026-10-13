#>@private as:player/effect/apply/use_old_as_children
# @returns `1`

data modify storage as:player keffects prepend from storage registry:effect this
data modify storage as:player keffects[0].child.i_duration set from storage as:player keffects[1].child.i_duration
data modify storage as:player keffects[0].child.j_intensity set from storage as:player keffects[1].child.j_intensity
data modify storage as:player keffects[0].child.until set from storage as:player keffects[1].child.until
data modify storage as:player keffects[0].child.hidden set from storage as:player keffects[1].child.hidden
data modify storage as:player keffects[0].child.frame set from storage as:player keffects[1].child.frame
return 1