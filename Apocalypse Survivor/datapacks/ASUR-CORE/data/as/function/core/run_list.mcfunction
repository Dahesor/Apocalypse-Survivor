#>@public as:core/run_list
# Run multiple commands in order
# @input storage ram: run_list
#   The commands to run. **The input will be deleted after execution.**

execute unless data storage ram: run_list[0].run run return 1

function as:core/run with storage ram: run_list[0]
data remove storage ram: run_list[0]
function as:core/run_list