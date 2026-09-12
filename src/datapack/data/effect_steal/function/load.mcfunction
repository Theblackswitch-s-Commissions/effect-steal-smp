


tellraw @a [{"text":"[Server]: "}, {"text":"Effect Steal SMP reloaded!", "color": "green"}]

# -------------------------------
#  Scoreboards                             
# -------------------------------

scoreboard objectives add es.use.cod_spawn_egg minecraft.used:minecraft.cod_spawn_egg

# ======= ALCHEMY TABLE =======

# Gui state
scoreboard objectives add es.button_click dummy
scoreboard objectives add es.recipe_book dummy

# Selected Effect
scoreboard objectives add es.selected_effect dummy
scoreboard objectives add es.effect_level dummy

# Owner
scoreboard objectives add es.owner_id dummy


# -------------------------------
#  Enable library features                            
# -------------------------------

function #theblackswitch:__version__/slow_tick/enable
function #theblackswitch:__version__/clear_item/enable