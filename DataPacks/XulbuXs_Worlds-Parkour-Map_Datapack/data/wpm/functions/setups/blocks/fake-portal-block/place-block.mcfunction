setblock ~ ~ ~ end_gateway
data merge block ~ ~ ~ {Age:-9223372036854775808L}
execute if block ~ ~ ~ end_gateway run kill @s

execute if entity @s[tag=NEW] run tag @s remove NEW
