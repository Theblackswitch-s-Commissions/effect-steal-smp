execute if score @s es.blaze matches 1.. if items block ~ ~ ~ container.2 * if items block ~ ~ ~ effect_steal:alchemy_table/potions *[!minecraft:custom_data~{"es.technical_item":true}] run return run function effect_steal:alchemy_table/gui/brewing/recipes
function effect_steal:alchemy_table/gui/brewing/reset
