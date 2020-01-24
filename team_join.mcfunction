scoreboard players operation @e[type=armor_stand,name=TeamSelector] temp = @e[type=armor_stand,name=TeamSelector] blueTeam

# if blue team < red team, add to blue team
execute if score @e[limit=1,type=armor_stand,name=TeamSelector] blueTeam < @e[limit=1,type=armor_stand,name=TeamSelector] redTeam run team join blue @p
execute if score @e[limit=1,type=armor_stand,name=TeamSelector] blueTeam < @e[limit=1,type=armor_stand,name=TeamSelector] redTeam run title @p title [{"text":"You are team ","color":"white"},{"text":"BLUE","color":"blue"}]
execute if score @e[limit=1,type=armor_stand,name=TeamSelector] blueTeam < @e[limit=1,type=armor_stand,name=TeamSelector] redTeam run scoreboard players add @e[type=armor_stand,name=TeamSelector] blueTeam 1

# else, join red team
execute if score @e[limit=1,type=armor_stand,name=TeamSelector] blueTeam >= @e[limit=1,type=armor_stand,name=TeamSelector] redTeam run execute if score @e[limit=1,type=armor_stand,name=TeamSelector] temp = @e[limit=1,type=armor_stand,name=TeamSelector] blueTeam run team join red @p
execute if score @e[limit=1,type=armor_stand,name=TeamSelector] blueTeam >= @e[limit=1,type=armor_stand,name=TeamSelector] redTeam run execute if score @e[limit=1,type=armor_stand,name=TeamSelector] temp = @e[limit=1,type=armor_stand,name=TeamSelector] blueTeam run title @p title [{"text":"You are team ","color":"white"},{"text":"RED","color":"red"}]
execute if score @e[limit=1,type=armor_stand,name=TeamSelector] blueTeam >= @e[limit=1,type=armor_stand,name=TeamSelector] redTeam run execute if score @e[limit=1,type=armor_stand,name=TeamSelector] temp = @e[limit=1,type=armor_stand,name=TeamSelector] blueTeam run scoreboard players add @e[type=armor_stand,name=TeamSelector] redTeam 1

function asb:team_check