#前置组件
#execute as @e[type=inside_the_system:cool_player_303,name=CoolPlayer303,tag=only] run data modify entity @s ForgeData.coolPlayerLastSpoke set value 10000l
execute if score server/ramdom_chat config matches 31 run scoreboard players set server/ramdom_chat config 0
execute if score server/ramdom_chat config matches 0..30 run scoreboard players add server/ramdom_chat config 1
execute if score server/ramdom_chat/time config matches 24001 run scoreboard players set server/ramdom_chat/time config 0
execute if score server/ramdom_chat/time config matches 0..24000 run scoreboard players add server/ramdom_chat/time config 1


#随机聊天
execute if score server/ramdom_chat config matches 1 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"How fell on today?"}]
execute if score server/ramdom_chat config matches 2 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"今日もたのしいですれ！"}]
execute if score server/ramdom_chat config matches 3 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"Can I help you with something?"}]
#execute if score server/ramdom_chat config matches 4 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 5 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 6 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 7 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 8 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 9 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 10 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 11 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 12 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 13 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 14 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 15 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 16 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 17 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 18 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 19 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 20 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 21 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 22 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]
#execute if score server/ramdom_chat config matches 23 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"text"}]

#特殊聊天-对新玩家打招呼
execute as @a if score @s joined_world matches 20 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"Uh,halloo!"},{"text":" "},{"selector":"@s"},{"text":"."}]

#特殊聊天--回应玩家的问候

#特殊聊天--待在原地不动时
#execute as @e[type=inside_the_system:cool_player_303,tag=only,name=CoolPlayer303] at @s if entity @e[type=minecraft:armor_stand,tag=aiko_stay_place,distance=..2] run scoreboard players add server/aiko_staied_time config 1
#execute as @e[type=inside_the_system:cool_player_303,tag=only,name=CoolPlayer303] at @s if score server/aiko_staied_time config matches 36000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"I'm feeling bored..."}]

#特殊聊天--返回出生点时
execute unless entity @e[name=CoolPlayer303,tag=only,type=inside_the_system:cool_player_303] run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"I went to spawnpoint,if you want me to come to you,just call me!"}]