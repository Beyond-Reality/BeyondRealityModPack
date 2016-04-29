# Railcraft.zs tweaks

import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import mods.railcraft.RockCrusher;
import mods.ic2.Compressor;

# Ingredients

val barsIron = <ore:barsIron>;
val batteryMaster = <ore:batteryMaster>;
val blockGlass = <ore:blockGlass>;
val blockHopper = <ore:blockHopper>;
val blockSteel = <ore:blockSteel>;
val brickedSteelHull = <gregtech:gt.blockmachines:4>;
val bucketEmpty = <ore:bucketEmpty>;
val cableGt01Platinum = <ore:cableGt01Platinum>;
val circuitAdvanced = <ore:circuitAdvanced>;
val circuitBasic = <ore:circuitBasic>;
val craftingAnvil = <ore:craftingAnvil>;
val craftingFurnace = <ore:craftingFurnace>;
val craftingPiston = <ore:craftingPiston>;
val craftingToolHardHammer = <ore:craftingToolHardHammer>;
val craftingToolSaw = <ore:craftingToolSaw>;
val craftingToolWrench = <ore:craftingToolWrench>;
val dispenser = <minecraft:dispenser>;
val dustRedstone = <ore:dustRedstone>;
val fireCharge = <minecraft:fire_charge>;
val fuelCoke = <ore:fuelCoke>;
val gearGold = <ore:gearGold>;
val gearIron = <ore:gearIron>;
val gearSteel = <ore:gearSteel>;
val gemDiamond = <ore:gemDiamond>;
val heavyWeightedPressurePlate = <minecraft:heavy_weighted_pressure_plate>;
val ingotBrick = <ore:ingotBrick>;
val lever = <minecraft:lever>;
val logWood = <ore:logWood>;
val mineCart = <minecraft:minecart>;
val pearlEnder = <minecraft:ender_pearl>;
val plateGold = <ore:plateGold>;
val paneGlass = <ore:paneGlass>;
val plateSteel = <ore:plateSteel>;
val plateAnyIron = <ore:plateAnyIron>;
val plateIron = <ore:plateIron>;
val plateTin = <ore:plateTin>;
val redstoneLamp = <minecraft:redstone_lamp>;
val sand = <ore:sand>;
val stone = <ore:stone>;
val stoneObsidian = <ore:stoneObsidian>;
val stonePressurePlate = <minecraft:stone_pressure_plate>;

# This Mod Items

val automatedSteamTrap = <Railcraft:machine.alpha:10>;
val blockCoalCoke = <Railcraft:cube>;
val energyDetector = <Railcraft:detector:10>;
val commercialSteamEngine = <Railcraft:machine.beta:8>;
val cokeOvenBricks = <Railcraft:machine.alpha:7>;
val detectorAge = <Railcraft:detector:11>;
val detectorAnimal = <Railcraft:detector:7>;
val detectorTank = <Railcraft:detector:8>;
val disposalTrack = <Railcraft:track:2264>;
val electricFeederUnit = <Railcraft:machine.epsilon:0>;
val electricLocomotive = <Railcraft:cart.loco.electric>;
val fluidLoader = <Railcraft:machine.gamma:4>;
val fluidUnloader = <Railcraft:machine.gamma:5>;
val highPressureBoilerTank = <Railcraft:machine.beta:4>;
val hobbyistsSteamEngine = <Railcraft:machine.beta:7>;
val industrialSteamEngine = <Railcraft:machine.beta:9>;
val ironTankWall = <Railcraft:machine.beta:0>;
val ironTankGauge = <Railcraft:machine.beta:1>;
val ironTankValve = <Railcraft:machine.beta:2>;
val lapotronLoader = <Railcraft:upgrade.lapotron:0>;
val liquidFueledBoilerFirebox = <Railcraft:machine.beta:6>;
val manualSteamTrap = <Railcraft:machine.alpha:9>;
val passiveAnchor = <Railcraft:machine.alpha:13>;
val rollingMachine = <Railcraft:machine.alpha:8>;
val sandyCobbleStone = <Railcraft:brick.sandy:5>;
val sandyBlock = <Railcraft:brick.sandy:2>;
val sandyBricks = <Railcraft:brick.sandy>;
val sandyBricksFitted = <Railcraft:brick.sandy:1>;
val sandyStoneEtched = <Railcraft:brick.sandy:4>;
val sandyStoneOrnate = <Railcraft:brick.sandy:3>;
val solidFueledBoilerFirebox = <Railcraft:machine.beta:5>;
val standardRail = <Railcraft:part.rail:0>;
val steamLocomotive = <Railcraft:cart.loco.steam.solid>;
val steamOven = <Railcraft:machine.alpha:3>;
val steelAnvil = <Railcraft:anvil>;
val steelTankWall = <Railcraft:machine.beta:13>;
val steelTankGauge = <Railcraft:machine.beta:14>;
val steelTankValve = <Railcraft:machine.beta:15>;
val woodenTie = <Railcraft:part.tie:0>;
val worldAnchor = <Railcraft:machine.alpha>;

