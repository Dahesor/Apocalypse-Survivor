#>registry:effect/buff/invisible/meta
# @protected within registry:effect

data modify storage registry:effect new set value {\
    id:"buff:invisible",\
    icon:"b",\
    polarity:1,\
    hooks:{\
        on_apply:{run:"function registry:effect/buff/invisible/on_apply"},\
        before_remove:{run:"function registry:effect/buff/invisible/on_remove"}\
    },\
}

function registry:__parse__/effect/new