import effect_steal:const as const

execute if score #20 tbs.slow_tick matches 1:
    for idx, effect in enumerate(const.effects):
        execute if score @s f"es.effect.{effect.id}.level" matches 1..:
            scoreboard players operation #level temp = @s f"es.effect.{effect.id}.level"
            execute store result storage effect_steal:effect level int 1 run scoreboard players remove #level temp 1
            with storage effect_steal:effect:
                raw f"$effect give @s minecraft:{effect.id} 8 $(level) true"

execute if score @s es.effect.unluck.level matches 1.. run function effect_steal:effect/master_of_the_evil/active