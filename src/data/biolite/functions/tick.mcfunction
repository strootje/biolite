---
tag: 'minecraft:tick'
---

# chunk -> process
execute at @a[tag=!optout, nbt={Dimension: 0}] positioned ~-8 ~ ~-8 as @e[tag=bl_marker, tag=!init, tag=!done, sort=nearest, limit=1] at @s unless block ~ 0 ~ #biolite:markers run function biolite:chunk/process

# marker -> kill markers that are no longer needed
execute as @e[tag=bl_marker, tag=!init, tag=done] at @s run function biolite:entities/marker/kill_if_done

# marker -> summon marker in unmarked chunk
execute at @a[tag=!optout, nbt={Dimension: 0}] unless block ~ 0 ~ #biolite:markers run function biolite:entities/marker/summon
