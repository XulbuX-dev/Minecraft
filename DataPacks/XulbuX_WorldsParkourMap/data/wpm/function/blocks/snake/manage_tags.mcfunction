# ACTIVATE / DEACTIVATE / RESET SNAKE
   execute if entity @s[tag=active,tag=reset] run tag @s remove active
   execute if entity @s[tag=reset] at @s if entity @a[distance=..25] run tag @s remove reset
   execute if entity @s[tag=!reset] at @s unless entity @a[distance=..25] run tag @s add reset
   execute if entity @s[tag=!reset] at @s if entity @a[distance=..25,nbt={SelectedItem:{tag:{Tags:["snake_block_spawnegg"]}}}] run tag @s add reset
   execute if entity @s[tag=!active,tag=!reset] at @s if entity @a[distance=..25] run tag @s add active
