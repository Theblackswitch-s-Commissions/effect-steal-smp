execute unless block ~ ~ ~ minecraft:air run return run function effect_steal:alchemy_table/place/nested_return_0
playsound minecraft:block.wood.place master @a ~ ~ ~ 0.9 0.8
summon minecraft:item_display ~0.5 ~1.05 ~0.5 {item: {id: "minecraft:poisonous_potato", components: {"minecraft:item_model": "effect_steal:block/alchemy_table", "minecraft:custom_model_data": {strings: ["flask_left:empty", "flask_middle:empty", "flask_right:empty"]}}}, Tags: ["es.alchemy_table", "INIT"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, -0.55f, 0.0f], scale: [1.0f, 1.0f, 1.0f]}}
setblock ~ ~ ~ minecraft:barrel
execute as @e[type=item_display, tag=es.alchemy_table, tag=INIT, limit=1] at @s run function effect_steal:alchemy_table/place/nested_execute_0
function effect_steal:alchemy_table/gui/update
kill @s
