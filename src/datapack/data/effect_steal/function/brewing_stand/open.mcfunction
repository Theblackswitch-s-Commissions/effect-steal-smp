execute if entity @e[type=marker,tag=es.brewing_stand_controller,dy=0] run return:
    scoreboard players operation @s es.owner_id = @a[tag=es.opened_brewing_stand,limit=1] tbs.ID

summon marker ~0.5 ~0.5 ~0.5 {Tags:[es.brewing_stand_controller]}



