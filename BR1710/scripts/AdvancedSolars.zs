# AdvancedSolars.zs

# Ingredients

val circuitAdvanced = <ore:circuitAdvanced>;
val plateAlloyAdvanced = <ore:plateAlloyAdvanced>;
val plateAlloyCarbon = <ore:plateAlloyCarbon>;
val plateAlloyIridium = <ore:plateAlloyIridium>;
val blockLapis = <ore:blockLapis>;
val solarPanel = <gregtech:gt.metaitem.01:32750>;

val craftingWireGold = <ore:craftingWireGold>;
val cableIV = <ore:cableGt01Platinum>;

val advancedMachineCasing = <IC2:blockMachine:12>;
val coalChunk = <IC2:itemPartCoalChunk>;
val evTransformer = <IC2:blockElectric:6>;
val hvTransformer = <IC2:blockElectric:5>;
val lvTransformer =  <IC2:blockElectric:3>;
val advancedAssemblingMachine = <gregtech:gt.blockmachines:212>;
val nanoSuitHelmet = <IC2:itemArmorNanoHelmet:27>;
val quantumSuitHelmet = <IC2:itemArmorQuantumHelmet:27>;

# This Mod Items

val advancedSolarPanel = <AdvancedSolarPanel:BlockAdvSolarPanel:0>;
val hybridSolarPanel = <AdvancedSolarPanel:BlockAdvSolarPanel:1>;
val advancedSolarHelmet = <AdvancedSolarPanel:advanced_solar_helmet:*>;
val hybridSolarHelmet = <AdvancedSolarPanel:hybrid_solar_helmet:*>;
val plateGlassIrradiant = <AdvancedSolarPanel:asp_crafting_items:5>;
val plateReinforcedIrradiant = <AdvancedSolarPanel:asp_crafting_items:8>;
val plateEnrichedSunnarium = <AdvancedSolarPanel:asp_crafting_items:3>;
val plateEnrichedSunnariumAlloy = <AdvancedSolarPanel:asp_crafting_items:4>;
val molecularTransformer = <AdvancedSolarPanel:BlockMolecularTransformer>;
val ultimateSolarHelmet = <AdvancedSolarPanel:ultimate_solar_helmet:*>;
val ultimateHybridSolarPanel = <AdvancedSolarPanel:BlockAdvSolarPanel:2>;

# Recipes tweaks

// Advanced Solar Panel
recipes.remove(advancedSolarPanel);
recipes.addShaped(advancedSolarPanel, [
  [plateGlassIrradiant, plateGlassIrradiant, plateGlassIrradiant],
  [plateAlloyAdvanced, solarPanel, plateAlloyAdvanced],
  [circuitAdvanced, plateReinforcedIrradiant, circuitAdvanced]
]);

// Hybrid Solar Panel
recipes.remove(hybridSolarPanel);
recipes.addShaped(hybridSolarPanel, [
  [plateAlloyCarbon, blockLapis, plateAlloyCarbon],
  [plateAlloyIridium, advancedSolarPanel, plateAlloyIridium],
  [circuitAdvanced, plateEnrichedSunnarium, circuitAdvanced]
]);

recipes.addShapeless(hybridSolarPanel * 8, [ultimateHybridSolarPanel]);

// Ultimate Hybrid Solar Panel
recipes.remove(ultimateHybridSolarPanel);
recipes.addShaped(ultimateHybridSolarPanel, [
  [null, blockLapis, null],
  [coalChunk, advancedSolarPanel, coalChunk],
  [plateEnrichedSunnariumAlloy, coalChunk, plateEnrichedSunnariumAlloy]
]);

recipes.addShaped(ultimateHybridSolarPanel, [
  [hybridSolarPanel, hybridSolarPanel, hybridSolarPanel],
  [hybridSolarPanel, circuitAdvanced, hybridSolarPanel],
  [hybridSolarPanel, hybridSolarPanel, hybridSolarPanel]
]);

// Molecular Transformer
recipes.remove(molecularTransformer);
recipes.addShaped(molecularTransformer, [
  [advancedMachineCasing, evTransformer, advancedMachineCasing],
  [circuitAdvanced, advancedAssemblingMachine, circuitAdvanced],
  [advancedMachineCasing, evTransformer, advancedMachineCasing]
]);

// Advanced Solar helm
recipes.remove(advancedSolarHelmet);
recipes.addShaped(advancedSolarHelmet, [
  [null, advancedSolarPanel, null],
  [circuitAdvanced, nanoSuitHelmet, circuitAdvanced],
  [craftingWireGold, lvTransformer, craftingWireGold]
]);

//  Hybrid Solar helm
recipes.remove(hybridSolarHelmet);
recipes.addShaped(hybridSolarHelmet, [
  [null, hybridSolarPanel, null],
  [circuitAdvanced, quantumSuitHelmet, circuitAdvanced],
  [cableIV, hvTransformer, cableIV]
]);

// Ultimate Hybrid Solar helm
recipes.remove(ultimateSolarHelmet);
recipes.addShaped(ultimateSolarHelmet, [
  [null, ultimateHybridSolarPanel, null],
  [circuitAdvanced, quantumSuitHelmet, circuitAdvanced],
  [cableIV, hvTransformer, cableIV]
]);

recipes.addShaped(ultimateSolarHelmet, [
  [null, ultimateHybridSolarPanel, null],
  [null, hybridSolarHelmet, null],
  [null, cableIV, null]
]);

