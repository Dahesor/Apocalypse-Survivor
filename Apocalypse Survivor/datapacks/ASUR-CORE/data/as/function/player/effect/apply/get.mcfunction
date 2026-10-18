#>@private as:player/effect/apply/get
# load the effect to add
# @writes storage as:player keffects[0]
#   the effect instance to add
# @returns
#   @success if there is an effect to apply

## registry -> this must be const

function as:player/uid/get_self
data modify storage as:player keffects set value []
function as:player/effect/apply/__get_existed with storage registry:effect this

# If no collision, apply directly
execute unless data storage as:player keffects[0] run return run data modify storage as:player keffects append from storage registry:effect this

# If both time and intensity is smaller or equal than the old effect, discard
execute if predicate {type:"all_of",terms:[\
    {\
        type:"int_value_check",\
        value:{type:"storage",storage:"registry:effect",path:"this.until"},\
        test:{max:{type:"storage",storage:"as:player",path:"keffects[0].until"}}\
    },\
    {\
        type:"int_value_check",\
        value:{type:"storage",storage:"registry:effect",path:"this.j_intensity"},\
        test:{max:{type:"storage",storage:"as:player",path:"keffects[0].j_intensity"}}\
    },\
]} \
   run return fail

# If both time and intensity is larger or equal than the old effect, replace it and verify its children
execute if predicate {type:"all_of",terms:[\
    {\
        type:"int_value_check",\
        value:{type:"storage",storage:"registry:effect",path:"this.until"},\
        test:{min:{type:"storage",storage:"as:player",path:"keffects[0].until"}}\
    },\
    {\
        type:"int_value_check",\
        value:{type:"storage",storage:"registry:effect",path:"this.j_intensity"},\
        test:{min:{type:"storage",storage:"as:player",path:"keffects[0].j_intensity"}}\
    },\
]} \
   run return run function as:player/effect/apply/get/verify_children

# If new intensity is large but new duration is small, keep the old one in children
execute if predicate {type:"all_of",terms:[\
    {\
        type:"int_value_check",\
        value:{type:"storage",storage:"registry:effect",path:"this.j_intensity"},\
        test:{min:{type:"storage",storage:"as:player",path:"keffects[0].j_intensity"}}\
    },\
]} \
    run return run function as:player/effect/apply/get/use_old_as_children

# else, save this as the old one's children

function as:player/effect/apply/get/child

return 1