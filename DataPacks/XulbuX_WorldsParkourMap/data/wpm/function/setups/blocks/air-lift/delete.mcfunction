execute at @s run tellraw @a[distance=..6] ["",{"text":"Air Lift","italic":false,"bold":true,"color":"#99CCFF"},{"text":" was removed.","italic":false,"bold":false,"color":"green"}]
execute at @s run particle dust_color_transition{from_color:[.3,.9,.15],to_color:[.2,.3,.2],scale:1} ~ ~.5 ~ .3 .3 .3 .1 50 force @a
execute at @s if block ~ ~ ~ light[level=1] run setblock ~ ~ ~ air
kill @s
