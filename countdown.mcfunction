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

# 4 sec: opens red, blue gates
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 80 run fill ~4 ~6 ~ ~4 ~5 ~ air
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 80 run fill ~-2 ~6 ~ ~-2 ~5 ~ air

execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 85 run setblock ~ ~ ~ air
execute if score @e[limit=1,type=armor_stand,name=Timer] time matches 85 run kill @e[type=armor_stand,name=Timer]