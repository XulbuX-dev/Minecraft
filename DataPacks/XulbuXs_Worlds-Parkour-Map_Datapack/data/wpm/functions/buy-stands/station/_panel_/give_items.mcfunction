# FREEZE-BOMB
   execute as @s[tag=Purchase_FreezeBomb] unless entity @s[scores={Items_to_purchase=..0}] run give @s snowball{Enchantments:[{id:"infinity",lvl:1}],HideFlags:1,display:{Name:'[{"text":"Freeze Bomb","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"Freezes all entities in","italic":false,"color":"#ccffff"}]','[{"text":"a radius of 5 blocks to","italic":false,"color":"#ccffff"}]','[{"text":"the ","italic":false,"color":"#ccffff"},{"text":"Freeze Bomb","color":"aqua"},{"text":"."},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"No Damage","italic":false,"color":"#6699ff"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"10s Freezing","italic":false,"color":"#66ccff"}]']}} 1
   execute as @s[tag=Purchase_FreezeBomb] unless entity @s[scores={Items_to_purchase=..0}] run scoreboard players remove @s Items_to_purchase 1
# LANDMINE
   # ...
execute unless entity @s[scores={Items_to_purchase=..0}] run function wpm:buy-stands/station/_panel_/give_items
