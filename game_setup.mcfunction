# remove old data
function asb:team_remove

# set up teams
function asb:team_setup

# open gates
fill ~ ~12 ~3 ~ ~12 ~3 minecraft:magenta_glazed_terracotta[facing=east] replace stone_bricks
fill ~ ~11 ~3 ~ ~10 ~3 minecraft:air replace bedrock

# close blue room gates
fill ~3 ~7 ~ ~3 ~7 ~ minecraft:stone_bricks replace minecraft:magenta_glazed_terracotta
fill ~3 ~6 ~ ~3 ~5 ~ minecraft:bedrock replace air
# close red room gates
fill ~-3 ~7 ~ ~-3 ~7 ~ minecraft:stone_bricks replace minecraft:magenta_glazed_terracotta
fill ~-3 ~6 ~ ~-3 ~5 ~ minecraft:bedrock replace air

# team player number indicator
kill @e[type=armor_stand,name="TeamSelector"]
summon armor_stand ~ ~ ~ {Invulnerable:1b,CustomName:"{\"text\":\"TeamSelector\"}",CustomNameVisible:1b}
scoreboard objectives add blueTeam dummy
scoreboard objectives add redTeam dummy
scoreboard objectives add temp dummy
scoreboard players set @e[type=armor_stand,name=TeamSelector] blueTeam 0
scoreboard players set @e[type=armor_stand,name=TeamSelector] redTeam 0
scoreboard players set @e[type=armor_stand,name=TeamSelector] blueTemp 0
scoreboard players set @e[type=armor_stand,name=TeamSelector] redTemp 0
