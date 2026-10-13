#>registry:root/reg/status
# @private within registry:root

data modify storage registry:root new set value {\
    id:"as:effect",\
    folder:"effect",\
    pointer:"registry:effect",\
}

data modify storage registry:root entry append from storage registry:root new