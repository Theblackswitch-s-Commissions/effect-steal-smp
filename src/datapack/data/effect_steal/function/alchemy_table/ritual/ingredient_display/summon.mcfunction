summon item_display ~ ~ ~ {Tags:[es.alchemy_table_ingredient,INIT],transformation:{
    "left_rotation": [0.0, 0.0, 0.0, 1.0],
    "right_rotation": [0.0, 0.0, 0.0, 1.0],
    "translation": [0f, 0f, 0f],
    "scale": [0.5, 0.5, 0.5]
}}

execute rotated as @s as @e[type=item_display,tag=es.alchemy_table_ingredient,tag=INIT,limit=1]:
    scoreboard players operation @s es.table_id = #search es.table_id

    tag @s remove INIT
    rotate @s ~180 ~
