import mods.gregtech.ImplosionCompressor;

var tinyPileDarkAshes = <gregtech:gt.metaitem.01:816>;
var compressedIron = <PneumaticCraft:ingotIronCompressed>;

ImplosionCompressor.addRecipe([<PneumaticCraft:ingotIronCompressed> *9, tinyPileDarkAshes], <minecraft:iron_ingot> * 9, 1);

recipes.remove(<PneumaticCraft:plasticPlant:4>);
recipes.addShapeless(<gregtech:gt.metaitem.02:32418>, [<PneumaticCraft:plasticPlant:4>]);
recipes.remove(<PneumaticCraft:plasticPlant:5>);
recipes.addShapeless(<gregtech:gt.metaitem.02:32429>, [<PneumaticCraft:plasticPlant:5>]);
recipes.removeShapeless(<minecraft:dye:4>, [<PneumaticCraft:plasticPlant:4>]);
recipes.removeShapeless(<minecraft:dye:15>, [<PneumaticCraft:plasticPlant:15>]);

recipes.remove(<PneumaticCraft:pressureChamberWall>);
recipes.addShaped(<PneumaticCraft:pressureChamberWall> * 4,[[compressedIron,compressedIron,compressedIron],
					[compressedIron,null,compressedIron],
					[compressedIron,compressedIron,compressedIron]]);

recipes.remove(<PneumaticCraft:pressureChamberValve>);
recipes.addShaped(<PneumaticCraft:pressureChamberValve> * 4,[[compressedIron,compressedIron,compressedIron],
					[compressedIron,<PneumaticCraft:pressureTube>,compressedIron],
					[compressedIron,compressedIron,compressedIron]]);

recipes.remove(<PneumaticCraft:pressureChamberInterface>);
recipes.addShaped(<PneumaticCraft:pressureChamberInterface> * 4,[[compressedIron,<PneumaticCraft:pneumaticCilinder>,compressedIron],
					[compressedIron,<minecraft:hopper>,compressedIron],
					[compressedIron,<PneumaticCraft:pneumaticCilinder>,compressedIron]]);

recipes.remove(<PneumaticCraft:pressureChamberWall:6>);
recipes.addShaped(<PneumaticCraft:pressureChamberWall:6> * 4,[[compressedIron,compressedIron,compressedIron],
					[compressedIron,<ore:glass>,compressedIron],
					[compressedIron,compressedIron,compressedIron]]);

# Ingredients

val circuitAdvanced = <ore:circuitAdvanced>;
val craftingGenerator = <ore:craftingGenerator>;
val plateAlloyAdvanced = <ore:plateAlloyAdvanced>;

val cableIV = <ore:cableGt01Platinum>;

val printedCircuitBoard = <PneumaticCraft:printedCircuitBoard>;
val advancedPressureTube = <PneumaticCraft:advancedPressureTube>;
val turbineRotor = <PneumaticCraft:turbineRotor>;

# This Mod Items

val pneumaticGenerator = <PneumaticCraft:pneumaticGenerator>;
val electricCompressor = <PneumaticCraft:electricCompressor>;
val lpgBucket = <PneumaticCraft:lpgBucket>;

# Recipes tweaks

// Nerf LPG Bucket fuel value

furnace.setFuel(lpgBucket, 30000);


// Pneumatic Generator

recipes.remove(pneumaticGenerator);
recipes.addShaped(pneumaticGenerator, [
  [printedCircuitBoard, circuitAdvanced, plateAlloyAdvanced],
  [advancedPressureTube, turbineRotor, cableIV],
  [printedCircuitBoard, circuitAdvanced, plateAlloyAdvanced]
]);

// Electric Comproessor

recipes.remove(electricCompressor);
recipes.addShaped(electricCompressor, [
  [plateAlloyAdvanced, circuitAdvanced, printedCircuitBoard],
  [cableIV, turbineRotor, advancedPressureTube],
  [plateAlloyAdvanced, craftingGenerator, printedCircuitBoard]
]);
