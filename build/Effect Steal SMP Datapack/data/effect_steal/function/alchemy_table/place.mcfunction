execute unless block ~ ~ ~ minecraft:air run return run function effect_steal:alchemy_table/place/nested_return_0
playsound minecraft:block.wood.place master @a ~ ~ ~ 0.9 0.8
summon minecraft:item_display ~0.5 ~1.05 ~0.5 {item: {id: "minecraft:poisonous_potato", components: {"minecraft:item_model": "effect_steal:block/alchemy_table", "minecraft:custom_model_data": {strings: ["flask_left:empty", "flask_middle:empty", "flask_right:empty"]}}}, Tags: ["es.alchemy_table", "INIT"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, -0.55f, 0.0f], scale: [1.0f, 1.0f, 1.0f]}}
execute as @e[type=item_display, tag=es.alchemy_table, tag=INIT, limit=1] at @s run function effect_steal:alchemy_table/place/nested_execute_0
setblock ~ ~ ~ minecraft:barrel
item replace block ~ ~ ~ container.1 with minecraft:poisonous_potato[minecraft:item_model="effect_steal:gui/alchemy_table", minecraft:tooltip_display={hide_tooltip: true}, minecraft:custom_data={tbs.always_clear: true, tbs.clear_when_dropped: true, tbs.clear_misc: true}]
item fill block ~ ~ ~ effect_steal:alchemy_table/locked_slots with minecraft:poisonous_potato[minecraft:item_model="minecraft:air",minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true}]
kill @s
