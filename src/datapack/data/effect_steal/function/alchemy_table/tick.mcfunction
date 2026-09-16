
# Detect the breaking of the block
execute unless block ~ ~ ~ minecraft:barrel run return run function effect_steal:alchemy_table/break

# Select owner
scoreboard players operation #search tbs.ID = @s es.owner_id

# Ritual
execute if entity @s[tag=es.has_ritual] run function effect_steal:alchemy_table/ritual/tick

# Check for any incorrectly inserted items
function effect_steal:alchemy_table/gui/check_wrong_items

# Check for any button clicks and recipes
function effect_steal:alchemy_table/gui/check_input

# Handle hoppers below
execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 10000

execute if score #8 tbs.slow_tick matches 1 unless score @s es.brew_progress matches 1..200 run function effect_steal:alchemy_table/automation

# Update the gui if needed
execute:
    raw execute if slots block ~ ~ ~ effect_steal:alchemy_table/has_faulty_slot run return run function effect_steal:alchemy_table/gui/update
    execute if score @s es.button_click matches 1.. run return run function effect_steal:alchemy_table/gui/update

# Handle gui closing
execute if score @s es.owner_id matches 0.. if block ~ ~ ~ minecraft:barrel[open=false] run function effect_steal:alchemy_table/handle_owner/reset_owner

# -------------------------------
#  Particle effects                            
# -------------------------------

execute if score #5 tbs.random_delay = #5 tbs.slow_tick:
    execute if predicate theblackswitch:__version__/__patch__/rand/50 run return fail

    particle minecraft:smoke ^-0.30 ^1.1 ^-0.30 0.05 0.1 0.05 0 2

execute if score #10 tbs.random_delay = #10 tbs.slow_tick:
    execute if predicate theblackswitch:__version__/__patch__/rand/50 run return fail

    particle minecraft:bubble_pop ^0.30 ^0.9 ^-0.25 0 0 0 0 1
    playsound minecraft:block.bubble_column.bubble_pop block @a ~ ~ ~ 0.5 0.8

execute if score #60 tbs.random_delay = #60 tbs.slow_tick:
    execute if predicate theblackswitch:__version__/__patch__/rand/50 run return fail

    particle minecraft:flame ^-0.30 ^1.1 ^-0.30 0 0 0 0 1
    playsound minecraft:block.fire.ambient block @a ~ ~ ~ 0.5 1.2

