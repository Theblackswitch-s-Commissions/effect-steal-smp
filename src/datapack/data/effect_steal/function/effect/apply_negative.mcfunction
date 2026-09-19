import effect_steal:const as const

scoreboard players set @s es.death 0





neg_effects = []

for effect in const.effects:
    if effect.type == "negative":
        neg_effects.append(effect)


execute store result score #rand temp run random value (1, len(neg_effects))

for idx, effect in enumerate(neg_effects):
    execute if score #rand temp matches idx run scoreboard players add @s f"es.effect.{effect.id}.level" 1

