# Tinkers Construct Minetweaker Changes

recipes.addShaped(<minecraft:stone_pressure_plate>, [[<minecraft:stone>,<minecraft:stone>]]);

# Remove ability to smelt iron nuggets into steel
furnace.remove(<*>, <ore:nuggetIron>);

# Add AE2 normal furnace recipe for silicon (Thanks Greg)
furnace.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:5>, <appliedenergistics2:item.ItemMultiMaterial:3>);
furnace.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:5>, <appliedenergistics2:item.ItemMultiMaterial:2>);

# ForgeMicroblocks stone saw fix
recipes.remove(<ForgeMicroblock:stoneRod>);
recipes.addShaped(<ForgeMicroblock:stoneRod> * 4, [[<minecraft:stone>],[null,<minecraft:stone>]]);

# Warp Book Recipe
recipes.remove(<warpbook:warpbook>);
recipes.addShaped(<warpbook:warpbook>, [[<minecraft:leather>,<minecraft:ender_eye>,<minecraft:leather>],
                                        [<minecraft:ender_eye>,<minecraft:book>,<minecraft:ender_eye>],
                                        [<minecraft:leather>,<minecraft:ender_eye>,<minecraft:leather>]]);
                                        
# Lapis Lamp
recipes.remove(<RandomThings:lapisLamp>);
recipes.addShaped(<RandomThings:lapisLamp> * 4, [[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
                                                [<ore:blockGlass>,<ore:dustLapis>,<ore:blockGlass>],
                                                [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>]]);
                                                
# Caliometric Burner
recipes.remove(<factorization:FzBlock:31>);