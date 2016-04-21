# ModularPowersuit.zs tweaks

import mods.gregtech.Assembler;
import mods.gregtech.FluidCanner;

# Ingredients

val advanceCircuitBoard = <gregtech:gt.metaitem.01:32711>;
val batteryElite = <ore:batteryElite>;
val batteryMaster = <ore:batteryMaster>;
val batteryUltimate = <ore:batteryUltimate>;
val blockSteel = <ore:blockSteel>;
val blockWool = <ore:blockWool>;
val bucketEmpty = <ore:bucketEmpty>;
val cellNitrogen = <ore:cellNitrogen>;
val circuitAdvanced = <ore:circuitAdvanced>;
val circuitBasic = <ore:circuitBasic>;
val circuitBoardEmpty = <gregtech:gt.metaitem.01:32719>;
val circuitData = <ore:circuitData>;
val circuitGood = <ore:circuitGood>;
val circuitMaster = <ore:circuitMaster>;
val craftingLensBlue = <ore:craftingLensBlue>;
val craftingLensGreen = <ore:craftingLensGreen>;
val craftingLensRed = <ore:craftingLensRed>;
val craftingToolScrewdriver = <ore:craftingToolScrewdriver>;
val craftingToolSolderingIron = <ore:craftingToolSolderingIron>;
val craftingToolWrench = <ore:craftingToolWrench>;
val crystalQuartzite = <ore:crystalQuartzite>;
val foilRubber = <ore:foilRubber>;
val glassReinforced = <ore:glassReinforced>;
val ic1 = <gregtech:gt.integrated_circuit:1>;
val ingotNeodymium = <ore:ingotNeodymium>;
val liquidnitrogen = <liquid:liquidnitrogen>;
val lubricant = <liquid:lubricant>;
val minecraftstring = <minecraft:string>;
val paneGlass = <ore:paneGlass>;
val pipeRestrictiveMediumOsmium = <ore:pipeRestrictiveMediumOsmium>;
val plateAlloyCarbon = <ore:plateAlloyCarbon>;
val plateAlloyIridium = <ore:plateAlloyIridium>;
val plateAluminium = <ore:plateAluminium>;
val plateBrass = <ore:plateBrass>;
val plateChrome = <ore:plateChrome>;
val plateElectrum = <ore:plateElectrum>;
val plateEmerald = <ore:plateEmerald>;
val plateGlass = <ore:plateGlass>;
val plateMagnalium = <ore:plateMagnalium>;
val plateSteel = <ore:plateSteel>;
val transformerMV = <gregtech:gt.blockmachines:22>;
val wireAnnealedCopper = <ore:wireGt02AnnealedCopper>;
val wireFineSolderingAlloy = <ore:wireFineSolderingAlloy>;
val wireGt01Graphene = <ore:wireGt01Graphene>;
val wireSilver = <ore:wireGt02Silver>;
val wireSuperconductor = <ore:wireGt02Superconductor>;


# Foreign Items

# This mod items

val componentArtificialMuscle = <powersuits:powerArmorComponent:16>;
val componentCarbonMyofiber = <powersuits:powerArmorComponent:13>;
val componentComputerChip = <powersuits:powerArmorComponent:19>;
val componentControlCircuit = <powersuits:powerArmorComponent:14>;
val componentFieldEmitter = <powersuits:powerArmorComponent:11>;
val componentGliderWing = <powersuits:powerArmorComponent:3>;
val componentHVCapacitor = <powersuits:powerArmorComponent:7>;
val componentIonThruster = <powersuits:powerArmorComponent:4>;
val componentLaserEmitter = <powersuits:powerArmorComponent:12>;
val componentLiquidNitrogen = <powersuits:powerArmorComponent:21>;
val componentLVCapacitor = <powersuits:powerArmorComponent:5>;
val componentMagnet = <powersuits:powerArmorComponent:18>;
val componentMVCapacitor = <powersuits:powerArmorComponent:6>;
val componentMyofiberGel = <powersuits:powerArmorComponent:15>;
val componentParachute = <powersuits:powerArmorComponent:8>;
val componentPlatingAdvanced = <powersuits:powerArmorComponent:10>;
val componentPlatingBasic = <powersuits:powerArmorComponent:9>;
val componentRubberHose = <powersuits:powerArmorComponent:20>;
val componentServo = <powersuits:powerArmorComponent:2>;
val componentSolarPanel = <powersuits:powerArmorComponent:17>;
val componentSolenoid = <powersuits:powerArmorComponent:1>;
val componentWiring = <powersuits:powerArmorComponent:0>;
val powerArmorBoots = <powersuits:item.powerArmorBoots>;
val powerArmorChestplate = <powersuits:item.powerArmorChestplate>;
val powerArmorHelmet = <powersuits:item.powerArmorHelmet>;
val powerArmorLeggings = <powersuits:item.powerArmorLeggings>;
val powerFist = <powersuits:item.powerFist>;
val tinkerTable = <powersuits:tile.tinkerTable>;

