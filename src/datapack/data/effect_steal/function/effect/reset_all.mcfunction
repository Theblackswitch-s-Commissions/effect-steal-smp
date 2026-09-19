import effect_steal:const as const

for effect in const.effects:
    scoreboard players reset @s f"es.effect.{effect.id}.level"