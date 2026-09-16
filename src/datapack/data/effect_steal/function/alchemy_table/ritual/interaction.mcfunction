execute unless data entity @s interaction run return fail

execute on target:

    # ======= Correct Item =======
    execute if items entity @s weapon.mainhand minecraft:player_head run return:
        scoreboard players operation #search tbs.ID = @s tbs.ID
        
        execute as @e[type=minecraft:item_display,tag=es.alchemy_table_ingredient,tag=!es.has_ingredient,predicate=effect_steal:match_table_id,limit=1,sort=furthest] at @s:
            
            # Copy the player head to the item display
            item replace entity @s container.0 from entity @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] weapon.mainhand {"type":"set_count","count":1}
            tag @s add es.has_ingredient

            # Some sounds
            playsound minecraft:block.decorated_pot.insert block @a ~ ~ ~ 1 1.2
            playsound minecraft:block.trial_spawner.detect_player block @a ~ ~ ~ 1 2
            particle minecraft:trial_spawner_detection ~ ~ ~ 0.1 0.1 0.1 0 10 force

            # Increase the counter for the root block
            scoreboard players add @e[type=minecraft:item_display,tag=es.alchemy_table,predicate=effect_steal:match_table_id,limit=1] es.player_heads 1

        # Clear the head from the player
        item modify entity @s weapon.mainhand {"type":"set_count","count":-1,"add":true}

    # ======= Wrong Item =======
    playsound minecraft:block.bone_block.place block @s ~ ~ ~ 1 0
    title @s actionbar {"text":"That's not a player head!","color":"red"}

# Reset for next time
data remove entity @s interaction
