$time set $(time)

tellraw @a [{"text":"[Sky Artifacts] "},{"selector":"@s"},{"text":" used a Timestone!"}]

#juice
playsound minecraft:block.bell.use player @a ~ ~ ~ 1 0.7
function sky_artifacts:item_particle_macro with entity @s SelectedItem

# remove item
execute unless data entity @s {playerGameType:1} run item modify entity @s weapon.mainhand sky_artifacts:reduce

scoreboard players set @s sky_artifacts_cooldown 3
schedule function sky_artifacts:lower_cooldown 1t

