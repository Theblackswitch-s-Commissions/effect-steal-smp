
# Detect the breaking of the block
execute unless block ~ ~ ~ minecraft:barrel run return run function effect_steal:alchemy_table/break

# Select owner
scoreboard players operation #search tbs.ID = @s es.owner_id


# Check for any button clicks and stuff
function effect_steal:alchemy_table/gui/check_input

# Update the gui
function effect_steal:alchemy_table/gui/update

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

