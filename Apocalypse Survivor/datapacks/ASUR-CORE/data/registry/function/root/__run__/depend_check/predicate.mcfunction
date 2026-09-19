data modify storage registry:root ztemp set from storage registry:root this

execute if function registry:root/__run__/depend_check/each run return 1

data modify storage registry:root task append from storage registry:root this
return fail