# TELL IF NO PERMISSION
    execute if entity @s[tag=!wpm_op] run tellraw @s ["",{"text":"You do not have permission to perform this action!","italic":false,"bold":false,"color":"red"}]


################################ BUILDING ITEMS ##############################
execute if score @s _get_wpm_item_id matches 1000000 if entity @s[tag=wpm_op] run function wpm:map_funcs/get_items/all_building

execute if score @s _get_wpm_item_id matches 1000001 if entity @s[tag=wpm_op] run give @s enderman_spawn_egg[enchantment_glint_override=true,custom_data={deleter_spawnegg:1},entity_data={id:"interaction",height:.25f,width:.25f,Rotation:[0f,0f],Invulnerable:1b,Tags:["deleter","new","play_particles"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"DELETER","italic":false,"bold":true,"color":"#FF3A45"}]',lore=['[{"text":"place on or next to a special","italic":false,"bold":false,"color":"#CD2A33"}]','[{"text":"parkour-map block to delete it","italic":false,"bold":false,"color":"#CD2A33"}]']] 1
execute if score @s _get_wpm_item_id matches 1000002 if entity @s[tag=wpm_op] run give @s allay_spawn_egg[enchantment_glint_override=true,custom_data={air_lift_spawnegg:1},entity_data={id:"interaction",height:5f,width:.4f,Rotation:[0f,0f],Invulnerable:1b,Tags:["air_lift","new"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Air Lift","italic":false,"bold":true,"color":"#99CCFF"}]',lore=['[{"text":"An invisible (10 blocks) lift","italic":false,"bold":false,"color":"#66CCFF"}]']] 1
execute if score @s _get_wpm_item_id matches 1000003 if entity @s[tag=wpm_op] run give @s creeper_spawn_egg[enchantment_glint_override=true,custom_data={jump_pad_spawnegg:1},entity_data={id:"interaction",height:1f,width:.4f,Rotation:[0f,0f],Invulnerable:1b,Tags:["jump_pad","new"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Jump Pad","italic":false,"bold":true,"color":"#00CC66"}]',lore=['[{"text":"An invisible jump booster","italic":false,"bold":false,"color":"#66CC99"}]']] 1
execute if score @s _get_wpm_item_id matches 1000004 if entity @s[tag=wpm_op] run give @s elder_guardian_spawn_egg[enchantment_glint_override=true,custom_data={portal1_spawnegg:1},entity_data={id:"interaction",height:2f,width:1.01f,Rotation:[0f,0f],Invulnerable:1b,Tags:["new","portal","portal1"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Portal","italic":false,"bold":true,"color":"#6065FF"},{"text":" 1","italic":false,"bold":true,"color":"#9560FF"}]',lore=['[{"text":"Teleports players to ","italic":false,"bold":false,"color":"#CC33FF"},{"text":"Portal ","italic":false,"bold":true,"color":"#FF8060"},{"text":"2","italic":false,"bold":true,"color":"#FF6060"}]']] 1
execute if score @s _get_wpm_item_id matches 1000005 if entity @s[tag=wpm_op] run give @s elder_guardian_spawn_egg[enchantment_glint_override=true,custom_data={portal2_spawnegg:1},entity_data={id:"interaction",height:2f,width:1.01f,Rotation:[0f,0f],Invulnerable:1b,Tags:["new","portal","portal2"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Portal","italic":false,"bold":true,"color":"#FF8060"},{"text":" 2","italic":false,"bold":true,"color":"#FF6060"}]',lore=['[{"text":"Teleports players to ","italic":false,"bold":false,"color":"#CC33FF"},{"text":"Portal ","italic":false,"bold":true,"color":"#6065FF"},{"text":"1","italic":false,"bold":true,"color":"#9560FF"}]']] 1
execute if score @s _get_wpm_item_id matches 1000006 if entity @s[tag=wpm_op] run give @s blaze_spawn_egg[enchantment_glint_override=true,custom_data={reset_button_spawnegg:1},entity_data={id:"interaction",height:0f,width:.25f,Rotation:[0f,0f],Invulnerable:1b,Tags:["new","reset_button"],CustomName:'[{"text":"Reset","bold":true,"color":"gold"}]',CustomNameVisible:1b},custom_name='["",{"text":"Reset Button","italic":false,"bold":true,"color":"gold"}]',lore=['[{"text":"Resets players back to","italic":false,"bold":false,"color":"#D58D17"}]','[{"text":"their last checkpoint","italic":false,"bold":false,"color":"#D58D17"}]']] 1
execute if score @s _get_wpm_item_id matches 1000007 if entity @s[tag=wpm_op] run give @s ender_dragon_spawn_egg[enchantment_glint_override=true,custom_data={fake_portal_spawnegg:1},entity_data={id:"interaction",height:1f,width:1f,Rotation:[0f,0f],Invulnerable:1b,Tags:["fake_portal","new"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Fake Portal","italic":false,"bold":true,"color":"#9900FF"}]',lore=['[{"text":"Places a fake portal","italic":false,"bold":false,"color":"#9966FF"}]','[{"text":"for decoration","italic":false,"bold":false,"color":"#9966FF"}]']] 1
execute if score @s _get_wpm_item_id matches 1000008 if entity @s[tag=wpm_op] run give @s wandering_trader_spawn_egg[enchantment_glint_override=true,custom_data={snake_block_spawnegg:1},entity_data={id:"interaction",height:.25f,width:.25f,Rotation:[0f,0f],Invulnerable:1b,Tags:["new","snake_block"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Snake Block","italic":false,"bold":true,"color":"#2461B4"}]',lore=['[{"text":"Spawns a block that forms","italic":false,"bold":false,"color":"#6699FF"}]','[{"text":"a moving snake with other","italic":false,"bold":false,"color":"#6699FF"}]','[{"text":"such blocks next to it.","italic":false,"bold":false,"color":"#6699FF"}]']] 1
execute if score @s _get_wpm_item_id matches 1000009 if entity @s[tag=wpm_op] run give @s turtle_spawn_egg[enchantment_glint_override=true,custom_data={moving_platform_spawnegg:1},entity_data={id:"interaction",height:1f,width:1f,Rotation:[0f,0f],Invulnerable:1b,Tags:["_moving_platform_","moving_platform","new"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Moving Platform","italic":false,"bold":true,"color":"#00BBE0"}]',lore=['[{"text":"Spawns a platform, which","italic":false,"bold":false,"color":"#44ACDD"}]','[{"text":"moves up and down.","italic":false,"bold":false,"color":"#44ACDD"}]']] 1
execute if score @s _get_wpm_item_id matches 1000010 if entity @s[tag=wpm_op] run give @s panda_spawn_egg[enchantment_glint_override=true,custom_data={display_item_spawnegg:1},entity_data={id:"interaction",height:1.01f,width:1.01f,Rotation:[0f,0f],Invulnerable:1b,Tags:["display_item","new"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"Display Item","italic":false,"bold":true,"color":"#ABADCD"},{"text":" "},{"text":"Connector","italic":false,"bold":false,"color":"#7E88EC"}]',lore=['[{"text":"Place within a radius of 1.5 blocks","italic":false,"bold":false,"color":"#5665F0"}]','[{"text":"of an item lying on the ground to","italic":false,"bold":false,"color":"#5665F0"}]','[{"text":"turn it into a display item","italic":false,"bold":false,"color":"#5665F0"}]']] 1
execute if score @s _get_wpm_item_id matches 1000011 if entity @s[tag=wpm_op] run give @s strider_spawn_egg[enchantment_glint_override=true,custom_data={int_lock_spawnegg:1},entity_data={id:"interaction",height:1.01f,width:1.01f,Rotation:[0f,0f],Invulnerable:1b,Tags:["int_lock","new","play_particles","visible"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"VISIBLE ","italic":false,"bold":false,"color":"#7878C0"},{"text":"Interaction ","italic":false,"bold":true,"color":"#FF4853"},{"text":"Lock","italic":false,"bold":false,"color":"#E5182E"}]',lore=['[{"text":"Can be placed on top of (above) functional blocks","italic":false,"bold":false,"color":"#990033"}]','[{"text":"to prevent players from interacting with them","italic":false,"bold":false,"color":"#990033"}]','[{"text":""}]','[{"text":"VISIBLE","italic":false,"bold":true,"color":"#FF6666"},{"text":" "},{"text":"= Says «Locked» on interaction.","italic":false,"bold":false,"color":"#E34354"}]']] 1
execute if score @s _get_wpm_item_id matches 1000012 if entity @s[tag=wpm_op] run give @s strider_spawn_egg[enchantment_glint_override=true,custom_data={int_lock_spawnegg:1},entity_data={id:"interaction",height:1.01f,width:1.01f,Rotation:[0f,0f],Invulnerable:1b,Tags:["int_lock","invisible","new","play_particles"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"INVISIBLE ","italic":false,"bold":false,"color":"#7878C0"},{"text":"Interaction ","italic":false,"bold":true,"color":"#FF4853"},{"text":"Lock","italic":false,"bold":false,"color":"#E5182E"}]',lore=['[{"text":"Can be placed on top of (above) functional blocks","italic":false,"bold":false,"color":"#990033"}]','[{"text":"to prevent players from interacting with them","italic":false,"bold":false,"color":"#990033"}]','[{"text":""}]','[{"text":"INVISIBLE","italic":false,"bold":true,"color":"#FF6666"},{"text":" "},{"text":"= Just blocks the interaction.","italic":false,"bold":false,"color":"#E34354"}]']] 1

execute if score @s _get_wpm_item_id matches 1000013 if entity @s[tag=wpm_op] run give @s light_weighted_pressure_plate[custom_name='["",{"text":"Checkpoint","italic":false,"bold":true,"color":"gold"}]'] 1
execute if score @s _get_wpm_item_id matches 1000014 if entity @s[tag=wpm_op] run give @s warped_pressure_plate[custom_name='["",{"text":"Gamemode","italic":false,"bold":true,"color":"#666699"},{"text":" PARKOUR","italic":false,"bold":false,"color":"#339999"}]'] 1
execute if score @s _get_wpm_item_id matches 1000015 if entity @s[tag=wpm_op] run give @s mangrove_pressure_plate[custom_name='["",{"text":"Gamemode","italic":false,"bold":true,"color":"#666699"},{"text":" RESET","italic":false,"bold":false,"color":"#CC4631"}]'] 1

execute if score @s _get_wpm_item_id matches 1000016 if entity @s[tag=wpm_op] run give @s light[block_state={level:"0"},custom_name='["",{"text":"DeathBlock","italic":false,"bold":true,"color":"dark_red"},{"text":" INVIS.","italic":false,"bold":false,"color":"#666699"}]'] 1
execute if score @s _get_wpm_item_id matches 1000017 if entity @s[tag=wpm_op] run give @s light[block_state={level:"1"},custom_name='["",{"text":"AirLift ","italic":false,"bold":true,"color":"#99CCFF"},{"text":"INTERACTOR","italic":false,"bold":false,"color":"#666699"}]'] 1
execute if score @s _get_wpm_item_id matches 1000018 if entity @s[tag=wpm_op] run give @s light[block_state={level:"2"},custom_name='["",{"text":"JumpPad ","italic":false,"bold":true,"color":"#83FF00"},{"text":"INTERACTOR","italic":false,"bold":false,"color":"#666699"}]'] 1


################################ BUY STATIONS ##############################
execute if score @s _get_wpm_item_id matches 2000000 if entity @s[tag=wpm_op] run function wpm:map_funcs/get_items/all_buy-stations

execute if score @s _get_wpm_item_id matches 2000001 if entity @s[tag=wpm_op] run give @s magma_cube_spawn_egg[enchantment_glint_override=true,custom_data={buy_station_spawnegg:1},entity_data={id:"interaction",height:0f,width:1f,Rotation:[0f,0f],Invulnerable:1b,Tags:["buy_freeze_bomb","buy_station","new"],CustomName:'[{"text":""}]',CustomNameVisible:0b},custom_name='["",{"text":"BUY STATION:","italic":false,"bold":true,"color":"#F7E83B"},{"text":" Freeze Bomb","italic":false,"bold":false,"color":"aqua"}]',lore=['[{"text":"A station for players","italic":false,"bold":false,"color":"#CEC344"}]','[{"text":"to buy this item   ⤴","italic":false,"bold":false,"color":"#CEC344"}]']] 1


################################ RACE ITEMS ##############################
execute if score @s _get_wpm_item_id matches 3000000 if entity @s[tag=wpm_op] run function wpm:map_funcs/get_items/all_raceitems

execute if score @s _get_wpm_item_id matches 3000001 if entity @s[tag=wpm_op] run give @s red_candle[custom_model_data=2560001,enchantments={levels:{infinity:1},show_in_tooltip:false},unbreakable={show_in_tooltip:false},custom_data={slap_stick:1},attribute_modifiers={modifiers:[{type:attack_damage,amount:-1,operation:add_value,id:"4402341421836"}],show_in_tooltip:false},custom_name='["",{"text":"SLAP STICK","italic":false,"bold":false,"color":"#FFCC00"},{"text":" [","italic":false,"bold":false,"color":"#BBBBBB"},{"text":"ᴀᴄᴛɪᴠᴇ","italic":false,"bold":false,"color":"#66CC66"},{"text":"][","italic":false,"bold":false,"color":"#BBBBBB"},{"text":"INACTIVE","italic":false,"bold":true,"color":"#FF6666"},{"text":"]","italic":false,"bold":false,"color":"#BBBBBB"}]',lore=['[{"text":"If active:","italic":false,"bold":true,"color":"#888888"},{"text":" gives your opponent","italic":false,"bold":false,"color":"#888888"}]','[{"text":"  → ","italic":false,"bold":false,"color":"#888888"},{"text":"knockback","italic":false,"bold":false,"color":"dark_purple"},{"text":" but still ","italic":false,"bold":false,"color":"#888888"},{"text":"0 damage","italic":false,"bold":false,"color":"dark_purple"},{"text":"","italic":false,"bold":false,"color":"dark_purple"}]','[{"text":"","italic":false,"bold":false,"color":"dark_purple"}]','[{"text":"‹< active every ","italic":false,"bold":false,"color":"gray"},{"text":"20s","italic":false,"bold":false,"color":"light_purple"},{"text":" for ","italic":false,"bold":false},{"text":"10s","italic":false,"bold":false,"color":"light_purple"},{"text":" >›","italic":false,"bold":false}]']] 1
execute if score @s _get_wpm_item_id matches 3000002 if entity @s[tag=wpm_op] run give @s golden_shovel[custom_model_data=2560001,damage=12,attribute_modifiers={modifiers:[{type:attack_damage,amount:7.5,operation:add_value,id:"5395037269038"}],show_in_tooltip:false},custom_name='["",{"text":"THROW ","italic":false,"bold":true,"color":"#FFCC00"},{"text":"Shovel","italic":false,"bold":false}]',lore=['[{"text":"It will throw your opponent","italic":false,"bold":false,"color":"gold"}]','[{"text":"pretty far from his path.","italic":false,"bold":false,"color":"gold"},{"text":"","italic":false,"bold":false,"color":"dark_purple"}]','[{"text":"","italic":false,"bold":false,"color":"dark_purple"}]','[{"text":"〚10 uses before it breaks〛","italic":false,"bold":false,"color":"blue"}]'],enchantments={levels:{knockback:4},show_in_tooltip:false}] 1
execute if score @s _get_wpm_item_id matches 3000003 if entity @s[tag=wpm_op] run give @s bow[custom_model_data=2560001,unbreakable={show_in_tooltip:false},custom_name='["",{"text":"Arrow","italic":false,"bold":true,"color":"#99CCCC"},{"text":" Launcher","italic":false,"bold":false}]',lore=['[{"text":"Launches arrows ","italic":false,"bold":false,"color":"#6699CC"},{"text":"pretty far","italic":false,"bold":false,"color":"dark_purple"},{"text":" and","italic":false,"bold":false,"color":"#6699CC"}]','[{"text":"in addition, ","italic":false,"bold":false,"color":"#6699CC"},{"text":"throws the hit player","italic":false,"bold":false,"color":"light_purple"}]'],enchantments={levels:{quick_charge:255},show_in_tooltip:false}] 1
execute if score @s _get_wpm_item_id matches 3000004 if entity @s[tag=wpm_op] run give @s warped_fungus_on_a_stick[custom_model_data=2560001,unbreakable={show_in_tooltip:false},damage=0,custom_data={homing_missile_launcher:1},custom_name='["",{"text":"HOMING","italic":false,"bold":false,"color":"#FF6633"},{"text":" ","italic":false,"bold":false,"color":"#669999"},{"text":"Missile-Launcher","italic":false,"bold":true,"color":"#26D8A8"}]',lore=['[{"text":"Launches a ","italic":false,"bold":false,"color":"#66CCCC"},{"text":"FUNGUS-MISSILE","italic":false,"bold":false,"color":"#00CCCC"},{"text":"","italic":false,"bold":false,"color":"dark_purple"}]','[{"text":"when right-clicked.","italic":false,"bold":false,"color":"#66CCCC"}]','[{"text":"The ","italic":false,"bold":false,"color":"#66CCCC"},{"text":"MISSILE","italic":false,"bold":false,"color":"#00CCCC"},{"text":" will fly in the","italic":false,"bold":false,"color":"#66CCCC"}]','[{"text":"direction you\'re looking and","italic":false,"bold":false,"color":"#66CCCC"}]','[{"text":"start ","italic":false,"bold":false,"color":"#66CCCC"},{"text":"HOMING","italic":false,"bold":false,"color":"#00CCCC"},{"text":" an entity when","italic":false,"bold":false,"color":"#66CCCC"}]','[{"text":"it ","italic":false,"bold":false,"color":"#66CCCC"},{"text":"COMES CLOSE ENOUGH","italic":false,"bold":false,"color":"#00CCCC"},{"text":" to one.","italic":false,"bold":false},{"text":"","italic":false,"bold":false,"color":"dark_purple"}]','[{"text":"","italic":false,"bold":false,"color":"dark_purple"}]','[{"text":"Much Damage","italic":false,"bold":false,"color":"#6699FF"}]'],enchantments={levels:{infinity:1},show_in_tooltip:false}] 1
execute if score @s _get_wpm_item_id matches 3000005 if entity @s[tag=wpm_op] run give @s snowball[custom_model_data=2560001,enchantments={levels:{infinity:1},show_in_tooltip:false},custom_data={freeze_bomb:1},custom_name='["",{"text":"Freeze Bomb","italic":false,"bold":true,"color":"aqua"}]',lore=['[{"text":"Freezes all entities in","italic":false,"bold":false,"color":"#CCFFFF"}]','[{"text":"a radius of 5 blocks to","italic":false,"bold":false,"color":"#CCFFFF"}]','[{"text":"the ","italic":false,"bold":false,"color":"#CCFFFF"},{"text":"Freeze Bomb","italic":false,"bold":false,"color":"aqua"},{"text":".","italic":false,"bold":false},{"text":"","italic":false,"bold":false,"color":"dark_purple"}]','[{"text":"","italic":false,"bold":false,"color":"dark_purple"}]','[{"text":"No Damage","italic":false,"bold":false,"color":"#6699FF"},{"text":"","italic":false,"bold":false,"color":"dark_purple"}]','[{"text":"10s Freezing","italic":false,"bold":false,"color":"#66CCFF"}]']] 1
execute if score @s _get_wpm_item_id matches 3000006 if entity @s[tag=wpm_op] run give @s mooshroom_spawn_egg[custom_model_data=2560001,can_place_on={predicates:[{blocks:"#wpm:full_blocks"},{blocks:"#trapdoors",state:{half:"top",open:"false"}},{blocks:"#slabs",state:{type:"double"}},{blocks:"#stairs",state:{half:"top"}},{blocks:"#slabs",state:{type:"top"}}],show_in_tooltip:false},entity_data={id:"interaction",height:1f,width:1f,Invulnerable:1b,Tags:["landmine"],CustomName:'[{"text":"Landmine","color":"red","bold":true}]',CustomName:'[{"text":""}]',CustomNameVisible:0b},enchantments={levels:{infinity:1},show_in_tooltip:false},custom_name='["",{"text":"Landmine","italic":false,"bold":true,"color":"red"}]',lore=['[{"text":"Explodes on every ","italic":false,"bold":false,"color":"#CC3333"},{"text":"mob","italic":false,"bold":false,"color":"#FF6666"}]','[{"text":"and player","italic":false,"bold":false,"color":"#FF6666"},{"text":" ","italic":false,"bold":false,"color":"#CC3333"},{"text":"except you","italic":false,"bold":false,"color":"#FF0033"}]','[{"text":"that comes in a ","italic":false,"bold":false,"color":"#CC3333"},{"text":"radius","italic":false,"bold":false,"color":"#FF6666"}]','[{"text":"of 1 block","italic":false,"bold":false,"color":"#FF6666"},{"text":" to the mine","italic":false,"bold":false,"color":"#CC3333"}]','[{"text":""}]','[{"text":"Much Damage","italic":false,"bold":false,"color":"#FF9966"}]','[{"text":"Infinite Life Time","italic":false,"bold":false,"color":"#FF9900"}]','[{"text":""}]','[{"text":"Can be placed on:","italic":false,"bold":false,"color":"#BBBBBB"},{"text":"","italic":false,"bold":false,"color":"dark_purple"}]','[{"text":"All Full Blocks","italic":false,"bold":false,"color":"#666666"}]']] 1


# CHECK INVALID ID
    execute if score @s _get_wpm_item_id matches 1000000..1000018 run tag @s add id_found
    execute if score @s _get_wpm_item_id matches 2000000..2000001 run tag @s add id_found
    execute if score @s _get_wpm_item_id matches 3000000..3000006 run tag @s add id_found
    # ANNOUNCE FAILED ITEM-RESOLVE
        execute unless entity @s[tag=id_found] run function wpm:map_funcs/get_items/by_id/announce_no-id

# RESET GET-ITEM-BY-ID
    function wpm:map_funcs/get_items/by_id/reset_get-item
