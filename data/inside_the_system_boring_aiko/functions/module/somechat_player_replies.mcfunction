execute as @s if score @s data-tell_aiko matches 3 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" "},{"text":"Maybe.."}]
execute as @s if score @s data-tell_aiko matches 4 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" "},{"text":"I think it's possible."}]
execute as @s if score @s data-tell_aiko matches 5 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" "},{"text":"Sure."}]
execute as @s if score @s data-tell_aiko matches 6 run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" "},{"text":"Hmm,I feel like this isn't really appropriate right now."}]
scoreboard players set @a data-tell_aiko 0 