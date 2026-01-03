#抬头时执行与非抬头情况时执行
execute at @s[x_rotation=-90] if score @s data-tick_2 matches 0..60 run scoreboard players add @s data-tick_2 1
execute at @s[x_rotation=-90] if score @s data-tick_2 matches 61 run scoreboard players set @s data-tick_2 0
execute as @s[x_rotation=-89..] if score @s data-tick_2 matches ..60 run scoreboard players remove @s data-tick_2 1
execute as @s[x_rotation=..90] if score @s data-tick_2 matches ..60 run scoreboard players remove @s data-tick_2 1
execute as @s[x_rotation=-89..] if score @s data-tick_2 matches ..0 run scoreboard players set @s data-tick_2 0
execute as @s[x_rotation=..90] if score @s data-tick_2 matches ..0 run scoreboard players set @s data-tick_2 0
execute if score @s data-tick_2 matches 60 run scoreboard players set @s data-tell_aiko 1
execute if score @s data-tick_2 matches 1..60 run title @s actionbar [{"text":"Looks like you want to /tp Aiko, right?"},{"text":"("},{"score":{"name":"@s","objective":"data-tick_2"}},{"text":"[Tick])"}]
#-后续处理
execute if score @s data-tell_aiko matches 1 if score @s data-tick matches 0 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" "},{"text":"tp on me,Aiko!"}]
execute if score @s data-tell_aiko matches 1 run execute if score @s data-tick matches 0..22 run scoreboard players add @s data-tick 1
execute if score @s data-tick matches 23 run scoreboard players set @s data-tick 0
execute if score @s data-tell_aiko matches 1 if score @s data-tick matches 19 run tellraw @a [{"text":"<"},{"text":"CoolPlayer303"},{"text":">"},{"text":" "},{"text":"I'm coming to find you!(>w<)"},{"text":" "},{"selector":"@s"},{"text":"."}]
execute if score @s data-tell_aiko matches 1 if score @s data-tick matches 19 run tp @e[name=CoolPlayer303] @s
execute if score @s data-tell_aiko matches 1 if score @s data-tick matches 22 run scoreboard players set @s data-tell_aiko 0

#让Aiko待在原地不动的处理
#-钓鱼竿指定Aiko待的位置
#execute as @s if score @s data-beacon_usage_count matches 1 unless entity @e[tag=aiko_stay_place] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["aiko_stay_place"],NoGravity:1b,Invisible:1b,Marker:1b}
#execute as @a if score @s data-beacon_usage_count matches 1 run scoreboard players set @s data-beacon_usage_count 0
#execute unless score @s data-tell_aiko matches 2 if entity @e[tag=aiko_stay_place] run kill @e[tag=aiko_stay_place]
#execute if score @s data-tell_aiko matches 2 if score @s data-beacon_usage_count matches 1 if entity @e[tag=aiko_stay_place] run tellraw @s [{"text":"[ITSBA-Command] "},{"text":"Aiko will no longer stay in place.","color":"yellow"}]
#execute unless score @s data-tell_aiko matches 2 if entity @e[tag=aiko_stay_place] if score @s data-beacon_usage_count matches 0 run kill @e[tag=aiko_stay_place]
#execute as @a if score @s data-tell_aiko matches 2 run execute as @e[type=minecraft:armor_stand,tag=aiko_stay_place] run tp @e[type=inside_the_system:cool_player_303,name=CoolPlayer303,tag=only] @s
#-过30分钟取消待在原地不动状态
#execute as @s if score server/aiko_staied_time config matches 36001.. run scoreboard players set server/aiko_staied_time config 0
#execute as @s if score server/aiko_staied_time config matches 36000.. run scoreboard players set @s data-tell_aiko 0

#execute as @a if score @s data-beacon_usage_count matches 1 run scoreboard players set @s data-tell_aiko 2
#execute as @a if score @s data-beacon_usage_count matches 1 unless entity @e[tag=aiko_stay_place,type=minecraft:armor_stand] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["aiko_stay_place"],NoGravity:1b,Invisible:1b,Marker:1b}
#execute as @a if score @s data-beacon_usage_count matches 1 if entity @e[tag=aiko_stay_place,type=minecraft:armor_stand] run scoreboard players set @s data-beacon_usage_count 0
#execute as @a unless score @s data-tell_aiko matches 2 if entity @e[tag=aiko_stay_place, type=minecraft:armor_stand] run kill @e[tag=aiko_stay_place, type=minecraft:armor_stand]
#execute as @a if score @s data-tell_aiko matches 2 if score @s data-beacon_usage_count matches 1 if entity @e[tag=aiko_stay_place, type=minecraft:armor_stand] run tellraw @s [{"text":"[ITSBA-Command] "},{"text":"Aiko will no longer stay in place.","color":"yellow"}]
#execute as @a if score @s data-tell_aiko matches 2 if entity @e[tag=aiko_stay_place, type=minecraft:armor_stand] run tp @e[type=inside_the_system:cool_player_303,tag=only,name=CoolPlayer303, distance=..10] @e[tag=aiko_stay_place, type=minecraft:armor_stand, limit=1]
#execute as @a if entity @e[tag=aiko_stay_place, type=minecraft:armor_stand] as @e[type=inside_the_system:cool_player_303,tag=only,name=CoolPlayer303] at @s if entity @e[tag=aiko_stay_place, type=minecraft:armor_stand, distance=..2] run scoreboard players add server/aiko_staied_time config 1
#execute if score server/aiko_staied_time config matches 36000.. run scoreboard players set @a[scores={data-tell_aiko=0}] data-tell_aiko 0
#execute if score server/aiko_staied_time config matches 36001.. run scoreboard players set server/aiko_staied_time config 0