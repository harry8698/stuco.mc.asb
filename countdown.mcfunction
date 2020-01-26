# adds one every 1/20 seconds
scoreboard players add @e[type=armor_stand,name=Timer] time 1

# 1 sec
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 20 run title @a[team=red] title [{"text":"3","color":"red"}]
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 20 run title @a[team=blue] title [{"text":"3","color":"blue"}]

# 2 sec
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 40 run title @a[team=red] title [{"text":"2","color":"red"}]
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 40 run title @a[team=blue] title [{"text":"2","color":"blue"}]

# 3 sec
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 60 run title @a[team=red] title [{"text":"1","color":"red"}]
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 60 run title @a[team=blue] title [{"text":"1","color":"blue"}]

# 4 sec
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 80 run title @a[team=red] title [{"text":"START!","color":"red"}]
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 80 run title @a[team=blue] title [{"text":"START!","color":"blue"}]

# 4 sec: opens blue gates
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 80 run fill ~4 ~6 ~ ~4 ~6 ~ minecraft:magenta_glazed_terracotta[facing=east] replace stone_bricks
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 80 run fill ~4 ~5 ~ ~4 ~4 ~ air replace bedrock
# 4 sec: opens red gates
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 80 run fill ~-2 ~6 ~ ~-2 ~6 ~ minecraft:magenta_glazed_terracotta[facing=east] replace stone_bricks
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 80 run fill ~-2 ~5 ~ ~-2 ~4 ~ air replace bedrock
# 4 sec: close main gate
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 80 run fill ~1 ~11 ~3 ~1 ~11 ~3 minecraft:stone_bricks replace magenta_glazed_terracotta
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 80 run fill ~1 ~10 ~3 ~1 ~9 ~3 bedrock replace air

execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 85 run setblock ~ ~ ~ air
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 85 run kill @e[type=armor_stand,name=Timer]