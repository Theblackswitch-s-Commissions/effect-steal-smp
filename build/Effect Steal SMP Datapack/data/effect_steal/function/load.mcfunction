forceload add 0 0
tellraw @a [{text: "[Server]: "}, {text: "Effect Steal SMP reloaded!", color: "green"}]
scoreboard objectives add es.use.cod_spawn_egg minecraft.used:minecraft.cod_spawn_egg
scoreboard objectives add es.effect.chemical_bliss.level dummy
scoreboard objectives add es.effect.conduit_power.level dummy
scoreboard objectives add es.effect.dolphins_grace.level dummy
scoreboard objectives add es.effect.fire_resistance.level dummy
scoreboard objectives add es.effect.haste.level dummy
scoreboard objectives add es.effect.health_boost.level dummy
scoreboard objectives add es.effect.jump_boost.level dummy
scoreboard objectives add es.effect.master_of_the_evil.level dummy
scoreboard objectives add es.effect.resistance.level dummy
scoreboard objectives add es.effect.speed.level dummy
scoreboard objectives add es.effect.strength.level dummy
scoreboard objectives add es.effect.mining_fatigue.level dummy
scoreboard objectives add es.effect.slowness.level dummy
scoreboard objectives add es.effect.weakness.level dummy
scoreboard objectives add es.table_id dummy
scoreboard objectives add es.button_click dummy
scoreboard objectives add es.recipe_book dummy
scoreboard objectives add es.brew_progress dummy
scoreboard objectives add es.blaze dummy
scoreboard objectives add es.selected_effect dummy
scoreboard objectives add es.effect_level dummy
scoreboard objectives add es.owner_id dummy
scoreboard objectives add es.animation dummy
scoreboard objectives add es.player_heads dummy
function #theblackswitch:v2.0/slow_tick/enable
function #theblackswitch:v2.0/easing/enable
function #theblackswitch:v2.0/clear_item/enable
function effect_steal:data_gen/init
