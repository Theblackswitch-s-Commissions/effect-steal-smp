scoreboard players set @s es.death 0
execute store result score #rand temp run random value 1..3
execute if score #rand temp matches 0 run scoreboard players add @s es.effect.mining_fatigue.level 1
execute if score #rand temp matches 1 run scoreboard players add @s es.effect.slowness.level 1
execute if score #rand temp matches 2 run scoreboard players add @s es.effect.weakness.level 1
