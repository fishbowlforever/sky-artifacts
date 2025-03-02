# give timestone first important, else might be consumed very quickly
execute store result storage sky_artifacts:values time int 1 run time query daytime
execute if entity @p[nbt={Inventory:[{components:{"minecraft:custom_data":{sky_artifacts:"timestone"}},Slot:-106b}]}] run execute store result storage sky_artifacts:values time int 1 run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".time
function sky_artifacts:give_timestone with storage sky_artifacts:values

# remove item
execute unless data entity @s {playerGameType:1} run item modify entity @s weapon.mainhand sky_artifacts:reduce

scoreboard players set @s sky_artifacts_cooldown 5
schedule function sky_artifacts:lower_cooldown 1t

#juice
playsound minecraft:block.tuff.fall player @s ~ ~ ~