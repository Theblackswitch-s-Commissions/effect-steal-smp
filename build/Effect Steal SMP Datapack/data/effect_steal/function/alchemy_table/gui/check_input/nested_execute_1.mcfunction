item modify block ~ ~ ~ container.4 {type: "minecraft:set_count", count: -1, add: true}
scoreboard players set @s es.blaze 20
function effect_steal:alchemy_table/gui/update
data modify storage effect_steal:alchemy_table brewing_recipe set from storage effect_steal:data_gen brewing_recipe
function effect_steal:alchemy_table/gui/brewing/check_recipe/loop
