particle minecraft:gust_emitter_large ~ ~ ~ 0.2 0.2 0.2 0 2
particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.25 58
particle minecraft:flash{color: [1, 1, 1, 1]} ~ ~ ~ 0.3 0.3 0.3 0 2
particle minecraft:dust{color: [0.05d, 0.05d, 0.05d], scale: 4} ~ ~ ~ 0.3 0.3 0.3 0 15
playsound minecraft:entity.warden.death block @a ~ ~ ~ 1 1
playsound minecraft:item.trident.thunder block @a ~ ~ ~ 0.75 1.5
playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 1 1
playsound minecraft:entity.warden.sonic_boom block @a ~ ~ ~ 1 1.2
execute rotated ~90 0 run function effect_steal:alchemy_table/ritual/animation/lightning_particle {length: 100}
execute rotated ~90 -45 run function effect_steal:alchemy_table/ritual/animation/lightning_particle {length: 100}
execute rotated ~90 -90 run function effect_steal:alchemy_table/ritual/animation/lightning_particle {length: 100}
execute rotated ~-90 0 run function effect_steal:alchemy_table/ritual/animation/lightning_particle {length: 100}
execute rotated ~-90 -45 run function effect_steal:alchemy_table/ritual/animation/lightning_particle {length: 100}
scoreboard players operation #search tbs.ID = @s es.owner_id
execute as @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] facing entity @s feet run function effect_steal:alchemy_table/ritual/animation/player_ray
damage @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] 1 minecraft:sonic_boom by @s