# Foreign Output Items

val dustMarble = <gregtech:gt.metaitem.01:2845>;
val dustStone = <gregtech:gt.metaitem.01:2299>;

# Ore-Dictionary Registrations

<ore:blockCoalCoke>.add(blockCoalCoke);
<ore:blockSandy>.add(sandyBricks);
<ore:blockSandy>.add(sandyBricksFitted);
<ore:blockSandy>.add(sandyBlock);
<ore:blockSandy>.add(sandyStoneOrnate);
<ore:blockSandy>.add(sandyStoneEtched);
<ore:blockSandy>.add(sandyCobbleStone);
<ore:craftingAnvil>.add(steelAnvil);
<ore:sandyBricks>.add(sandyBricks);
<ore:sandyBricksFitted>.add(sandyBricksFitted);
<ore:sandyBlock>.add(sandyBlock);
<ore:sandyStoneOrnate>.add(sandyStoneOrnate);
<ore:sandyStoneEtched>.add(sandyStoneEtched);
<ore:sandyCobbleStone>.add(sandyCobbleStone);

# Recipe Changes

val slabMeta = [
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
  10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
  20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
  30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
  40, 41, 42, 43
] as int[];

// Ingredients for slabs
val slabIngredients = [
// 0-9
  <Railcraft:brick.sandy:0>,
  <Railcraft:brick.infernal:0>,
  <Railcraft:cube:1>,
  <ore:blockSnow>,
  <ore:blockIce>,
  <minecraft:packed_ice>,
  <ore:blockIron>,
  <ore:blockGold>,
  <ore:blockDiamond>,
  <Railcraft:brick.frostbound:0>,
// 10-19
  <Railcraft:brick.quarried:0>,
  <Railcraft:brick.bleachedbone:0>,
  <Railcraft:brick.bloodstained:0>,
  <Railcraft:brick.abyssal:0>,
  <Railcraft:brick.sandy:1>,
  <Railcraft:brick.infernal:1>,
  <Railcraft:brick.frostbound:1>,
  <Railcraft:brick.quarried:1>,
  <Railcraft:brick.bleachedbone:1>,
  <Railcraft:brick.bloodstained:1>,
// 20-29
  <Railcraft:brick.abyssal:1>,
  <Railcraft:brick.nether:1>,
  <Railcraft:brick.sandy:2>,
  <Railcraft:brick.infernal:2>,
  <Railcraft:brick.frostbound:2>,
  <Railcraft:brick.quarried:2>,
  <Railcraft:brick.bleachedbone:2>,
  <Railcraft:brick.bloodstained:2>,
  <Railcraft:brick.abyssal:2>,
  <Railcraft:brick.nether:2>,
// 30-39
  <Railcraft:brick.sandy:5>,
  <Railcraft:brick.infernal:5>,
  <Railcraft:brick.frostbound:5>,
  <Railcraft:brick.quarried:5>,
  <Railcraft:brick.bleachedbone:5>,
  <Railcraft:brick.bloodstained:5>,
  <Railcraft:brick.abyssal:5>,
  <Railcraft:brick.nether:5>,
  <Railcraft:cube:8>,
  stoneObsidian,
// 40-43
  <ore:blockCopper>,
  <ore:blockTin>,
  <ore:blockLead>,
  <ore:blockSteel>
] as IIngredient[];

