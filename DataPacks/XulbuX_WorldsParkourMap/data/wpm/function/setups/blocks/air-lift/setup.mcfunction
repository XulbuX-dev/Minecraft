execute at @s unless entity @s[scores={air_lift=1}] run setblock ~ ~ ~ light[level=1] destroy
execute at @s unless entity @s[scores={air_lift=1}] run scoreboard players set @s air_lift 1
execute at @s if entity @s[scores={air_lift=1}] run execute unless block ~ ~ ~ light[level=1] run kill @s

execute if entity @s[tag=new] run tag @s remove new
