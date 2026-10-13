#>registry:effect/buff/question
# @protected within registry:effect

data modify storage registry:effect new set value {\
    id:"buff:test",icon:"a",polarity:1,\
    hooks:{before_remove:{run:"say removing q1"},on_apply:{run:"say applying q1"}}\
}

function registry:__parse__/effect/new