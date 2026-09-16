

# -------------------------------
#  Any non used slot                            
# -------------------------------

slots = [0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26]

execute as @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1]:
    for slot in slots:
        execute unless items block ~ ~ ~ f"container.{slot}" *[minecraft:custom_data~{"es.technical_item":true}] run function effect_steal:alchemy_table/gui/drop_item/init {"slot":slot}
