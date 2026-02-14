#询问是否需要建造房子（如果需要则进入建造过程，否则直接跳过）
execute if score server/hccreataccess config matches 1 if score server/test/hcstage config matches 0..1330 run scoreboard players add server/test/hcstage config 1
execute if entity @e[tag=house_creat_place] if score server/test/hcstage config matches 1330.. run kill @e[tag=house_creat_place]

#房子建造过程（放置方块时视角会转移到放置的方块上）

execute if score server/test/hcstage config matches 10 run summon minecraft:armor_stand ~ ~ ~ {Tags:["house_creat_place"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}

#例:第一个的方块（先转移视角到放置位置后放置方块）
execute if score server/test/hcstage config matches 20 run execute at @s run tp @s ~ ~ ~ facing ~ ~-1 ~
execute if score server/test/hcstage config matches 20 run execute at @s run setblock ~ ~-1 ~ oak_planks destroy
execute if score server/test/hcstage config matches 20 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1
#第二个的方块
execute if score server/test/hcstage config matches 70 run execute at @s run tp @s ~ ~ ~ facing ~0.5 ~-1 ~
execute if score server/test/hcstage config matches 70 run execute at @s run setblock ~1 ~-1 ~ oak_planks destroy
execute if score server/test/hcstage config matches 70 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 180 run execute at @s run tp @s ~ ~ ~ facing ~-0.5 ~-1 ~
execute if score server/test/hcstage config matches 180 run execute at @s run setblock ~-1 ~-1 ~ oak_planks destroy
execute if score server/test/hcstage config matches 180 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 190 run execute at @s run tp @s ~ ~ ~ facing ~ ~-1 ~0.5
execute if score server/test/hcstage config matches 200 run execute at @s run setblock ~ ~-1 ~1 oak_planks destroy
execute if score server/test/hcstage config matches 200 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 210 run execute at @s run tp @s ~ ~ ~ facing ~ ~-1 ~-0.5
execute if score server/test/hcstage config matches 210 run execute at @s run setblock ~ ~-1 ~-1 oak_planks destroy
execute if score server/test/hcstage config matches 210 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 220 run execute at @s run tp @s ~ ~ ~ facing ~0.5 ~-1 ~0.5
execute if score server/test/hcstage config matches 220 run execute at @s run setblock ~1 ~-1 ~1 oak_planks destroy
execute if score server/test/hcstage config matches 220 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 230 run execute at @s run tp @s ~ ~ ~ facing ~-0.5 ~-1 ~0.5
execute if score server/test/hcstage config matches 230 run execute at @s run setblock ~-1 ~-1 ~1 oak_planks destroy
execute if score server/test/hcstage config matches 230 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 240 run execute at @s run tp @s ~ ~ ~ facing ~-0.5 ~-1 ~-0.5
execute if score server/test/hcstage config matches 240 run execute at @s run setblock ~-1 ~-1 ~-1 oak_planks destroy
execute if score server/test/hcstage config matches 240 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 250 run execute at @s run tp @s ~ ~ ~ facing ~-0.5 ~-1 ~0.5
execute if score server/test/hcstage config matches 250 run execute at @s run setblock ~-1 ~-1 ~1 oak_planks destroy
execute if score server/test/hcstage config matches 250 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 260 run execute at @s run tp @s ~ ~ ~ facing ~0.5 ~-1 ~-0.5
execute if score server/test/hcstage config matches 260 run execute at @s run setblock ~1 ~-1 ~-1 oak_planks destroy
execute if score server/test/hcstage config matches 260 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 270 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~-0.5 ~-1.25
execute if score server/test/hcstage config matches 270 run execute at @s run setblock ~2 ~-1 ~-2 minecraft:oak_log[ axis=y] destroy
execute if score server/test/hcstage config matches 270 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 280 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~-0.5 ~-1.25
execute if score server/test/hcstage config matches 280 run execute at @s run setblock ~-2 ~-1 ~2 minecraft:oak_log[ axis=y] destroy
execute if score server/test/hcstage config matches 280 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 290 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~-0.5 ~1.25
execute if score server/test/hcstage config matches 290 run execute at @s run setblock ~2 ~-1 ~2 minecraft:oak_log[ axis=y] destroy
execute if score server/test/hcstage config matches 290 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 300 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~-0.5 ~-1.25
execute if score server/test/hcstage config matches 300 run execute at @s run setblock ~-2 ~-1 ~-2 minecraft:oak_log[ axis=y] destroy
execute if score server/test/hcstage config matches 300 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 310 run execute at @s run tp @s ~ ~ ~ facing ~-0.5 ~-1 ~-0.5
execute if score server/test/hcstage config matches 310 run execute at @s run setblock ~ ~-1 ~-2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 310 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 320 run execute at @s run tp @s ~ ~ ~ facing ~-0.5 ~-1 ~0.5
execute if score server/test/hcstage config matches 320 run execute at @s run setblock ~1 ~-1 ~-2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 320 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 330 run execute at @s run tp @s ~ ~ ~ facing ~-0.5 ~-1 ~-0.5
execute if score server/test/hcstage config matches 330 run execute at @s run setblock ~-1 ~-1 ~-2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 330 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 340 run execute at @s run tp @s ~ ~ ~ facing ~-0.5 ~-1 ~0.5
execute if score server/test/hcstage config matches 340 run execute at @s run setblock ~ ~-1 ~2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 340 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 350 run execute at @s run tp @s ~ ~ ~ facing ~0.5 ~-1 ~0.5
execute if score server/test/hcstage config matches 350 run execute at @s run setblock ~1 ~-1 ~2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 350 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 360 run execute at @s run tp @s ~ ~ ~ facing ~-0.5 ~-1 ~0.5
execute if score server/test/hcstage config matches 360 run execute at @s run setblock ~-1 ~-1 ~2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 360 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 370 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~-0.5 ~0
execute if score server/test/hcstage config matches 370 run execute at @s run setblock ~2 ~-1 ~ minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 370 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 380 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~-0.5 ~0.5
execute if score server/test/hcstage config matches 380 run execute at @s run setblock ~2 ~-1 ~1 minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 380 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 390 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~-0.5 ~-0.5
execute if score server/test/hcstage config matches 390 run execute at @s run setblock ~2 ~-1 ~-1 minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 390 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 400 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~-0.5 ~0
execute if score server/test/hcstage config matches 400 run execute at @s run setblock ~-2 ~-1 ~ minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 400 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 410 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~-0.5 ~0.5
execute if score server/test/hcstage config matches 410 run execute at @s run setblock ~-2 ~-1 ~1 minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 410 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 420 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~-0.5 ~-0.5
execute if score server/test/hcstage config matches 420 run execute at @s run setblock ~-2 ~-1 ~-1 minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 420 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 430 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~0 ~-1.25
execute if score server/test/hcstage config matches 430 run execute at @s run setblock ~-2 ~ ~-2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 430 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 440 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~0.5 ~-1.25
execute if score server/test/hcstage config matches 440 run execute at @s run setblock ~-2 ~1 ~-2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 440 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 450 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~1 ~-1.25
execute if score server/test/hcstage config matches 450 run execute at @s run setblock ~-2 ~2 ~-2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 450 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 460 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~1.5 ~-1.25
execute if score server/test/hcstage config matches 460 run execute at @s run setblock ~-2 ~3 ~-2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 460 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 470 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~0 ~1.25
execute if score server/test/hcstage config matches 470 run execute at @s run setblock ~-2 ~ ~2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 470 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 480 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~0.5 ~1.25
execute if score server/test/hcstage config matches 480 run execute at @s run setblock ~-2 ~1 ~2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 480 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 490 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~1 ~1.25
execute if score server/test/hcstage config matches 490 run execute at @s run setblock ~-2 ~2 ~2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 490 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 500 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~1.5 ~1.25
execute if score server/test/hcstage config matches 500 run execute at @s run setblock ~-2 ~3 ~2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 500 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 510 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~0 ~1.25
execute if score server/test/hcstage config matches 510 run execute at @s run setblock ~2 ~ ~2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 510 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 520 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~0.5 ~1.25
execute if score server/test/hcstage config matches 520 run execute at @s run setblock ~2 ~1 ~2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 520 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 530 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~1 ~1.25
execute if score server/test/hcstage config matches 530 run execute at @s run setblock ~2 ~2 ~2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 530 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 540 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~1.5 ~1.25
execute if score server/test/hcstage config matches 540 run execute at @s run setblock ~2 ~3 ~2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 540 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 550 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~0 ~-1.25
execute if score server/test/hcstage config matches 550 run execute at @s run setblock ~2 ~ ~-2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 550 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 560 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~0.5 ~-1.25
execute if score server/test/hcstage config matches 560 run execute at @s run setblock ~2 ~1 ~-2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 560 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 570 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~1 ~-1.25
execute if score server/test/hcstage config matches 570 run execute at @s run setblock ~2 ~2 ~-2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 570 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 580 run execute at @s run tp @s ~ ~ ~ facing ~1.25 ~1.5 ~-1.25
execute if score server/test/hcstage config matches 580 run execute at @s run setblock ~2 ~3 ~-2 minecraft:oak_log[axis=y] destroy
execute if score server/test/hcstage config matches 580 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 590 run execute at @s run tp @s ~ ~ ~ facing ~-1.25 ~1.5 ~-1.25
execute if score server/test/hcstage config matches 590 run execute at @s run setblock ~ ~3 ~-2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 590 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 600 run execute at @s run tp @s ~ ~ ~ facing ~0.5 ~1.5 ~-1.25
execute if score server/test/hcstage config matches 600 run execute at @s run setblock ~1 ~3 ~-2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 600 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 610 run execute at @s run setblock ~-1 ~3 ~-2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 610 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 620 run execute at @s run setblock ~ ~3 ~2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 620 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 630 run execute at @s run setblock ~1 ~3 ~2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 630 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 640 run execute at @s run setblock ~-1 ~3 ~2 minecraft:oak_wood[axis=y] destroy
execute if score server/test/hcstage config matches 640 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 650 run execute at @s run setblock ~2 ~3 ~ minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 650 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 660 run execute at @s run setblock ~2 ~3 ~1 minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 660 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 670 run execute at @s run setblock ~2 ~3 ~-1 minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 670 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 680 run execute at @s run setblock ~-2 ~3 ~ minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 680 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 690 run execute at @s run setblock ~-2 ~3 ~1 minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 690 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 700 run execute at @s run setblock ~-2 ~3 ~-1 minecraft:oak_wood[axis=x] destroy
execute if score server/test/hcstage config matches 700 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 710 run execute at @s run setblock ~ ~3 ~ glass destroy
execute if score server/test/hcstage config matches 710 run playsound minecraft:block.glass.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 720 run execute at @s run setblock ~1 ~3 ~ glass destroy
execute if score server/test/hcstage config matches 720 run playsound minecraft:block.glass.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 730 run execute at @s run setblock ~-1 ~3 ~ glass destroy
execute if score server/test/hcstage config matches 730 run playsound minecraft:block.glass.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 740 run execute at @s run setblock ~ ~3 ~1 glass destroy
execute if score server/test/hcstage config matches 740 run playsound minecraft:block.glass.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 750 run execute at @s run setblock ~ ~3 ~-1 glass destroy
execute if score server/test/hcstage config matches 750 run playsound minecraft:block.glass.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 760 run execute at @s run setblock ~1 ~3 ~1 glass destroy
execute if score server/test/hcstage config matches 760 run playsound minecraft:block.glass.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 770 run execute at @s run setblock ~-1 ~3 ~1 glass destroy
execute if score server/test/hcstage config matches 770 run playsound minecraft:block.glass.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 780 run execute at @s run setblock ~-1 ~3 ~-1 glass destroy
execute if score server/test/hcstage config matches 780 run playsound minecraft:block.glass.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 790 run execute at @s run setblock ~-1 ~3 ~1 glass destroy
execute if score server/test/hcstage config matches 790 run playsound minecraft:block.glass.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 800 run execute at @s run setblock ~1 ~3 ~-1 glass destroy
execute if score server/test/hcstage config matches 800 run playsound minecraft:block.glass.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 810 run execute at @s run setblock ~ ~1 ~-2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 810 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 820 run execute at @s run setblock ~1 ~1 ~-2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 820 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 830 run execute at @s run setblock ~-1 ~1 ~-2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 830 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 840 run execute at @s run setblock ~ ~1 ~2 minecraft:oak_door[facing=north,half=upper] destroy
execute if score server/test/hcstage config matches 840 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 840 run execute at @s run setblock ~ ~ ~2 minecraft:oak_door[facing=north,half=lower] destroy
execute if score server/test/hcstage config matches 840 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 850 run execute at @s run setblock ~1 ~1 ~2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 850 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 860 run execute at @s run setblock ~-1 ~1 ~2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 860 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 870 run execute at @s run setblock ~2 ~1 ~ minecraft:glass_pane destroy
execute if score server/test/hcstage config matches 870 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 880 run execute at @s run setblock ~2 ~1 ~1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 880 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 890 run execute at @s run setblock ~2 ~1 ~-1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 890 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 900 run execute at @s run setblock ~-2 ~1 ~ minecraft:glass_pane destroy
execute if score server/test/hcstage config matches 900 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 910 run execute at @s run setblock ~-2 ~1 ~1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 910 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 920 run execute at @s run setblock ~-2 ~1 ~-1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 920 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 930 run execute at @s run setblock ~ ~ ~-2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 930 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 940 run execute at @s run setblock ~1 ~ ~-2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 940 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 950 run execute at @s run setblock ~-1 ~ ~-2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 950 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 970 run execute at @s run setblock ~1 ~ ~2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 970 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 980 run execute at @s run setblock ~-1 ~ ~2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 980 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 990 run execute at @s run setblock ~2 ~ ~ minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 990 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1000 run execute at @s run setblock ~2 ~ ~1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1000 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1010 run execute at @s run setblock ~2 ~ ~-1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1010 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1020 run execute at @s run setblock ~-2 ~ ~ minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1020 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1030 run execute at @s run setblock ~-2 ~ ~1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1030 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1040 run execute at @s run setblock ~-2 ~ ~-1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1040 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1050 run execute at @s run setblock ~ ~2 ~-2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1050 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1060 run execute at @s run setblock ~1 ~2 ~-2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1060 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1070 run execute at @s run setblock ~-1 ~2 ~-2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1070 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1080 run execute at @s run setblock ~ ~2 ~2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1080 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1090 run execute at @s run setblock ~1 ~2 ~2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1090 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1100 run execute at @s run setblock ~-1 ~2 ~2 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1100 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1110 run execute at @s run setblock ~2 ~2 ~ minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1110 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1120 run execute at @s run setblock ~2 ~2 ~1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1120 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1130 run execute at @s run setblock ~2 ~2 ~-1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1130 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1140 run execute at @s run setblock ~-2 ~2 ~ minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1140 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1150 run execute at @s run setblock ~-2 ~2 ~1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1150 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1160 run execute at @s run setblock ~-2 ~2 ~-1 minecraft:oak_planks destroy
execute if score server/test/hcstage config matches 1160 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1170 run execute at @s run setblock ~1 ~ ~-1 minecraft:white_bed[part=head] destroy
execute if score server/test/hcstage config matches 1170 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1180 run execute at @s run setblock ~1 ~ ~ minecraft:white_bed[part=foot] destroy
execute if score server/test/hcstage config matches 1180 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1190 run execute at @s run setblock ~-1 ~ ~ minecraft:furnace[facing=east] destroy
execute if score server/test/hcstage config matches 1190 run playsound minecraft:block.stone.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1200 run execute at @s run setblock ~-1 ~ ~-1 minecraft:crafting_table destroy
execute if score server/test/hcstage config matches 1200 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

#[!1]此坐标会放一个箱子，里面有物品，玩家可以打开拿走，且会一段时间后更新（箱子的位置会生成一个带“aikos_chest”的标签的盔甲架）
execute if score server/test/hcstage config matches 1210 run execute at @s run setblock ~-1 ~ ~1 minecraft:chest[type=single,facing=east]{LootTable:"inside_the_system_boring_aiko:aikos_chest_default"} destroy
execute if score server/test/hcstage config matches 1210 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1
execute if score server/test/hcstage config matches 1210 run execute at @s run summon armor_stand ~-1 ~ ~1 {Tags:["aikos_chest"],Invisible:1b,Invulnerable:1b,NoGravity:1b}
#[!1]结束标记

execute if score server/test/hcstage config matches 1220 run execute at @s run setblock ~ ~ ~1 minecraft:oak_pressure_plate destroy
execute if score server/test/hcstage config matches 1220 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1

execute if score server/test/hcstage config matches 1230 run execute at @s run setblock ~-1 ~1 ~3 minecraft:oak_wall_sign[facing=south]{front_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":"Sweet house"}','{"text":""}','{"text":""}']},is_waxed:1b} destroy
execute if score server/test/hcstage config matches 1230 run playsound minecraft:block.wood.place voice @a ~ ~ ~ 100 1 1


#更新Aiko的箱子

#-前置组件
execute if score server/aiko's_chest_update_stage config matches 25920001.. run scoreboard players set server/aiko's_chest_update_stage config 0
execute if score server/aiko's_chest_update_stage config matches 0..25920000 run scoreboard players add server/aiko's_chest_update_stage config 1

#-条件：服务器的aiko的箱子更新阶段达到25920000（现实时间15天），且Aiko发育状态在0到315360000（现实时间半年内）之间
execute if score server/aiko's_chest_update_stage config matches 25920000 run execute if score server/aiko/stage config matches 0..315360000 run execute as @e[tag=aikos_chest,limit=1] at @s run setblock ~ ~ ~ minecraft:chest[type=single,facing=east]{LootTable:"inside_the_system_boring_aiko:aikos_chest_default"} replace
#-条件：服务器的aiko的箱子更新阶段达到25920000（现实时间15天），且Aiko发育状态在315360000到631584000（现实时间1年内）之间
execute if score server/aiko's_chest_update_stage config matches 25920000 run execute if score server/aiko/stage config matches 315360000..631584000 run execute as @e[tag=aikos_chest,limit=1] at @s run setblock ~ ~ ~ minecraft:chest[type=single,facing=east]{LootTable:"inside_the_system_boring_aiko:aikos_chest_midterm"} replace