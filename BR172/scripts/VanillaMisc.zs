# Tinkers Construct Minetweaker Changes

recipes.addShaped(<minecraft:stone_pressure_plate>, [[<minecraft:stone>,<minecraft:stone>]]);

# Remove ability to smelt iron nuggets into steel
furnace.remove(<*>, <ore:nuggetIron>);

furnace.remove(<*>, <appliedenergistics2:item.ItemMultiMaterial:2>);
furnace.remove(<*>, <appliedenergistics2:item.ItemMultiMaterial:3>);
furnace.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:5>, <appliedenergistics2:item.ItemMultiMaterial:3>);
furnace.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:5>, <appliedenergistics2:item.ItemMultiMaterial:2>);
