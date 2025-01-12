# TELL IF NO PERMISSION
   execute if entity @s[tag=!wpm_op] run tellraw @s ["",{"text":"You do not have permission\nto perform this action!","italic":false,"bold":false,"color":"red"}]

execute if entity @s[tag=wpm_op] run give @s enderman_spawn_egg[enchantment_glint_override=true,custom_data={deleter_spawnegg:1},entity_data={id:"interaction",height:.25f,width:.25f,Rotation:[0f,0f],Invulnerable:1b,Tags:["deleter","new","play_particles"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"DELETER","italic":false,"bold":true,"color":"#FF3A45"}]',lore=['[{"text":"place on or next to a special","italic":false,"bold":false,"color":"#CD2A33"}]','[{"text":"parkour-map block to delete it","italic":false,"bold":false,"color":"#CD2A33"}]']] 1
execute if entity @s[tag=wpm_op] run give @s allay_spawn_egg[enchantment_glint_override=true,custom_data={air_lift_spawnegg:1},entity_data={id:"interaction",height:5f,width:.4f,Rotation:[0f,0f],Invulnerable:1b,Tags:["air_lift","new"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Air Lift","italic":false,"bold":true,"color":"#99CCFF"}]',lore=['[{"text":"An invisible (10 blocks) lift","italic":false,"bold":false,"color":"#66CCFF"}]']] 1
execute if entity @s[tag=wpm_op] run give @s creeper_spawn_egg[enchantment_glint_override=true,custom_data={jump_pad_spawnegg:1},entity_data={id:"interaction",height:1f,width:.4f,Rotation:[0f,0f],Invulnerable:1b,Tags:["jump_pad","new"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Jump Pad","italic":false,"bold":true,"color":"#00CC66"}]',lore=['[{"text":"An invisible jump booster","italic":false,"bold":false,"color":"#66CC99"}]']] 1
execute if entity @s[tag=wpm_op] run give @s elder_guardian_spawn_egg[enchantment_glint_override=true,custom_data={portal1_spawnegg:1},entity_data={id:"interaction",height:2f,width:1.01f,Rotation:[0f,0f],Invulnerable:1b,Tags:["new","portal","portal1"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Portal","italic":false,"bold":true,"color":"blue"},{"text":" 1","italic":false,"bold":false,"color":"gold"}]',lore=['[{"text":"Teleports players to ","italic":false,"bold":false,"color":"#CC33FF"},{"text":"Portal ","italic":false,"bold":true,"color":"yellow"},{"text":"2","italic":false,"bold":true,"color":"gold"}]']] 1
execute if entity @s[tag=wpm_op] run give @s elder_guardian_spawn_egg[enchantment_glint_override=true,custom_data={portal2_spawnegg:1},entity_data={id:"interaction",height:2f,width:1.01f,Rotation:[0f,0f],Invulnerable:1b,Tags:["new","portal","portal2"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Portal","italic":false,"bold":true,"color":"yellow"},{"text":" 2","italic":false,"bold":false,"color":"gold"}]',lore=['[{"text":"Teleports players to ","italic":false,"bold":false,"color":"#CC33FF"},{"text":"Portal ","italic":false,"bold":true,"color":"blue"},{"text":"1","italic":false,"bold":true,"color":"gold"}]']] 1
execute if entity @s[tag=wpm_op] run give @s blaze_spawn_egg[enchantment_glint_override=true,custom_data={reset_button_spawnegg:1},entity_data={id:"interaction",height:0f,width:.25f,Rotation:[0f,0f],Invulnerable:1b,Tags:["new","reset_button"],CustomName:'[{"text":"Reset","bold":true,"color":"gold"}]',CustomNameVisible:1b},custom_name='["",{"text":"Reset Button","italic":false,"bold":true,"color":"gold"}]',lore=['[{"text":"Resets players back to","italic":false,"bold":false,"color":"#D58D17"}]','[{"text":"their last checkpoint","italic":false,"bold":false,"color":"#D58D17"}]']] 1
execute if entity @s[tag=wpm_op] run give @s ender_dragon_spawn_egg[enchantment_glint_override=true,custom_data={fake_portal_spawnegg:1},entity_data={id:"interaction",height:1f,width:1f,Rotation:[0f,0f],Invulnerable:1b,Tags:["fake_portal","new"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Fake Portal","italic":false,"bold":true,"color":"#9900FF"}]',lore=['[{"text":"Places a fake portal","italic":false,"bold":false,"color":"#9966FF"}]','[{"text":"for decoration","italic":false,"bold":false,"color":"#9966FF"}]']] 1
execute if entity @s[tag=wpm_op] run give @s wandering_trader_spawn_egg[enchantment_glint_override=true,custom_data={snake_block_spawnegg:1},entity_data={id:"interaction",height:.25f,width:.25f,Rotation:[0f,0f],Invulnerable:1b,Tags:["new","snake_block"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Snake Block","italic":false,"bold":true,"color":"#2461B4"}]',lore=['[{"text":"Spawns a block that forms","italic":false,"bold":false,"color":"#6699FF"}]','[{"text":"a moving snake with other","italic":false,"bold":false,"color":"#6699FF"}]','[{"text":"such blocks next to it.","italic":false,"bold":false,"color":"#6699FF"}]']] 1
execute if entity @s[tag=wpm_op] run give @s turtle_spawn_egg[enchantment_glint_override=true,custom_data={moving_platform_spawnegg:1},entity_data={id:"interaction",height:1f,width:1f,Rotation:[0f,0f],Invulnerable:1b,Tags:["_moving_platform_","moving_platform","new"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Moving Platform","italic":false,"bold":true,"color":"#00BBE0"}]',lore=['[{"text":"Spawns a platform, which","italic":false,"bold":false,"color":"#44ACDD"}]','[{"text":"moves up and down.","italic":false,"bold":false,"color":"#44ACDD"}]']] 1
execute if entity @s[tag=wpm_op] run give @s panda_spawn_egg[enchantment_glint_override=true,custom_data={display_item_spawnegg:1},entity_data={id:"interaction",height:1.01f,width:1.01f,Rotation:[0f,0f],Invulnerable:1b,Tags:["display_item","new"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Display Item","italic":false,"bold":true,"color":"#ABADCD"},{"text":" "},{"text":"Connector","italic":false,"bold":false,"color":"#7E88EC"}]',lore=['[{"text":"Place within a radius of 1.5 blocks","italic":false,"bold":false,"color":"#5665F0"}]','[{"text":"of an item lying on the ground to","italic":false,"bold":false,"color":"#5665F0"}]','[{"text":"turn it into a display item","italic":false,"bold":false,"color":"#5665F0"}]']] 1
execute if entity @s[tag=wpm_op] run give @s strider_spawn_egg[enchantment_glint_override=true,custom_data={int_lock_spawnegg:1},entity_data={id:"interaction",height:1.01f,width:1.01f,Rotation:[0f,0f],Invulnerable:1b,Tags:["int_lock","new","play_particles","visible"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"VISIBLE ","italic":false,"bold":false,"color":"#7878C0"},{"text":"Interaction ","italic":false,"bold":true,"color":"#FF4853"},{"text":"Lock","italic":false,"bold":false,"color":"#E5182E"}]',lore=['[{"text":"Can be placed on top of (above) functional blocks","italic":false,"bold":false,"color":"#990033"}]','[{"text":"to prevent players from interacting with them","italic":false,"bold":false,"color":"#990033"}]','[{"text":""}]','[{"text":"VISIBLE","italic":false,"bold":true,"color":"#FF6666"},{"text":" "},{"text":"= Says «Locked» on interaction.","italic":false,"bold":false,"color":"#E34354"}]']] 1
execute if entity @s[tag=wpm_op] run give @s strider_spawn_egg[enchantment_glint_override=true,custom_data={int_lock_spawnegg:1},entity_data={id:"interaction",height:1.01f,width:1.01f,Rotation:[0f,0f],Invulnerable:1b,Tags:["int_lock","invisible","new","play_particles"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"INVISIBLE ","italic":false,"bold":false,"color":"#7878C0"},{"text":"Interaction ","italic":false,"bold":true,"color":"#FF4853"},{"text":"Lock","italic":false,"bold":false,"color":"#E5182E"}]',lore=['[{"text":"Can be placed on top of (above) functional blocks","italic":false,"bold":false,"color":"#990033"}]','[{"text":"to prevent players from interacting with them","italic":false,"bold":false,"color":"#990033"}]','[{"text":""}]','[{"text":"INVISIBLE","italic":false,"bold":true,"color":"#FF6666"},{"text":" "},{"text":"= Just blocks the interaction.","italic":false,"bold":false,"color":"#E34354"}]']] 1

execute if entity @s[tag=wpm_op] run give @s light_weighted_pressure_plate[custom_name='["",{"text":"Checkpoint","italic":false,"bold":true,"color":"gold"}]'] 1
execute if entity @s[tag=wpm_op] run give @s warped_pressure_plate[custom_name='["",{"text":"Gamemode","italic":false,"bold":true,"color":"#666699"},{"text":" PARKOUR","italic":false,"bold":false,"color":"#339999"}]'] 1
execute if entity @s[tag=wpm_op] run give @s mangrove_pressure_plate[custom_name='["",{"text":"Gamemode","italic":false,"bold":true,"color":"#666699"},{"text":" RESET","italic":false,"bold":false,"color":"#CC4631"}]'] 1

execute if entity @s[tag=wpm_op] run give @s light[block_state={level:"0"},custom_name='["",{"text":"DeathBlock","italic":false,"bold":true,"color":"dark_red"},{"text":" INVIS.","italic":false,"bold":false,"color":"#666699"}]'] 1
execute if entity @s[tag=wpm_op] run give @s light[block_state={level:"1"},custom_name='["",{"text":"AirLift ","italic":false,"bold":true,"color":"#99CCFF"},{"text":"INTERACTOR","italic":false,"bold":false,"color":"#666699"}]'] 1
execute if entity @s[tag=wpm_op] run give @s light[block_state={level:"2"},custom_name='["",{"text":"JumpPad ","italic":false,"bold":true,"color":"#83FF00"},{"text":"INTERACTOR","italic":false,"bold":false,"color":"#666699"}]'] 1
