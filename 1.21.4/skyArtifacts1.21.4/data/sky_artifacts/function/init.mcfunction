scoreboard objectives add sky_artifacts_left minecraft.custom:minecraft.leave_game
scoreboard objectives add sky_artifacts_cooldown dummy
scoreboard objectives add sky_artifacts_time dummy

advancement revoke @a only sky_artifacts:consume_freeze_time
advancement revoke @a only sky_artifacts:consume_rainstone
advancement revoke @a only sky_artifacts:consume_thunderstone
advancement revoke @a only sky_artifacts:consume_empty_timestone