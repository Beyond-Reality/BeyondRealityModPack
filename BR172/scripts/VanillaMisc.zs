# Tinkers Construct Minetweaker Changes

recipes.addShaped(<minecraft:stone_pressure_plate>, [[<minecraft:stone>,<minecraft:stone>]]);

# Remove ability to smelt iron nuggets into steel
furnace.remove(<*>, <ore:nuggetIron>);

# Add AE2 normal furnace recipe for silicon (Thanks Greg)
furnace.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:5>, <appliedenergistics2:item.ItemMultiMaterial:3>);
furnace.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:5>, <appliedenergistics2:item.ItemMultiMaterial:2>);

# ForgeMicroblocks stone saw fix
recipes.remove(<ForgeMicroblock:sawStone>);
recipes.addShaped(<ForgeMicroblock:sawStone>,[[<minecraft:stick>,<TConstruct:toolRod:1>,<TConstruct:toolRod:1>],
                                                [<minecraft:stick>, <minecraft:flint>,<TConstruct:toolRod:1>]]);