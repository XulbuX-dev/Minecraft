execute at @s run tp @s ~ ~.001 ~
function wpm:blocks/moving-platform/check_riding-up
execute if entity @s[tag=RidingPlatform_UP] run function wpm:blocks/moving-platform/move_onto-platform
