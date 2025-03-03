advancement revoke @s only sky_artifacts:consume_freeze_time

tellraw @a [{"text":"[Sky Artifacts] The Sky was "},{"color":"#A3EAFF","text":"Frozen "},{"text":"by "},{"selector":"@s"},{"text":"!"}]

#juice
execute positioned ~ ~1.8 ~ run particle item{item:"clock"} ^ ^ ^1 0.1 0.1 0.1 0.05 3 normal
execute positioned ~ ~1.8 ~ run particle item{item:"ice"} ^ ^ ^1 0.1 0.1 0.1 0.05 50 normal
playsound minecraft:block.glass.break player @s ~ ~ ~ 0.5 1.2

schedule clear sky_artifacts:unfreeze_time
schedule function sky_artifacts:unfreeze_time 560s
gamerule doDaylightCycle false