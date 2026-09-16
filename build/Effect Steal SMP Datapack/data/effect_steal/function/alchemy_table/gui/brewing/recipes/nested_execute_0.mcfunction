data modify storage effect_steal:alchemy_table brewing_recipe set from storage effect_steal:data_gen brewing_recipe
function effect_steal:alchemy_table/gui/brewing/apply_recipe/loop
playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 1
item modify block ~ ~ ~ container.2 {type: "set_count", count: -1, add: true}
scoreboard players remove @s es.blaze 1
