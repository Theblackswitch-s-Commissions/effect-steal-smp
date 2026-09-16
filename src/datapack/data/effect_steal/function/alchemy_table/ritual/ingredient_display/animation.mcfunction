


execute unless items entity @s container.0 * run return fail
execute if entity @s[tag=es.ritual_animation] run return fail

execute unless score @s es.animation matches 0.. run scoreboard players set @s es.animation 0

execute if score @s es.animation matches 0:
    data merge storage theblackswitch:easing {x:0,y:-0.125,z:0,duration:80,yaw:0,pitch:0,ease:"ease_in_out"}
    function #theblackswitch:__version__/easing/init


execute if score @s es.animation matches 80:
    data merge storage theblackswitch:easing {x:0,y:0.125,z:0,duration:80,yaw:0,pitch:0,ease:"ease_in_out"}
    function #theblackswitch:__version__/easing/init

scoreboard players add @s es.animation 1
execute if score @s es.animation matches 161 run scoreboard players set @s es.animation 0