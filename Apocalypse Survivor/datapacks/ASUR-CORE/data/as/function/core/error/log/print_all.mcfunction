#>@public @user as:core/error/log/print_all
# Print all system log entries

tellraw @s {text:"Showing all system log entries:",color:"aqua"}
tellraw @s {storage:"core:",nbt:"log[].text",separator:"\n",interpret:true}
tellraw @s {text:"--- end ---",color:"aqua"}