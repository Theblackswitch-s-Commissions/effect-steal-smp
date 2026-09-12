tellraw @a [{text: "[Server]: "}, {text: "Effect Steal SMP reloaded!", color: "green"}]
scoreboard objectives add es.use.cod_spawn_egg minecraft.used:minecraft.cod_spawn_egg
scoreboard objectives add es.button_click dummy
scoreboard objectives add es.recipe_book dummy
scoreboard objectives add es.selected_effect dummy
scoreboard objectives add es.effect_level dummy
scoreboard objectives add es.owner_id dummy
function #theblackswitch:v2.0/slow_tick/enable
function #theblackswitch:v2.0/clear_item/enable