# BeyondReality Custom Recipes

recipes.addShaped(componentPlatingBasic, [
  [plateMagnalium, plateMagnalium, plateMagnalium],
  [craftingToolWrench, circuitBasic, craftingToolScrewdriver],
  [plateMagnalium, plateMagnalium, plateMagnalium]]);

recipes.addShaped(componentPlatingAdvanced, [
  [plateAlloyIridium, plateAlloyIridium, plateAlloyIridium],
  [craftingToolWrench, circuitAdvanced, craftingToolScrewdriver],
  [plateAlloyIridium, plateAlloyIridium, plateAlloyIridium]]);

recipes.addShaped(componentControlCircuit, [
  [componentWiring, circuitAdvanced, plateElectrum],
  [circuitData, circuitMaster, circuitAdvanced],
  [plateElectrum, craftingToolScrewdriver, componentWiring]]);

recipes.addShaped(componentLaserEmitter, [
  [crystalQuartzite, circuitGood, crystalQuartzite],
  [craftingLensRed, craftingLensBlue, craftingLensGreen],
  [crystalQuartzite, craftingToolScrewdriver, crystalQuartzite]]);

recipes.addShaped(tinkerTable, [
  [circuitAdvanced, plateGlass, circuitAdvanced],
  [plateSteel, plateEmerald, plateSteel],
  [plateSteel, blockSteel, plateSteel]]);

recipes.addShaped(powerArmorHelmet, [
  [plateAluminium, plateGlass, plateAluminium],
  [componentWiring, circuitData, componentWiring],
  [plateAluminium, craftingToolWrench, plateAluminium]]);

recipes.addShaped(powerArmorChestplate, [
  [plateAluminium, componentWiring, plateAluminium],
  [plateAluminium, circuitData, plateAluminium],
  [plateAluminium, craftingToolWrench, plateAluminium]]);

recipes.addShaped(powerArmorBoots, [
  [componentWiring, null, componentWiring],
  [plateAluminium, circuitData, plateAluminium],
  [null, craftingToolWrench, null]]);

recipes.addShaped(powerArmorLeggings, [
  [componentWiring, null, componentWiring],
  [plateAluminium, circuitData, plateAluminium],
  [plateAluminium, craftingToolWrench, plateAluminium]]);

recipes.addShaped(powerFist, [
  [plateAluminium, craftingToolWrench, plateAluminium],
  [plateAluminium, componentWiring, plateAluminium],
  [null, circuitData, null]]);

recipes.addShaped(componentWiring * 4, [
  [wireAnnealedCopper, wireAnnealedCopper, wireAnnealedCopper],
  [wireSilver, wireSilver, wireSilver],
  [wireAnnealedCopper, craftingToolWrench, wireAnnealedCopper]]);

recipes.addShaped(componentParachute, [
  [blockWool, blockWool, blockWool],
  [minecraftstring, null, minecraftstring],
  [plateAlloyCarbon, cellNitrogen, plateAlloyCarbon]]);

recipes.addShaped(componentLVCapacitor, [
  [plateSteel, craftingToolWrench, plateSteel],
  [batteryElite, circuitData, batteryElite],
  [plateSteel, plateSteel, plateSteel]]);