// Slabs requires saw for crafting
for meta in slabMeta {
  var slabItem = <Railcraft:slab>.definition.makeStack(meta);
  var blockItem = slabIngredients[meta];
  recipes.remove(slabItem);
  recipes.addShaped(slabItem * 2, [[craftingToolSaw, blockItem]]);
}

// Coke Oven Bricks
recipes.remove(cokeOvenBricks);
recipes.addShaped(cokeOvenBricks, [
  [sand, ingotBrick, sand],
  [ingotBrick, sand, ingotBrick],
  [sand, ingotBrick, sand]
]);

recipes.addShaped(cokeOvenBricks, [
  [null, sandyBricks, null],
  [null, sand, null],
  [null, sandyBricks, null]
]);

// Steam Oven
recipes.remove(steamOven);
recipes.addShaped(steamOven, [
  [plateSteel, plateSteel, plateSteel],
  [plateSteel, craftingFurnace, plateSteel],
  [plateSteel, plateSteel, plateSteel]
]);

// Manual Steam Trap
recipes.remove(manualSteamTrap);
recipes.addShaped(manualSteamTrap, [
  [null, barsIron, null],
  [null, highPressureBoilerTank, null],
  [null, dispenser, null]
]);

// Automated Steam Trap
recipes.remove(automatedSteamTrap);
recipes.addShaped(automatedSteamTrap, [
  [null, barsIron, null],
  [dustRedstone, highPressureBoilerTank, dustRedstone],
  [null, dispenser, null]
]);

recipes.addShaped(automatedSteamTrap, [
  [dustRedstone, manualSteamTrap, dustRedstone]
]);


// Hobbyist's Steam Engine more oredict
recipes.remove(hobbyistsSteamEngine);
recipes.addShaped(hobbyistsSteamEngine, [
  [plateGold, plateGold, plateGold],
  [craftingToolHardHammer, blockGlass, craftingToolWrench],
  [gearGold, craftingPiston, gearGold]
]);

// Commercial Steam Engine more oredict
recipes.remove(commercialSteamEngine);
recipes.addShaped(commercialSteamEngine, [
  [plateIron, plateIron, plateIron],
  [craftingToolHardHammer, blockGlass, craftingToolWrench],
  [gearIron, craftingPiston, gearIron]
]);

// Industrial Steam Engine more oredict
recipes.remove(industrialSteamEngine);
recipes.addShaped(industrialSteamEngine, [
  [plateSteel, plateSteel, plateSteel],
  [craftingToolHardHammer, blockGlass, craftingToolWrench],
  [gearSteel, craftingPiston, gearSteel]
]);

// Rolling Machine
recipes.remove(rollingMachine);
recipes.addShaped(rollingMachine, [
  [plateSteel, industrialSteamEngine, plateSteel],
  [circuitBasic, craftingPiston, circuitBasic],
  [plateSteel, craftingAnvil, plateSteel]
]);

// Passive Anchor
recipes.remove(passiveAnchor);
recipes.addShaped(passiveAnchor, [
  [plateIron, stoneObsidian, plateIron],
  [gemDiamond, pearlEnder, gemDiamond],
  [plateIron, stoneObsidian, plateIron]
]);

// Detector - Energy
recipes.remove(energyDetector);
recipes.addShaped(energyDetector, [
  [plateTin, plateTin, plateTin],
  [plateTin, stonePressurePlate, plateTin],
  [plateTin, plateTin, plateTin]
]);

// Steam Locomotive
recipes.remove(steamLocomotive);
recipes.addShaped(steamLocomotive.withTag({model: "railcraft:default"}) * 1, [
  [highPressureBoilerTank, highPressureBoilerTank, brickedSteelHull],
  [highPressureBoilerTank, highPressureBoilerTank, brickedSteelHull],
  [barsIron, mineCart, mineCart]
]);

// Electric Locomotive
recipes.remove(electricLocomotive);
recipes.addShaped(electricLocomotive.withTag({model: "railcraft:default"}) * 1, [
  [redstoneLamp, plateSteel, craftingToolWrench],
  [plateSteel, electricFeederUnit, plateSteel],
  [blockSteel, mineCart, blockSteel]
]);

