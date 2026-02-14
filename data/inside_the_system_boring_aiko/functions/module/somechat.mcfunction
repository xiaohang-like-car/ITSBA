#-前置组件
#execute as @e[type=inside_the_system:cool_player_303,name=CoolPlayer303,tag=only] run data modify entity @s ForgeData.coolPlayerLastSpoke set value 10000l
execute if score server/ramdom_chat config matches 32 run scoreboard players set server/ramdom_chat config 0
execute if score server/ramdom_chat config matches 0..31 run scoreboard players add server/ramdom_chat config 1
execute if score server/ramdom_chat/time config matches 24001.. run scoreboard players set server/ramdom_chat/time config 0
execute if score server/ramdom_chat/time config matches 0..24000 run scoreboard players add server/ramdom_chat/time config 1


#随机聊天
execute if score server/ramdom_chat config matches 1 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"How fell on today?"}]
execute if score server/ramdom_chat config matches 2 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"今日もたのしいですれ！"}]
execute if score server/ramdom_chat config matches 3 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"Can I help you with something?"}]
execute if score server/ramdom_chat config matches 4 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"Sometimes,I fell bored in this world,can i watch you to play ohter games?(◍•ᴗ•◍)"}]
execute if score server/ramdom_chat config matches 5 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"Say some jokes that's really annoying to me,I cannot hack chinses firewall!"}]
execute if score server/ramdom_chat config matches 6 if score server/ramdom_chat/time config matches 24000 run tellraw @r {"translate":"commands.message.display.incoming","with":["CoolPlayer303","So, do you have any secrets? ^_^"],"color":"gray","italic":"true"}
execute if score server/ramdom_chat config matches 7 if score server/ramdom_chat/time config matches 24000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"\"_lazy夜_\" he is very handsome.I like him!"}]
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

#特殊聊天--过了一年之后
#--前置组件
execute if score server/time config = server/time/year config run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"It's been a year since I came here, but I still feel bored..."}]
execute if score server/time config = server/time/year config run scoreboard players add server/time/year config 8760000

#特殊聊天--待在原地不动时
#execute as @e[type=inside_the_system:cool_player_303,tag=only,name=CoolPlayer303] at @s if entity @e[type=minecraft:armor_stand,tag=aiko_stay_place,distance=..2] run scoreboard players add server/aiko_staied_time config 1
#execute as @e[type=inside_the_system:cool_player_303,tag=only,name=CoolPlayer303] at @s if score server/aiko_staied_time config matches 36000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"I'm feeling bored..."}]

#特殊聊天--返回出生点时
execute unless entity @e[name=CoolPlayer303,tag=only,type=inside_the_system:cool_player_303] run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"I went to spawnpoint,if you want me to come to you,just call me!"}]

#特殊聊天--玩家目视Aiko过久时
#-前置组件
#execute as @a if score @s data-looked_at_player_time matches 3001.. run scoreboard players set @s data-looked_at_player_time 0
#execute as @e[type=inside_the_system:cool_player_303,tag=only,name=CoolPlayer303] at @s if entity @p[distance=..10,limit=1,sort=nearest,tag=looking_at_aiko] run execute as @a[tag=looking_at_aiko] run scoreboard players add @s data-looked_at_player_time 1
#-聊天组件
#execute as @a if score @s data-looked_at_player_time matches 3000 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"Hehe,why are you looking at me for so long? (owO)"}]

