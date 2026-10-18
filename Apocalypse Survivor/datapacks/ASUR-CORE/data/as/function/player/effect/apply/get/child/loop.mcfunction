#>@private as:player/effect/apply/get/child/loop

# If the new child has both a larger or equal instensity and until than children[0], then delete children[0] (skip)
execute if predicate {type:"all_of",terms:[\
    {\
        type:"int_value_check",\
        value:{type:"storage",storage:"as:effect",path:"children[0].until"},\
        test:{max:{type:"storage",storage:"as:effect",path:"child.until"}}\
    },\
    {\
        type:"int_value_check",\
        value:{type:"storage",storage:"as:effect",path:"children[0].j_intensity"},\
        test:{max:{type:"storage",storage:"as:effect",path:"child.j_intensity"}}\
    },\
]} \
   run return run function as:player/effect/apply/get/child/skip

# If the new child has both a smaller instensity and until than children[0], then discard.
execute if predicate {type:"all_of",terms:[\
    {\
        type:"int_value_check",\
        value:{type:"storage",storage:"as:effect",path:"children[0].until"},\
        test:{min:{type:"storage",storage:"as:effect",path:"child.until"}}\
    },\
    {\
        type:"int_value_check",\
        value:{type:"storage",storage:"as:effect",path:"children[0].j_intensity"},\
        test:{min:{type:"storage",storage:"as:effect",path:"child.j_intensity"}}\
    },\
]} \
   run return run data modify storage as:player keffects[0].child append from storage as:effect children[]

# If higher intensity but shorter duration, place it here
execute if predicate {type:"all_of",terms:[\
    {\
        type:"int_value_check",\
        value:{type:"storage",storage:"as:effect",path:"children[0].j_intensity"},\
        test:{max:{type:"storage",storage:"as:effect",path:"child.j_intensity"}}\
    },\
]} \
   run return run function as:player/effect/apply/get/child/here


#else, next
function as:player/effect/apply/get/child/next
