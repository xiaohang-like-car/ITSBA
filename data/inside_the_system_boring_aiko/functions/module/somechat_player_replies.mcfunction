execute as @s if score @s data-tell_aiko matches 3 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" "},{"text":"Maybe.."}]
execute as @s if score @s data-tell_aiko matches 4 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" "},{"text":"I think it's possible."}]
scoreboard players set @a data-tell_aiko 0 