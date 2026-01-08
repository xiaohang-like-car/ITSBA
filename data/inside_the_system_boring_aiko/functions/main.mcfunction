#给Aiko无敌
effect give @e[name=CoolPlayer303] minecraft:resistance infinite 255 true
effect give @e[name=CoolPlayer303] minecraft:instant_health infinite 1 true
#防止出现多个Aiko实体
execute as @e[name=CoolPlayer303,tag=!only] run data modify entity @s Health set value 0f
execute as @e[name=CoolPlayer303,tag=!only] run effect give @s minecraft:invisibility infinite 1
execute unless entity @e[name=CoolPlayer303,tag=only,type=inside_the_system:cool_player_303] run summon inside_the_system:cool_player_303 ~ ~ ~ {Tags:["only"],CustomNameVisible:1b}
execute in inside_the_system:bad_end run tp @e[tag=!only,type=inside_the_system:cool_player_303] ~ ~ ~
#模块调用
execute as @a run function inside_the_system_boring_aiko:module/tp
function inside_the_system_boring_aiko:module/somechat
execute if score server/security config matches 1 run function inside_the_system_boring_aiko:module/security
execute as @a if score @s joined_world matches ..20 as @a run function inside_the_system_boring_aiko:ready_check
#其他
execute as @a run scoreboard objectives add joined_world minecraft.custom:minecraft.play_time
#-数据包介绍
execute as @a if score @s joined_world matches 20 as @s run tellraw @s [{"text":"[ITSBA-Tips] "},{"text":"If you want to enable security mode, type /function inside_the_system_boring_aiko:commands/settings/security/y"}]

