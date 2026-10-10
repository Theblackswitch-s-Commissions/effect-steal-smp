execute unless score @s es.effect.slowness.level matches 1.. unless score @s es.effect.weakness.level matches 1.. unless score @s es.effect.mining_fatigue.level matches 1.. run return fail

playsound minecraft:block.trial_spawner.spawn_item_begin master @a ~ ~ ~ 1 0.8
playsound minecraft:block.trial_spawner.detect_player master @a ~ ~ ~ 0.5 1.2
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.2 0.2 0.2 0.1 20 force

advancement grant @s only effect_steal:main/clear_effect

function effect_steal:effect/god_apple_clear/loop