execute as @e[type=!#wpm:not_mob] at @s if entity @e[tag=_moving_platform_,distance=..2.5,scores={moving_distance=-1..}] run function wpm:blocks/moving-platform/check_riding-up
execute as @e[tag=riding_platform_up] run function wpm:blocks/moving-platform/move_onto-platform
execute as @e[tag=riding_platform_levitate] run effect give @s levitation infinite 255 true
execute as @e[tag=!riding_platform_levitate] run effect clear @s levitation
