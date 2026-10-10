execute store result score #effect temp run random value 0..2
execute if score #effect temp matches 0 if score @s es.effect.slowness.level matches 1.. run return run scoreboard players remove @s es.effect.slowness.level 1
execute if score #effect temp matches 1 if score @s es.effect.weakness.level matches 1.. run return run scoreboard players remove @s es.effect.weakness.level 1
execute if score #effect temp matches 2 if score @s es.effect.mining_fatigue.level matches 1.. run return run scoreboard players remove @s es.effect.mining_fatigue.level 1
function effect_steal:effect/god_apple_clear/loop
