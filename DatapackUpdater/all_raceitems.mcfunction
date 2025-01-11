# TELL IF NO PERMISSION
   execute if entity @s[tag=!wpm_OP] run tellraw @s ["",{"text":"You do not have permission\nto perform this action!","color":"red"}]

execute if entity @s[tag=wpm_OP] run give @s red_candle{CustomModelData:2560001,Enchantments:[{id:"infinity",lvl:1}],Unbreakable:1,Tags:["SlapStick"],EntityTag:{Invisible:1b},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-1,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123710,28282,1024,-56564]}],display:{Name:'[{"text":"SLAP STICK","color":"#FFCC00"},{"text":" [","color":"#BBBBBB"},{"text":"ᴀᴄᴛɪᴠᴇ","color":"#66CC66"},{"text":"][","color":"#BBBBBB"},{"text":"INACTIVE","color":"#FF6666","bold":true},{"text":"]","color":"#BBBBBB"}]',Lore:['[{"text":"If active:","color":"#888888","bold":true},{"text":" gives your opponent","color":"#888888"}]','[{"text":"  → ","color":"#888888"},{"text":"knockback","color":"dark_purple"},{"text":" but still ","color":"888888"},{"text":"0 damage","color":"dark_purple"},{"text":"","color":"dark_purple"}]','[{"text":"","color":"dark_purple"}]','[{"text":"‹< active every ","color":"gray"},{"text":"20s","color":"light_purple"},{"text":" for "},{"text":"10s","color":"light_purple"},{"text":" >›"}]']},HideFlags:35} 1
execute if entity @s[tag=wpm_OP] run give @s golden_shovel{CustomModelData:2560001,Damage:12,EntityTag:{Invisible:1b},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:7.5,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-1231114,24295,125612,-48590]}],display:{Name:'[{"text":"THROW ","color":"#FFCC00","bold":true},{"text":"Shovel"}]',Lore:['[{"text":"It will throw your opponent","color":"gold"}]','[{"text":"pretty far from his path.","color":"gold"},{"text":"","color":"dark_purple"}]','[{"text":"","color":"dark_purple"}]','[{"text":"〚10 uses before it breaks〛","color":"blue"}]']},Enchantments:[{id:"knockback",lvl:4}],HideFlags:35} 1
execute if entity @s[tag=wpm_OP] run give @s bow{CustomModelData:2560001,Unbreakable:1,EntityTag:{Invisible:1b},display:{Name:'[{"text":"Arrow","color":"#99CCCC","bold":true},{"text":" Launcher"}]',Lore:['[{"text":"Launches arrows ","color":"#6699CC"},{"text":"pretty far","color":"dark_purple"},{"text":" and","color":"#6699CC"}]','[{"text":"in addition, ","color":"#6699CC"},{"text":"throws the hit player","color":"light_purple"}]']},Enchantments:[{id:"infinity",lvl:1},{id:"punch",lvl:1},{id:"quick_charge",lvl:255}],HideFlags:35} 1
execute if entity @s[tag=wpm_OP] run give @s warped_fungus_on_a_stick{CustomModelData:2560001,Unbreakable:1,Damage:0,Tags:["Homing_MissileLauncher"],tags:1b,EntityTag:{Invisible:1b},display:{Name:'[{"text":"HOMING","color":"#FF6633"},{"text":" ","color":"#669999"},{"text":"Missile-Launcher","color":"#26D8A8","bold":true}]',Lore:['[{"text":"Launches a ","color":"#66CCCC"},{"text":"FUNGUS-MISSILE","color":"#00CCCC"},{"text":"","color":"dark_purple"}]','[{"text":"when right-clicked.","color":"#66CCCC"}]','[{"text":"The ","color":"#66CCCC"},{"text":"MISSILE","color":"#00CCCC"},{"text":" will fly in the","color":"#66CCCC"}]','[{"text":"direction you\'re looking and","color":"#66CCCC"}]','[{"text":"start ","color":"#66CCCC"},{"text":"HOMING","color":"#00CCCC"},{"text":" an entity when","color":"#66CCCC"}]','[{"text":"it ","color":"#66CCCC"},{"text":"COMES CLOSE ENOUGH","color":"#00CCCC"},{"text":" to one."},{"text":"","color":"dark_purple"}]','[{"text":"","color":"dark_purple"}]','[{"text":"Much Damage","color":"#6699FF"}]']},Enchantments:[{id:"infinity",lvl:1}],HideFlags:99} 1
execute if entity @s[tag=wpm_OP] run give @s snowball{CustomModelData:2560001,Enchantments:[{id:"infinity",lvl:1}],HideFlags:1,Tags:["FreezeBomb"],display:{Name:'[{"text":"Freeze Bomb","bold":true,"color":"aqua"}]',Lore:['[{"text":"Freezes all entities in","color":"#CCFFFF"}]','[{"text":"a radius of 5 blocks to","color":"#CCFFFF"}]','[{"text":"the ","color":"#CCFFFF"},{"text":"Freeze Bomb","color":"aqua"},{"text":"."},{"text":"","color":"dark_purple"}]','[{"text":"","color":"dark_purple"}]','[{"text":"No Damage","color":"#6699FF"},{"text":"","color":"dark_purple"}]','[{"text":"10s Freezing","color":"#66CCFF"}]']}} 1
execute if entity @s[tag=wpm_OP] run give @s mooshroom_spawn_egg{CustomModelData:2560001,HideFlags:17,Rotation:[0f,0f],CanPlaceOn:["#wpm:full_blocks","#trapdoors[half=top,open=false]","#slabs[type=double]","#stairs[half=top]","#slabs[type=top]"],EntityTag:{id:"interaction",height:1f,width:1f,Invulnerable:1b,Tags:["Landmine"],CustomName:'[{"text":"Landmine","color":"red","bold":true}]'},Enchantments:[{id:"infinity",lvl:1}],display:{Name:'[{"text":"Landmine","color":"red","bold":true}]',Lore:['[{"text":"Explodes on every ","color":"#CC3333"},{"text":"mob","color":"#FF6666"}]','[{"text":"and player","color":"#FF6666"},{"text":" ","color":"#CC3333"},{"text":"except you","color":"#FF0033"}]','[{"text":"that comes in a ","color":"#CC3333"},{"text":"radius","color":"#FF6666"}]','[{"text":"of 1 block","color":"#FF6666"},{"text":" to the mine","color":"#CC3333"}]','[{"text":""}]','[{"text":"Much Damage","color":"#FF9966"}]','[{"text":"Infinite Life Time","color":"#FF9900"}]','[{"text":""}]','[{"text":"Can be placed on:","color":"#BBBBBB"},{"text":"","color":"dark_purple"}]','[{"text":"All Full Blocks","color":"#666666"}]']}} 1
