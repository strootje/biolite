# chunk -> mark as processed
execute if block ~ ~ ~ #biolite:bedrocks run function biolite:chunk/process_mark

# execute tags
function #biolite:initial

# marker -> spread (in all 4 directions)
execute unless score #marker.nospread biolite.options matches 1.. run function biolite:chunk/process_spread

# mark as done
execute run tag @s add done
