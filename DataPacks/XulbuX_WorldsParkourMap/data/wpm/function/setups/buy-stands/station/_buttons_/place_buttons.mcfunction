## SUMMON THE INTERACTIONS
# BUTTON UP
   # 90° ANGLES
      execute at @s positioned ~.55 ~1.475 ~-.975 run execute if entity @s[scores={text_rotation=1}] run execute unless entity @e[type=interaction,tag=buy_button_up,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_up"]}
      execute at @s positioned ~.975 ~1.475 ~.55 run execute if entity @s[scores={text_rotation=10}] run execute unless entity @e[type=interaction,tag=buy_button_up,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_up"]}
      execute at @s positioned ~-.55 ~1.475 ~.975 run execute if entity @s[scores={text_rotation=100}] run execute unless entity @e[type=interaction,tag=buy_button_up,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_up"]}
      execute at @s positioned ~-.975 ~1.475 ~-.55 run execute if entity @s[scores={text_rotation=1000}] run execute unless entity @e[type=interaction,tag=buy_button_up,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_up"]}
   # 45° ANGLES
      execute at @s positioned ~.361 ~1.475 ~-1.061 run execute if entity @s[scores={text_rotation=11}] run execute unless entity @e[type=interaction,tag=buy_button_up,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_up"]}
      execute at @s positioned ~1.061 ~1.475 ~.361 run execute if entity @s[scores={text_rotation=110}] run execute unless entity @e[type=interaction,tag=buy_button_up,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_up"]}
      execute at @s positioned ~-.361 ~1.475 ~1.061 run execute if entity @s[scores={text_rotation=1100}] run execute unless entity @e[type=interaction,tag=buy_button_up,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_up"]}
      execute at @s positioned ~-1.061 ~1.475 ~-.361 run execute if entity @s[scores={text_rotation=1001}] run execute unless entity @e[type=interaction,tag=buy_button_up,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_up"]}
# BUTTON DOWN
   # 90° ANGLES
      execute at @s positioned ~.55 ~1.475 ~-.825 run execute if entity @s[scores={text_rotation=1}] run execute unless entity @e[type=interaction,tag=buy_button_down,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_down"]}
      execute at @s positioned ~.825 ~1.475 ~.55 run execute if entity @s[scores={text_rotation=10}] run execute unless entity @e[type=interaction,tag=buy_button_down,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_down"]}
      execute at @s positioned ~-.55 ~1.475 ~.825 run execute if entity @s[scores={text_rotation=100}] run execute unless entity @e[type=interaction,tag=buy_button_down,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_down"]}
      execute at @s positioned ~-.825 ~1.475 ~-.55 run execute if entity @s[scores={text_rotation=1000}] run execute unless entity @e[type=interaction,tag=buy_button_down,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_down"]}
   # 45° ANGLES
      execute at @s positioned ~.211 ~1.475 ~-.911 run execute if entity @s[scores={text_rotation=11}] run execute unless entity @e[type=interaction,tag=buy_button_down,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_down"]}
      execute at @s positioned ~.911 ~1.475 ~.211 run execute if entity @s[scores={text_rotation=110}] run execute unless entity @e[type=interaction,tag=buy_button_down,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_down"]}
      execute at @s positioned ~-.211 ~1.475 ~.911 run execute if entity @s[scores={text_rotation=1100}] run execute unless entity @e[type=interaction,tag=buy_button_down,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_down"]}
      execute at @s positioned ~-.911 ~1.475 ~-.211 run execute if entity @s[scores={text_rotation=1001}] run execute unless entity @e[type=interaction,tag=buy_button_down,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.15f,Tags:["buy_button_down"]}
# BUTTON CONFIRM PURCHASE
   # 90° ANGLES
      execute at @s positioned ~.95 ~1.025 ~.615 run execute if entity @s[scores={text_rotation=1}] run execute unless entity @e[type=interaction,tag=buy_button_confirm,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.95f,Tags:["buy_button_confirm"]}
      execute at @s positioned ~-.615 ~1.025 ~.95 run execute if entity @s[scores={text_rotation=10}] run execute unless entity @e[type=interaction,tag=buy_button_confirm,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.95f,Tags:["buy_button_confirm"]}
      execute at @s positioned ~-.95 ~1.025 ~-.615 run execute if entity @s[scores={text_rotation=100}] run execute unless entity @e[type=interaction,tag=buy_button_confirm,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.95f,Tags:["buy_button_confirm"]}
      execute at @s positioned ~.615 ~1.025 ~-.95 run execute if entity @s[scores={text_rotation=1000}] run execute unless entity @e[type=interaction,tag=buy_button_confirm,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.95f,Tags:["buy_button_confirm"]}
   # 45° ANGLES
      execute at @s positioned ~-.65 ~1.025 ~.215 run execute if entity @s[scores={text_rotation=11}] run execute unless entity @e[type=interaction,tag=buy_button_confirm,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.95f,Tags:["buy_button_confirm"]}
      execute at @s positioned ~-.215 ~1.025 ~-.65 run execute if entity @s[scores={text_rotation=110}] run execute unless entity @e[type=interaction,tag=buy_button_confirm,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.95f,Tags:["buy_button_confirm"]}
      execute at @s positioned ~.65 ~1.025 ~-.215 run execute if entity @s[scores={text_rotation=1100}] run execute unless entity @e[type=interaction,tag=buy_button_confirm,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.95f,Tags:["buy_button_confirm"]}
      execute at @s positioned ~.215 ~1.025 ~.65 run execute if entity @s[scores={text_rotation=1001}] run execute unless entity @e[type=interaction,tag=buy_button_confirm,distance=...001] run summon interaction ~ ~ ~ {height:.15f,width:.95f,Tags:["buy_button_confirm"]}
