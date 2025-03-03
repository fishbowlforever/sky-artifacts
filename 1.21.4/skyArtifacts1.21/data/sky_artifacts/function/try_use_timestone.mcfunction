execute if score @s sky_artifacts_left matches 1.. run scoreboard players set @s sky_artifacts_cooldown 0
execute if score @s sky_artifacts_left matches 1.. run scoreboard players set @s sky_artifacts_left 0

execute if score @s sky_artifacts_cooldown matches 1..3 run scoreboard players set @s sky_artifacts_cooldown 3
execute unless score @s sky_artifacts_cooldown matches 1.. run function sky_artifacts:use_timestone with entity @s SelectedItem.components.minecraft:custom_data
advancement revoke @s only sky_artifacts:using_timestone
