# TELL IF NO PERMISSION
   execute if entity @s[tag=!wpm_op] run tellraw @s ["",{"text":"You do not have permission\nto perform this action!","color":"red"}]

execute if entity @s[tag=wpm_op] run give @s snowball[custom_name='{"text":"Throwable Pig","color":"white"}',custom_model_data=3473,custom_data={pig:1}] 1
