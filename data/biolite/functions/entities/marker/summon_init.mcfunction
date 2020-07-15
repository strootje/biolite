# position entity in the corner
execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] .0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] .0625

# kill entity if a previous entity exists
execute at @s if entity @e[tag=biolite.marker, tag=!init, distance=...1] run kill @s

# finalize
tag @s add alive
tag @s remove init