// Iron Tank Wall
recipes.removeShaped(ironTankWall, [
  [<Railcraft:part.plate:0>, <Railcraft:part.plate:0>],
  [<Railcraft:part.plate:0>, <Railcraft:part.plate:0>]
]);

recipes.addShaped(ironTankWall, [
  [plateAnyIron, plateAnyIron, craftingToolHardHammer],
  [plateAnyIron, plateAnyIron, craftingToolWrench]
]);

// Iron Tank Gauge
recipes.removeShaped(ironTankGauge, [
  [<minecraft:glass_pane>, plateAnyIron, <minecraft:glass_pane>],
  [plateAnyIron, <minecraft:glass_pane>, plateAnyIron],
  [<minecraft:glass_pane>, plateAnyIron, <minecraft:glass_pane>]
]);

recipes.addShaped(ironTankGauge, [
  [paneGlass, plateAnyIron, paneGlass],
  [plateAnyIron, paneGlass, plateAnyIron],
  [paneGlass, plateAnyIron, paneGlass]
]);

// Iron Tank Valve
recipes.removeShaped(ironTankValve, [
  [<minecraft:iron_bars>, <Railcraft:part.plate:0>, <minecraft:iron_bars>],
  [<Railcraft:part.plate:0>, lever, <Railcraft:part.plate:0>],
  [<minecraft:iron_bars>, <Railcraft:part.plate:0>, <minecraft:iron_bars>]
]);

recipes.removeShaped(ironTankValve, [
  [<minecraft:iron_bars>, plateAnyIron, <minecraft:iron_bars>],
  [plateAnyIron, lever, plateAnyIron],
  [<minecraft:iron_bars>, plateAnyIron, <minecraft:iron_bars>]
]);

recipes.addShaped(ironTankValve, [
  [barsIron, plateAnyIron, barsIron],
  [plateAnyIron, lever, plateAnyIron],
  [barsIron, plateAnyIron, barsIron]
]);

// Steel Tank Wall
recipes.removeShaped(steelTankWall, [
  [<Railcraft:part.plate:1>, <Railcraft:part.plate:1>],
  [<Railcraft:part.plate:1>, <Railcraft:part.plate:1>]
]);

recipes.addShaped(steelTankWall, [
  [plateSteel, plateSteel, craftingToolHardHammer],
  [plateSteel, plateSteel, craftingToolWrench]
]);

// Steel Tank Gauge
recipes.removeShaped(steelTankGauge, [
  [<minecraft:glass_pane>, plateSteel, <minecraft:glass_pane>],
  [plateSteel, <minecraft:glass_pane>, plateSteel],
  [<minecraft:glass_pane>, plateSteel, <minecraft:glass_pane>]
]);

recipes.addShaped(steelTankGauge, [
  [paneGlass, plateSteel, paneGlass],
  [plateSteel, paneGlass, plateSteel],
  [paneGlass, plateSteel, paneGlass]
]);

// Steel Tank Valve
recipes.removeShaped(steelTankValve, [
  [<minecraft:iron_bars>, <Railcraft:part.plate:1>, <minecraft:iron_bars>],
  [<Railcraft:part.plate:1>, lever, <Railcraft:part.plate:1>],
  [<minecraft:iron_bars>, <Railcraft:part.plate:1>, <minecraft:iron_bars>]
]);

recipes.removeShaped(steelTankValve, [
  [<minecraft:iron_bars>, plateSteel, <minecraft:iron_bars>],
  [plateSteel, lever, plateSteel],
  [<minecraft:iron_bars>, plateSteel, <minecraft:iron_bars>]
]);

recipes.addShaped(steelTankValve, [
  [barsIron, plateSteel, barsIron],
  [plateSteel, lever, plateSteel],
  [barsIron, plateSteel, barsIron]
]);

