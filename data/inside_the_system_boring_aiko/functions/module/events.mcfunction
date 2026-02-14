#前置组件
#-设定随机发生时间
execute if score server/ramdom_time-now config > server/ramdom_time-end config run scoreboard players set server/ramdom_time-now config 0
execute if score server/ramdom_time-end config matches 0..240000 run scoreboard players add server/ramdom_time-end config 1
execute if score server/ramdom_time-end config matches 240001.. run scoreboard players set server/ramdom_time-end config 0
scoreboard players add server/ramdom_time-now config 10
#-随机事件发生概率设定
execute if score server/ramdom_event config matches 0..1000 run scoreboard players add server/ramdom_event config 1
execute if score server/ramdom_event config matches 1001.. run scoreboard players set server/ramdom_event config 0

#1-"你在作弊"(Aiko的生存进度会增加一定数值，“服务器”广播Aiko在作弊,条件为:1.概率范围为20-130)
execute if score server/ramdom_time-now config = server/ramdom_time-end config if score server/ramdom_event config matches 20..130 run scoreboard players add server/aiko/stage config 5000

#2-挖到钻石(条件为:1.概率范围为131-141；2.Aiko在Y轴位置为-7到-59之间)
execute if score server/ramdom_time-now config = server/ramdom_time-end config if score server/ramdom_event config matches 131..141 run execute as @a at @s if entity @e[tag=only,type=inside_the_system:cool_player_303,limit=1,y=-59,dy=52] run scoreboard players add server/aiko/stage config 500


