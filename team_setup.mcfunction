# scoreboard setup
scoreboard objectives add playerKills playerKillCount
scoreboard objectives setdisplay sidebar playerKills

# create blue team
team add blue
team modify blue color blue
team modify blue nametagVisibility always
team modify blue friendlyFire false

# create red team
team add red
team modify red color red
team modify red nametagVisibility always
team modify red friendlyFire false