import effect_steal:const as const


forceload add 0 0
tellraw @a [{"text":"[Server]: "}, {"text":"Effect Steal SMP reloaded!", "color": "green"}]

# -------------------------------
#  Scoreboards                             
# -------------------------------

scoreboard objectives add es.use.cod_spawn_egg minecraft.used:minecraft.cod_spawn_egg

# ======= Player Permanent effects =======

for effect in const.effects:
    scoreboard objectives add f"es.effect.{effect.id}.level" dummy

# ======= ALCHEMY TABLE =======

# Table id
scoreboard objectives add es.table_id dummy

# Gui state
scoreboard objectives add es.button_click dummy
scoreboard objectives add es.recipe_book dummy

scoreboard objectives add es.brew_progress dummy
scoreboard objectives add es.blaze dummy


# Selected Effect
scoreboard objectives add es.selected_effect dummy
scoreboard objectives add es.effect_level dummy

# Owner
scoreboard objectives add es.owner_id dummy

# animations
scoreboard objectives add es.animation dummy

# Ritual
scoreboard objectives add es.player_heads dummy


# -------------------------------
#  Enable library features                            
# -------------------------------

function #theblackswitch:__version__/slow_tick/enable
function #theblackswitch:__version__/easing/enable
function #theblackswitch:__version__/clear_item/enable

# -------------------------------
#  Data gen                            
# -------------------------------

function effect_steal:data_gen/init