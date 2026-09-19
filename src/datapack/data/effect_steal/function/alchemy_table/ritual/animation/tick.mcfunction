



execute if score @s es.animation matches 30:
    particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0 15
    playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 0.4 2
    playsound minecraft:entity.puffer_fish.blow_out block @a ~ ~ ~ 0.8 0


for i in range(5):
    x = i * 20 + 60
    execute if score @s es.animation matches x:
        tag @e[type=item_display,tag=es.alchemy_table_ingredient,limit=1,sort=furthest,tag=!es.selected,predicate=effect_steal:match_table_id] add es.selected
        playsound minecraft:block.respawn_anchor.charge block @a ~ ~ ~ 0.5 1.5

execute if score @s es.animation matches 60..150 as @e[type=item_display,tag=es.alchemy_table_ingredient,tag=es.selected,predicate=effect_steal:match_table_id] run function effect_steal:alchemy_table/ritual/animation/ray/run

execute if score @s es.animation matches 150:
    playsound minecraft:weather.end_flash block @a ~ ~ ~ 1 1
    playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 0

execute if score @s es.animation matches 150..250 if score #5 tbs.slow_tick matches 2:
    execute rotated ~ 90 run function effect_steal:alchemy_table/ritual/animation/particle

    playsound minecraft:block.beacon.ambient block @a ~ ~ ~ 0.2

execute if score @s es.animation matches 180..200:
    particle minecraft:portal ~ ~ ~ 0 0 0 0.8 10

execute if score @s es.animation matches 190..200 if score #10 tbs.slow_tick matches 1:
    playsound minecraft:block.respawn_anchor.ambient block @a ~ ~ ~ 1 1
    
execute if score @s es.animation matches 220..260:
    particle minecraft:portal ~ ~ ~ 0 0 0 0.9 20

execute if score @s es.animation matches 200:
    playsound minecraft:entity.warden.sonic_charge block @a ~ ~ ~ 0.8 0

execute if score @s es.animation matches 200..220 at @e[type=item_display,tag=es.alchemy_table_ingredient,tag=es.selected,predicate=effect_steal:match_table_id]:
    particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.05 2

execute if score @s es.animation matches 270 positioned ^ ^0.5 ^0.55:
    particle minecraft:gust_emitter_large ~ ~ ~ 0.2 0.2 0.2 0 2
    particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.25 58
    particle minecraft:flash{color:[1, 1, 1, 1]} ~ ~ ~ 0.3 0.3 0.3 0 2
    particle minecraft:dust{color:[0.05,0.05,0.05],scale:4} ~ ~ ~ 0.3 0.3 0.3 0 15
    playsound minecraft:entity.warden.death block @a ~ ~ ~ 1 1
    playsound minecraft:item.trident.thunder block @a ~ ~ ~ 0.75 1.5
    playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 1 1
    playsound minecraft:entity.warden.sonic_boom block @a ~ ~ ~ 1 1.2

    execute rotated ~90 0 run function effect_steal:alchemy_table/ritual/animation/lightning_particle {length:100}
    execute rotated ~90 -45 run function effect_steal:alchemy_table/ritual/animation/lightning_particle {length:100}
    execute rotated ~90 -90 run function effect_steal:alchemy_table/ritual/animation/lightning_particle {length:100}
    execute rotated ~-90 0 run function effect_steal:alchemy_table/ritual/animation/lightning_particle {length:100}
    execute rotated ~-90 -45 run function effect_steal:alchemy_table/ritual/animation/lightning_particle {length:100}

    scoreboard players operation #search tbs.ID = @s es.owner_id
    execute as @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] facing entity @s feet run function effect_steal:alchemy_table/ritual/animation/player_ray
    damage @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] 1 minecraft:sonic_boom by @s

execute if score @s es.animation matches 271 run return run function effect_steal:alchemy_table/ritual/finish

scoreboard players add @s es.animation 1