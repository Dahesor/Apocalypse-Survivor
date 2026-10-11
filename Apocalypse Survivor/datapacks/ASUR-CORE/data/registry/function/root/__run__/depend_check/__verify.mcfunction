#>registry:root/__run__/depend_check/__verify
# @private within %parent/%parent

$execute if data storage registry:root ready[{id:"$(id)"}] run return 1
return 0