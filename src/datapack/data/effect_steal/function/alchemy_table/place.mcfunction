
execute unless block ~ ~ ~ minecraft:air run return:
    loot spawn ~ ~ ~ loot effect_steal:block/alchemy_table
    kill @s

playsound minecraft:block.wood.place master @a ~ ~ ~ 0.9 0.8

summon minecraft:item_display ~0.5 ~1.05 ~0.5 {
    item:{
        "id":"minecraft:poisonous_potato",
        "components":{
            "minecraft:item_model": "effect_steal:block/alchemy_table",
            "minecraft:custom_model_data": {
                "strings": [
                    "flask_left:empty",
                    "flask_middle:empty",
                    "flask_right:empty"
                ]
            }
        }
    },
    "Tags": ["es.alchemy_table", "INIT"],
    transformation:{
        left_rotation:[0f,0f,0f,1f],
        right_rotation:[0f,0f,0f,1f],
        translation:[0f,-0.55f,0f],
        scale:[1f,1f,1f]
    }
}

setblock ~ ~ ~ minecraft:barrel

execute as @e[type=item_display,tag=es.alchemy_table,tag=INIT,limit=1] at @s:
    tag @s remove INIT

    # Assign an id
    scoreboard players add #curr es.table_id 1
    scoreboard players operation @s es.table_id = #curr es.table_id

    # Handle rotation
    execute facing entity @a[tag=es.placed_block,limit=1] eyes run rotate @s ~ 0

    if entity @s[y_rotation=-180..-135] run return run rotate @s 180 0
    if entity @s[y_rotation=135..180] run return run rotate @s 180 0
    if entity @s[y_rotation=45..135] run return run rotate @s 90 0
    if entity @s[y_rotation=-45..45] run return run rotate @s 0 0
    if entity @s[y_rotation=-135..-45] run return run rotate @s -90 0

function effect_steal:alchemy_table/gui/update

kill @s