// Solid Fueled Boiler Firebox
recipes.removeShaped(solidFueledBoilerFirebox, [
  [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
  [<minecraft:brick>, fireCharge, <minecraft:brick>],
  [<minecraft:brick>, craftingFurnace, <minecraft:brick>]
]);

recipes.addShaped(solidFueledBoilerFirebox, [
  [ingotBrick, ingotBrick, ingotBrick],
  [ingotBrick, fireCharge, ingotBrick],
  [ingotBrick, craftingFurnace, ingotBrick]
]);

// Liquid Fueled Boiler Firebox
recipes.removeShaped(liquidFueledBoilerFirebox, [
  [plateSteel, <minecraft:bucket>, plateSteel],
  [<minecraft:iron_bars>, fireCharge, <minecraft:iron_bars>],
  [plateSteel, craftingFurnace, plateSteel]
]);

recipes.addShaped(liquidFueledBoilerFirebox, [
  [plateSteel, bucketEmpty, plateSteel],
  [barsIron, fireCharge, barsIron],
  [plateSteel, craftingFurnace, plateSteel]
]);

// Disposal Track
recipes.removeShaped(disposalTrack, [
  [standardRail, woodenTie, standardRail],
  [standardRail, <Railcraft:part.plate:1>, standardRail],
  [standardRail, woodenTie, standardRail]
]);

recipes.addShaped(disposalTrack, [
  [standardRail, woodenTie, standardRail],
  [standardRail, plateSteel, standardRail],
  [standardRail, woodenTie, standardRail]
]);

// Detector - Animal

recipes.removeShaped(detectorAnimal, [
  [<minecraft:log:0>, <minecraft:log:0>, <minecraft:log:0>],
  [<minecraft:log:0>, stonePressurePlate, <minecraft:log:0>],
  [<minecraft:log:0>, <minecraft:log:0>, <minecraft:log:0>]
]);

recipes.addShaped(detectorAnimal, [
  [logWood, logWood, logWood],
  [logWood, stonePressurePlate, logWood],
  [logWood, logWood, logWood]
]);

// Detector - Age

recipes.removeShaped(detectorAge, [
  [<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>],
  [<minecraft:log:1>, stonePressurePlate, <minecraft:log:1>],
  [<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>]
]);

recipes.addShaped(detectorAge, [
  [logWood, logWood, logWood],
  [logWood, heavyWeightedPressurePlate, logWood],
  [logWood, logWood, logWood]
]);

// Fluid Loader

recipes.removeShaped(fluidLoader, [
  [<minecraft:glass>, <minecraft:hopper>, <minecraft:glass>],
  [<minecraft:glass>, null, <minecraft:glass>],
  [<minecraft:glass>, detectorTank, <minecraft:glass>]
]);

recipes.addShaped(fluidLoader, [
  [blockGlass, blockHopper, blockGlass],
  [blockGlass, null, blockGlass],
  [blockGlass, detectorTank, blockGlass]
]);

// Fluid Unloader

recipes.removeShaped(fluidUnloader, [
  [<minecraft:glass>, detectorTank, <minecraft:glass>],
  [<minecraft:glass>, null, <minecraft:glass>],
  [<minecraft:glass>, <minecraft:hopper>, <minecraft:glass>]
]);

recipes.addShaped(fluidUnloader, [
  [blockGlass, detectorTank, blockGlass],
  [blockGlass, null, blockGlass],
  [blockGlass, blockHopper, blockGlass]
]);

// Lapotron Loader

recipes.remove(lapotronLoader);
recipes.addShaped(lapotronLoader,[
  [blockGlass, blockGlass, blockGlass],
  [cableGt01Platinum, batteryMaster, cableGt01Platinum],
  [blockGlass, circuitAdvanced, blockGlass]
]);

// Fix extraneous Stone crushing recipe
RockCrusher.removeRecipe(stone);
RockCrusher.addRecipe(<minecraft:stone>, false, false, [dustStone], [1.0]);

// BLock of Coal Coke require compressor
recipes.remove(blockCoalCoke);
Compressor.addRecipe(blockCoalCoke, fuelCoke * 9);

// Marble crushing
for blockMarble in <ore:blockMarble>.items {
  RockCrusher.addRecipe(blockMarble, false, false, [dustMarble * 4], [1.0]);
}
