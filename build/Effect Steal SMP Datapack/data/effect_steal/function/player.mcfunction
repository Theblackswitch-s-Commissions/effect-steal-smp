execute unless entity @s[tag=es.has_team] run function effect_steal:make_team
execute if items entity @s weapon.mainhand minecraft:trapped_chest run item replace entity @s weapon.mainhand with chest
function effect_steal:effect/apply
execute if score @s es.death matches 1.. run function effect_steal:effect/apply_negative
