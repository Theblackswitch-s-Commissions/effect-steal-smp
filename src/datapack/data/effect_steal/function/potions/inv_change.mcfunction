

for slot in range(36):
    execute if items entity @s f'container.{slot}' #minecraft:brewing_potion_inputs[!minecraft:custom_data~{"es.modified_potion":true}] run function effect_steal:potions/modify_potion {"slot": slot}
    execute if items entity @s f'container.{slot}' minecraft:glass_bottle[minecraft:custom_data~{"es.modified_potion":true}] run item replace entity @s f'container.{slot}' with glass_bottle

execute if entity @s[gamemode=creative]:
    for slot in range(36):
        execute store result score #result temp if items entity @s f'container.{slot}' #minecraft:brewing_potion_inputs[minecraft:custom_data~{"es.modified_potion":true}]
        execute if score #result temp matches 2..:
            execute store result storage effect_steal:potion id int 1 run scoreboard players add #es.potion_item_id tbs.server_data 1
            item modify entity @s f'container.{slot}' effect_steal:potion_creative_fix
            