recipes.addShaped(componentMVCapacitor, [
  [plateMagnalium, craftingToolWrench, plateMagnalium],
  [batteryMaster, circuitData, batteryMaster],
  [plateMagnalium, plateMagnalium, plateMagnalium]]);

recipes.addShaped(componentHVCapacitor, [
  [plateChrome, craftingToolWrench, plateChrome],
  [<gregtech:gt.metaitem.01:32597>, circuitData, <gregtech:gt.metaitem.01:32597>],
  [plateChrome, plateChrome, plateChrome]]);

recipes.addShaped(componentSolenoid, [
  [componentWiring, craftingToolScrewdriver, componentWiring],
  [componentWiring, plateSteel, componentWiring],
  [componentWiring, plateSteel, componentWiring]]);

recipes.addShaped(componentGliderWing, [
  [craftingToolScrewdriver, plateMagnalium, circuitAdvanced],
  [plateMagnalium, plateAlloyCarbon, componentSolenoid],
  [plateMagnalium, null, craftingToolWrench]]);

recipes.addShaped(componentServo, [
  [plateSteel, craftingToolScrewdriver, plateSteel],
  [circuitAdvanced, componentSolenoid, circuitAdvanced],
  [plateSteel, plateBrass, plateSteel]]);

recipes.addShaped(componentFieldEmitter, [
  [plateAlloyIridium, componentSolenoid, plateAlloyIridium],
  [wireSuperconductor, circuitMaster, wireSuperconductor],
  [plateAlloyIridium, componentSolenoid, plateAlloyIridium]]);

recipes.addShaped(componentIonThruster, [
  [plateAlloyIridium, wireSuperconductor, plateAlloyIridium],
  [componentFieldEmitter, componentHVCapacitor, componentFieldEmitter],
  [pipeRestrictiveMediumOsmium, craftingToolWrench, pipeRestrictiveMediumOsmium]]);

recipes.addShaped(componentCarbonMyofiber, [
  [plateAlloyCarbon, wireGt01Graphene, plateAlloyCarbon],
  [plateAlloyCarbon, wireFineSolderingAlloy, plateAlloyCarbon],
  [plateAlloyCarbon, craftingToolSolderingIron, plateAlloyCarbon]
]);

for cellGraphite in <ore:cellGraphite>.items {
  Assembler.addRecipe(componentMyofiberGel, cellGraphite, ic1 , lubricant * 30, 120, 16);
}

recipes.addShaped(componentArtificialMuscle, [
  [componentCarbonMyofiber, foilRubber, componentCarbonMyofiber],
  [componentCarbonMyofiber, componentMyofiberGel, componentCarbonMyofiber],
  [componentCarbonMyofiber, componentMyofiberGel, componentCarbonMyofiber]
]);

recipes.addShaped(componentSolarPanel, [
  [paneGlass, paneGlass, paneGlass],
  [circuitBoardEmpty, circuitBoardEmpty, circuitBoardEmpty],
  [circuitGood, transformerMV, circuitGood]
]);

recipes.addShaped(componentMagnet, [
  [ingotNeodymium, circuitAdvanced, ingotNeodymium],
  [componentSolenoid, componentSolenoid, componentSolenoid],
  [ingotNeodymium, circuitAdvanced, ingotNeodymium]
]);

recipes.addShaped(componentComputerChip, [
  [wireSilver, componentSolenoid, wireSilver],
  [circuitAdvanced, circuitData,  circuitAdvanced],
  [wireSilver, componentSolenoid, wireSilver]
]);

recipes.addShaped(componentRubberHose, [
  [foilRubber, foilRubber, foilRubber],
  [glassReinforced, null, glassReinforced],
  [foilRubber, foilRubber, foilRubber]
]);

for bucket in bucketEmpty.items {
  FluidCanner.addRecipe(componentLiquidNitrogen, bucket, null, liquidnitrogen);
  FluidCanner.addRecipe(bucket, componentLiquidNitrogen, liquidnitrogen, null);
}
