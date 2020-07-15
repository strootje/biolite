# chunk -> process
execute at @a[tag=!global.ignore] positioned ~-8 ~ ~-8 as @e[tag=biolite.marker, tag=!init, tag=!done, sort=nearest, limit=1] at @s unless block ~ 0 ~ #biolite:markers run function biolite:chunk/process

# marker -> cleanup markers
execute as @e[tag=biolite.marker, tag=!init, tag=done] at @s run function biolite:entities/marker/cleanup

# marker -> summon marker
execute at @a[tag=!global.ignore] unless block ~ 0 ~ #biolite:markers run function biolite:entities/marker/summon
