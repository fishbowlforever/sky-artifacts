# remove item
execute unless data entity @s {playerGameType:1} run item modify entity @s weapon.mainhand sky_artifacts:reduce

scoreboard players set @s sky_artifacts_cooldown 3 
schedule function sky_artifacts:lower_cooldown 1t

#juice
execute positioned ~ ~1.8 ~ run particle item{item:"lapis_lazuli"} ^ ^ ^1 0.1 0.1 0.1 0.05 30 normal
playsound minecraft:entity.item.break player @s ~ ~ ~ 0.1

execute if predicate sky_artifacts:any_rain run weather clear 1800s
execute if predicate sky_artifacts:any_rain run tellraw @a [{"text":"[Sky Artifacts] A "},{"color":"blue","text":"Thunderstone "},{"text":"stopped the Rain. Thank "},{"selector":"@s"},{"text":"!"}]

execute unless predicate sky_artifacts:any_rain run weather thunder 280s
execute unless predicate sky_artifacts:any_rain run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 normal @s
execute unless predicate sky_artifacts:any_rain run playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~ ~ 1 0.6
execute unless predicate sky_artifacts:any_rain run tellraw @a [{"text":"[Sky Artifacts] "},{"selector":"@s"},{"text":" angered Zeus with a "},{"color":"blue","text":"Thunderstone "},{"text":"."}]