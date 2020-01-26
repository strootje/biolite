# chunk -> mark as processed
execute if block ~ ~ ~ #biolite:bedrocks run function biolite:chunk/mark

# TODO: Figure out chunk

# execute tags
function #biolite:structures
function #biolite:biomes

# marker -> summon (in all 4 directions)
execute as @s[tag=!nospread] positioned ~16 ~ ~ run function biolite:entities/marker/summon
execute as @s[tag=!nospread] positioned ~-16 ~ ~ run function biolite:entities/marker/summon
execute as @s[tag=!nospread] positioned ~ ~ ~16 run function biolite:entities/marker/summon
execute as @s[tag=!nospread] positioned ~ ~ ~-16 run function biolite:entities/marker/summon

# mark as done
execute run tag @s add done
