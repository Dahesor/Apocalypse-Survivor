#>@private mech:vision/grass/node/__check_last_row
# @macro {i}

#>@local score $test calculator

scoreboard players set $test calculator 0
$execute store result score $test calculator run data get storage run: grid[-2][$(i)]
execute if score $test calculator matches 0 run return fail
return 1