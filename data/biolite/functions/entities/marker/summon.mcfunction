summon minecraft:area_effect_cloud ~ 0 ~ {Tags: [biolite.marker, init], Duration: 2000000}
execute as @e[tag=biolite.marker, tag=init, sort=nearest, limit=1] at @s run function biolite:entities/marker/summon_init
