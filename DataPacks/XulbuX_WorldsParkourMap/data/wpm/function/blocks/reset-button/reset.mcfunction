execute at @s unless entity @s[tag=reset_done] if entity @a[distance=..3] run function wpm:blocks/reset-button/kill
execute at @s unless entity @s[tag=reset_done] run particle wax_on ~ ~ ~ 1 1 1 2 200 force @a
execute unless entity @s[tag=reset_done] run tag @s add reset_done
