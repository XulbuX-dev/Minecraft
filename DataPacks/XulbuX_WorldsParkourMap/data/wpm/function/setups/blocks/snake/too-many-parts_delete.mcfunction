execute at @s run tellraw @a[distance=..6] ["",{"text":"TOO MANY SNAKE-PART CONNECTIONS!","italic":false,"bold":true,"color":"red"},"\n",{"text":">","italic":false,"bold":false,"color":"dark_red"},{"text":" Can only connect to one already\n  placed snake part, not more.","italic":false,"bold":false,"color":"#CC0000"}]
execute at @s run particle dust_color_transition{from_color:[.9,.15,.3],to_color:[.3,.1,.1],scale:1} ~ ~.5 ~ .3 .3 .3 .1 50 force @a
kill @s
