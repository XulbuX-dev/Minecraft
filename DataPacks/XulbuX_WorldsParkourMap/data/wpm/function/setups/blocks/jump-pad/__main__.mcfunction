# CHECK FOR DELETE
   execute as @e[type=interaction,nbt={Tags:["jump_pad"]}] at @s run execute if entity @e[type=interaction,tag=deleter,distance=..1.5] run function wpm:setups/blocks/jump-pad/delete
# JUMP-PAD  -  SETUP
   execute as @e[type=interaction,nbt={Tags:["jump_pad"]},tag=new] run function wpm:setups/blocks/jump-pad/setup
