// appliedenergistics2.zs Tweaks

import mods.ic2.Compressor;

// Ingredients
val basicCard = <appliedenergistics2:item.ItemMultiMaterial:25>;
val dustEnderPearl = <ore:dustEnderPearl>;
val dustFluix = <ore:dustFluix>;
val dustGlowstone = <ore:dustGlowstone>;
val dustRedstone = <ore:dustRedstone>;
val gemCertusQuartz = <ore:gemCertusQuartz>;
val gemChargedCertusQuartz = <appliedenergistics2:item.ItemMultiMaterial:1>;
val gemNetherQuartz = <ore:gemNetherQuartz>;
val gemFluix = <ore:gemFluix>;
val ingotIron = <ore:ingotIron>;
val logicProcessor = <appliedenergistics2:item.ItemMultiMaterial:22>;
val quartzGlass = <appliedenergistics2:tile.BlockQuartzGlass>;

// Recipes outputs
val annihilationCore = <appliedenergistics2:item.ItemMultiMaterial:44>;
val capacityCard = <appliedenergistics2:item.ItemMultiMaterial:27>;
val circuitLogic = <appliedenergistics2:item.ItemMultiMaterial:22>;
val blankPattern = <appliedenergistics2:item.ItemMultiMaterial:52>;
val blockCertusQuartz  = <appliedenergistics2:tile.BlockQuartz>;
val blockFluix = <appliedenergistics2:tile.BlockFluix>;
val energyCell = <appliedenergistics2:tile.BlockEnergyCell>;
val formationCore = <appliedenergistics2:item.ItemMultiMaterial:43>;
val lightDetector = <appliedenergistics2:tile.BlockLightDetector>;
val componentStorage1k = <appliedenergistics2:item.ItemMultiMaterial:35>;
val viewCell = <appliedenergistics2:item.ItemViewCell>;
val wirelessBooster = <appliedenergistics2:item.ItemMultiMaterial:42>;

// Fix recipes to not spend Pure/Charged Quartz when not required

// Formation Core
recipes.remove(formationCore);
recipes.addShaped(formationCore, [
  [gemCertusQuartz, dustFluix, circuitLogic]
]);

// Annihilation Core
recipes.remove(annihilationCore);
recipes.addShaped(annihilationCore, [
  [gemNetherQuartz, dustFluix, circuitLogic]
]);

// Certus Quartz Block require compressor
<ore:blockCertusQuartz>.add(blockCertusQuartz);
recipes.remove(blockCertusQuartz);

// Fluix Block require compressor
recipes.remove(blockFluix);
Compressor.addRecipe(blockFluix, gemFluix * 4);

// Light Detector Fixture
recipes.remove(lightDetector);
recipes.addShaped(lightDetector, [
  [gemNetherQuartz, ingotIron]
]);

// Energy Cell
recipes.remove(energyCell);
recipes.addShaped(energyCell, [
  [gemChargedCertusQuartz, dustFluix, gemChargedCertusQuartz],
  [dustFluix, quartzGlass, dustFluix],
  [gemChargedCertusQuartz, dustFluix, gemChargedCertusQuartz]
]);

// Blank Pattern
recipes.remove(blankPattern);
recipes.addShaped(blankPattern, [
  [quartzGlass, dustGlowstone, quartzGlass],
  [dustGlowstone, gemCertusQuartz, dustGlowstone],
  [ingotIron, ingotIron, ingotIron]
]);

// Capacity Card
recipes.remove(capacityCard);
recipes.addShaped(capacityCard, [
  [basicCard, gemCertusQuartz]
]);

// 1k ME Storage Component
recipes.remove(componentStorage1k);
recipes.addShaped(componentStorage1k, [
  [dustRedstone, gemCertusQuartz, dustRedstone],
  [gemCertusQuartz, logicProcessor, gemCertusQuartz],
  [dustRedstone, gemCertusQuartz, dustRedstone]
]);

// Wireless Booster
recipes.remove(wirelessBooster);
recipes.addShaped(wirelessBooster, [
  [dustFluix, gemChargedCertusQuartz, dustEnderPearl],
  [ingotIron, ingotIron, ingotIron]
]);

// View Cell
recipes.remove(viewCell);
recipes.addShaped(viewCell, [
  [quartzGlass, dustRedstone, quartzGlass],
  [dustRedstone, gemCertusQuartz, dustRedstone],
  [ingotIron, ingotIron, ingotIron]
]);
