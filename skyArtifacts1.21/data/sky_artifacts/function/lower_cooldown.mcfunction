execute as @e[type=minecraft:player] if score @s sky_artifacts_cooldown matches 1.. run scoreboard players remove @s sky_artifacts_cooldown 1 
execute as @e[type=minecraft:player] if score @s sky_artifacts_cooldown matches 1.. run schedule function sky_artifacts:lower_cooldown 1t