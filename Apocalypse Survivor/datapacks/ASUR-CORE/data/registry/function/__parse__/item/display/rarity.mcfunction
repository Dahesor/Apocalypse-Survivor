execute if data storage registry:item new{rarity:"initial"} run data modify storage ram: color set value "gray"
execute if data storage registry:item new{rarity:"common"} run data modify storage ram: color set value "white"
execute if data storage registry:item new{rarity:"refined"} run data modify storage ram: color set value "green"
execute if data storage registry:item new{rarity:"rare"} run data modify storage ram: color set value "#5252E2"
execute if data storage registry:item new{rarity:"epic"} run data modify storage ram: color set value "light_purple"
execute if data storage registry:item new{rarity:"legendary"} run data modify storage ram: color set value "gold"
execute if data storage registry:item new{rarity:"mythic"} run data modify storage ram: color set value "#DC4116"


execute if data storage registry:item new{rarity:"initial"} run data modify storage ram: components."minecraft:lore" prepend value {translate:"rarity.initial",color:"gray",italic:false}
execute if data storage registry:item new{rarity:"common"} run data modify storage ram: components."minecraft:lore" prepend value {translate:"rarity.common",color:"white",italic:false}
execute if data storage registry:item new{rarity:"refined"} run data modify storage ram: components."minecraft:lore" prepend value {translate:"rarity.refined",color:"green",italic:false}
execute if data storage registry:item new{rarity:"rare"} run data modify storage ram: components."minecraft:lore" prepend value {translate:"rarity.rare",color:"#5252E2",italic:false}
execute if data storage registry:item new{rarity:"epic"} run data modify storage ram: components."minecraft:lore" prepend value {translate:"rarity.epic",color:"light_purple",italic:false}
execute if data storage registry:item new{rarity:"legendary"} run data modify storage ram: components."minecraft:lore" prepend value {translate:"rarity.legendary",color:"gold",italic:false}
execute if data storage registry:item new{rarity:"mythic"} run data modify storage ram: components."minecraft:lore" prepend value {translate:"rarity.mythic",color:"#DC4116",italic:false}
