#>@protected registry:__parse__/item/display/__item_name

$data modify storage registry:item ztemp.display.item_name set value {translate:"item.$(id).name",color:"white",italic:false}
data modify storage registry:item ztemp.display.item_name.color set from storage ram: color