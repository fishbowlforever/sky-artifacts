advancement revoke @s only sky_artifacts:consume_empty_timestone

execute store result storage sky_artifacts:values time int 1 run time query daytime
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{sky_artifacts:"timestone"}},Slot:-106b}]}] run execute store result storage sky_artifacts:values time int 1 run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".time
function sky_artifacts:give_timestone with storage sky_artifacts:values

#juice
playsound minecraft:block.tuff.fall player @s ~ ~ ~