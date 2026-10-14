#>registry:effect/buff/tester/meta
# @private within registry:effect

data modify storage registry:effect new set value {\
    id:"buff:tester",icon:"a",polarity:1,\
    hooks:{before_remove:{run:"say removing q1"},on_apply:{run:"say applying q1"}},\
    ticker:{every:"4_ticks",run:"say ticking"}\
}

function registry:__parse__/effect/new