# CHECK FOR DELETE
   execute as @e[type=item,tag=Display_item] at @s if entity @e[type=interaction,tag=DELETER,distance=..1.5] run function wpm:setups/blocks/display-item/delete
# DISPLAY-ITEM  -  SETUP
   execute as @e[type=interaction,tag=Display_item] at @s unless entity @e[type=item,distance=..1.5,tag=!Display_item,limit=1] run function wpm:setups/blocks/display-item/no-item_delete
   execute as @e[type=interaction,tag=Display_item] at @s if entity @e[type=item,distance=..1.5,tag=!Display_item,limit=1] run function wpm:setups/blocks/display-item/setup
