summon minecraft:area_effect_cloud ~ 0 ~ {Tags: [bl_marker, init], Duration: 2000000}
execute as @e[tag=bl_marker, tag=init, sort=nearest, limit=1] at @s run function biolite:entities/marker/init
