scoreboard players operation #level temp = @s es.effect.dolphins_grace.level
execute store result storage effect_steal:effect level int 1 run scoreboard players remove #level temp 1
function effect_steal:effect/apply/nested_macro_2 with storage effect_steal:effect