#特殊聊天--可回应的聊天
#1--前置组件
execute if score server/ramdom_chat config matches 30 run execute if score server/ramdom_chat/time config matches 24000 run scoreboard players set server/ramdom_chat/diffrent_ramdomchat config 1
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 0 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 0.. run scoreboard players set server/ramdom_chat/diffrent_ramdomchat/time config 0
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 0..2230 run scoreboard players add server/ramdom_chat/diffrent_ramdomchat/time config 1
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 2231.. run scoreboard players set server/ramdom_chat/diffrent_ramdomchat config 0
#1-希望有新的灵魂来陪伴Aiko
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 1 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"You know,I thought of a question."}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 31 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"I dead,but my soul hasn't disappeared; it has come here."}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 61 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"Maybe is God can't just let me die?"}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 91 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"So i come to there and let you help me get revenge."}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 121 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"And have you accompany me."}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 151 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"If other souls also die with resentment like this, could there be a good outcome and bring them here?"}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 181 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"HeHe,i'm kind of loooking forward to it."}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 230 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"What do you think?"}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 230 run tellraw @a [{"text":"[Recognize]","clickEvent": {"action":"run_command","value":"/function inside_the_system_boring_aiko:commands/reply_aiko/drc1/1"},"color":"#d0e6dc"},{"text": " "},{"text":"[Unrecognize]","clickEvent": {"action":"run_command","value":"/function inside_the_system_boring_aiko:commands/reply_aiko/drc1/2"},"color":"#d0e6dc"}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 1 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 2230 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"...I see,maybe you're busy now."}]
#2--前置组件
execute if score server/ramdom_chat config matches 31 run execute if score server/ramdom_chat/time config matches 24000 run scoreboard players set server/ramdom_chat/diffrent_ramdomchat config 2
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 2 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 0..121 run scoreboard players add server/ramdom_chat/diffrent_ramdomchat/time config 1
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 2 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 122.. run scoreboard players set server/ramdom_chat/diffrent_ramdomchat config 0
#2-彩蛋
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 2 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 1 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"Hey!I found something interesting!"}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 2 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 31 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"It's a photo!"}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 2 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 61 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"I don't know where it came from. This photo seems to record some interesting things."}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 2 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 91 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"This photo seems to show what I look like when I'm angry, haha, and it's kind of cute too."}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 2 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 121 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"Do you want to have a look?"}]
execute if score server/ramdom_chat/diffrent_ramdomchat config matches 2 if score server/ramdom_chat/diffrent_ramdomchat/time config matches 121 run tellraw @a [{"text":"[Take the photo]","clickEvent": {"action":"run_command","value":"/function inside_the_system_boring_aiko:commands/give_item/photos/1"},"color":"#d0e6dc"}]

#特殊聊天--事件
#1-搭房子
execute if score server/aiko/stage config matches 72000.. run execute if score server/hccreataccess config matches 0 if score server/q/hc/stage config matches ..1 run scoreboard players set server/q/hc/stage config 1
execute if score server/q/hc/stage config matches 1 if score server/hccreataccess config matches 0 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"I want to build a cozy little home at the station. Is that okay? QWQ"}]
execute if score server/q/hc/stage config matches 1 if score server/hccreataccess config matches 0 run tellraw @a [{"text":"[Agree]","clickEvent": {"action":"run_command","value":"/function inside_the_system_boring_aiko:commands/reply_aiko/hc/agree"},"color":"#d0e6dc"},{"text": " "},{"text":"[Disagree]","clickEvent": {"action":"run_command","value":"/function inside_the_system_boring_aiko:commands/reply_aiko/hc/disagree"},"color":"#d0e6dc"}]
execute if score server/q/hc/stage config matches ..1 run scoreboard players set server/q/hc/stage config 2
#2-"你在作弊"
execute if score server/ramdom_time-now config = server/ramdom_time-end config if score server/ramdom_event config matches 20..130 run tellraw @a [{"text":"[Server] "},{"text":"Cheating detected by anti-cheat system, cheater ID: CoolPlayer303","color":"white"}]
execute if score server/ramdom_time-now config = server/ramdom_time-end config if score server/ramdom_event config matches 20..130 run scoreboard players set server/ramdom_event/chat config 1
execute if score server/ramdom_event/chat config matches 1 run scoreboard players add server/ramdom_event/chat/time config 1
execute if score server/ramdom_event/chat config matches 1 if score server/ramdom_event/chat/time config matches 30 run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"Ah, I’ve been caught. (○´･д･)ﾉ"}]
execute if score server/ramdom_event/chat config matches 1 if score server/ramdom_event/chat/time config matches 30 run scoreboard players set server/ramdom_event/chat config 0
execute if score server/ramdom_event/chat config matches 0 run scoreboard players set server/ramdom_event/chat/time config 0
#3-挖矿时挖到钻石
execute if score server/ramdom_time-now config = server/ramdom_time-end config if score server/ramdom_event config matches 131..141 run execute as @a at @s if entity @e[tag=only,type=inside_the_system:cool_player_303,limit=1,y=-59,dy=52] run tellraw @a [{"text":"<CoolPlayer303>"},{"text":" "},{"text":"Wow, I found diamonds! That's great!"}]