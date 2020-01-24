scoreboard objectives remove time
scoreboard objectives add time dummy

kill @e[type=armor_stand,name=Timer]
summon armor_stand ~ ~1 ~ {Invulnerable:1b,CustomName:"{\"text\":\"Timer\"}",CustomNameVisible:1b}

setblock ~ ~1 ~ air
setblock ~ ~1 ~ minecraft:repeating_command_block[facing=up]{Command:"function asb:countdown",auto:1b} replace