# DEFINE MIN / MAX BUY-AMOUNT
   execute as @p if entity @s[scores={buy_amount=..-1}] run scoreboard players set @s buy_amount 0
   execute as @p if entity @s[scores={buy_amount=21..}] run scoreboard players set @s buy_amount 20
# CALCULATE VALUES
   scoreboard players operation @s buy_price = @s single_buy_price
   scoreboard players operation @s buy_price *= @p buy_amount

# MODIFY THE TEXT-DISPLAY
   execute if entity @s[tag=text2_freeze_bomb,scores={show_buy_values=1}] run execute if score @s buy_price < @p parkour_players_money run data merge entity @s {text:'["",{"text":" Buy this special ","color":"gold"},{"text":"Race-Item","bold":true,"color":"yellow"},{"text":"! ","color":"gold"},"\\n",{"text":" >> ","color":"#5E64FF"},{"text":"Costs for one = ","color":"#7E82FF"},{"text":"$","color":"green"},{"score":{"name":"@s","objective":"single_buy_price"},"color":"green"},"\\n\\n",{"text":" ","color":"#DDDDDD"},{"text":"[","bold":true,"color":"dark_gray"},{"text":"▲","bold":true,"color":"#43FFAA"},{"text":"▼","bold":true,"color":"#FF004D"},{"text":"]","bold":true,"color":"dark_gray"},{"text":" ","bold":true},{"text":"Amount to buy: ","color":"#DDDDDD"},{"score":{"name":"@p","objective":"buy_amount"},"color":"light_purple"},{"text":"pcs","color":"#D000D0"},"\\n",{"text":"         Total costs: ","color":"#DDDDDD"},{"text":"$","color":"#D0A600"},{"score":{"name":"@s","objective":"buy_price"},"color":"#FFCC00"},{"text":" "},"\\n\\n",{"text":"                     [","color":"#D78523"},{"text":"PURCHASE","bold":true,"color":"#FF8B00"},{"text":"] ","color":"#D78523"}]'}
   execute if entity @s[tag=text2_freeze_bomb,scores={show_buy_values=1}] run execute if score @s buy_price > @p parkour_players_money run data merge entity @s {text:'["",{"text":" Buy this special ","color":"gold"},{"text":"Race-Item","bold":true,"color":"yellow"},{"text":"! ","color":"gold"},"\\n",{"text":" >> ","color":"#5E64FF"},{"text":"Costs for one = ","color":"#7E82FF"},{"text":"$","color":"green"},{"score":{"name":"@s","objective":"single_buy_price"},"color":"green"},"\\n\\n",{"text":" ","color":"#DDDDDD"},{"text":"[","bold":true,"color":"dark_gray"},{"text":"▲","bold":true,"color":"#43FFAA"},{"text":"▼","bold":true,"color":"#FF004D"},{"text":"]","bold":true,"color":"dark_gray"},{"text":" ","bold":true},{"text":"Amount to buy: ","color":"#DDDDDD"},{"score":{"name":"@p","objective":"buy_amount"},"color":"red"},{"text":"pcs","color":"#D54848"},"\\n",{"text":"         Total costs: ","color":"#DDDDDD"},{"text":"$","color":"#D54848"},{"score":{"name":"@s","objective":"buy_price"},"color":"red"},{"text":" "},"\\n",{"text":" >> ","color":"#CC3300"},{"text":"not enough money! ","color":"#FF0000"},"\\n",{"text":"                     [","color":"#6C0000"},{"text":"PURCHASE","bold":true,"color":"#8C0000"},{"text":"] ","color":"#6C0000"}]'}
   execute if entity @s[tag=text2_freeze_bomb,scores={show_buy_values=1}] run execute if score @p buy_amount matches 0 run data merge entity @s {text:'["",{"text":" Buy this special ","color":"gold"},{"text":"Race-Item","bold":true,"color":"yellow"},{"text":"! ","color":"gold"},"\\n",{"text":" >> ","color":"#5E64FF"},{"text":"Costs for one = ","color":"#7E82FF"},{"text":"$","color":"green"},{"score":{"name":"@s","objective":"single_buy_price"},"color":"green"},"\\n\\n",{"text":" ","color":"#DDDDDD"},{"text":"[","bold":true,"color":"dark_gray"},{"text":"▲","bold":true,"color":"#43FFAA"},{"text":"▼","bold":true,"color":"#FF004D"},{"text":"]","bold":true,"color":"dark_gray"},{"text":" ","bold":true},{"text":"Amount to buy: ","color":"#DDDDDD"},{"score":{"name":"@p","objective":"buy_amount"},"color":"light_purple"},{"text":"pcs","color":"#D000D0"},"\\n",{"text":"         Total costs: ","color":"#DDDDDD"},{"text":"$","color":"#D0A600"},{"score":{"name":"@s","objective":"buy_price"},"color":"#FFCC00"},{"text":" "},"\\n\\n",{"text":"                     [","color":"#7F603D"},{"text":"PURCHASE","bold":true,"color":"#996E3C"},{"text":"] ","color":"#7F603D"}]'}
   execute if entity @s[tag=text2_freeze_bomb,scores={show_buy_values=0}] run data merge entity @s {text:'["",{"text":" Buy this special ","color":"gold"},{"text":"Race-Item","bold":true,"color":"yellow"},{"text":"! ","color":"gold"},"\\n",{"text":" >> ","color":"#5E64FF"},{"text":"Costs for one = ","color":"#7E82FF"},{"text":"$","color":"green"},{"score":{"name":"@s","objective":"single_buy_price"},"color":"green"},"\\n\\n",{"text":" ","color":"#DDDDDD"},{"text":"[","bold":true,"color":"dark_gray"},{"text":"▲","bold":true,"color":"#999999"},{"text":"▼","bold":true,"color":"#777777"},{"text":"]","bold":true,"color":"dark_gray"},{"text":" ","bold":true},{"text":"Amount to buy: ","color":"#DDDDDD"},{"text":"·····","color":"#777777"},{"text":"pcs","color":"dark_gray"},"\\n",{"text":"         Total costs: ","color":"#DDDDDD"},{"text":"$","color":"dark_gray"},{"text":"·····","color":"#777777"},{"text":" "},"\\n\\n",{"text":"                     [","color":"dark_gray"},{"text":"PURCHASE","bold":true,"color":"#777777"},{"text":"] ","color":"dark_gray"}]'}
