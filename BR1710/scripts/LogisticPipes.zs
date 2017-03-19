# LogisticsPipes.zs tweaks

import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;
import mods.nei.NEI;

# Ingredients

val blockGlass = <ore:blockGlass>;
val chipsetIron = <ore:chipsetIron>;
val chipsetGold = <ore:chipsetGold>;
val chipsetDiamond = <ore:chipsetDiamond>;
val dyeBlue = <ore:dyeBlue>;
val dyeRed = <ore:dyeRed>;
val dustRedstone = <ore:dustRedstone>;
val gearGold = <ore:gearGold>;
val gearSteel = <ore:gearSteel>;
val platePaper = <ore:platePaper>;
val ingotIron = <ore:ingotIron>;

# Foreign Items

val Sign = <minecraft:sign>;

# Internal Items

val AdvancedExtractorMk2 = <LogisticsPipes:item.itemModule:107>;
val AdvancedExtractorMk3 = <LogisticsPipes:item.itemModule:207>;
val BasicLogisticsPipe = <LogisticsPipes:item.PipeItemsBasicLogistics>;
val BlankModule = <LogisticsPipes:item.itemModule:0>;
val CraftingCleanupUpgrade = <LogisticsPipes:item.itemUpgrade:26>;
val CraftingSignCreator = <LogisticsPipes:item.ItemPipeSignCreator>;
val ExtractorMk2Module = <LogisticsPipes:item.itemModule:103>;
val ExtractorMk3Module = <LogisticsPipes:item.itemModule:203>;
val ExtractorModule = <LogisticsPipes:item.itemModule:3>;
val LogisticsSecurityStation = <LogisticsPipes:logisticsSolidBlock:2>;
val ProviderLogisticsPipe = <LogisticsPipes:item.PipeItemsProviderLogistics>;
val ProviderLogisticsPipeMk2 = <LogisticsPipes:item.PipeItemsProviderLogisticsMk2>;
val ProviderModule = <LogisticsPipes:item.itemModule:500>;
val ProviderModuleMk2 = <LogisticsPipes:item.itemModule:501>;
val QuickSortModule = <LogisticsPipes:item.itemModule:5>;
val RemoteOrderer = <LogisticsPipes:item.remoteOrdererItem:0>;
val RequestLogisticsPipe = <LogisticsPipes:item.PipeItemsRequestLogistics>;
val RequestLogisticsPipeMk2 = <LogisticsPipes:item.PipeItemsRequestLogisticsMk2>;

# NEI cleanup

// Unused ComputerCraft
NEI.hide(<LogisticsPipes:item.itemModule:14>);
NEI.hide(<LogisticsPipes:item.itemModule:15>);
NEI.hide(<LogisticsPipes:item.itemUpgrade:40>);

// Glitched / No craft / Virtual
NEI.hide(<LogisticsPipes:logisticsPipeBlock:0>);
NEI.hide(<LogisticsPipes:item.itemUpgrade:44>);
NEI.hide(<LogisticsPipes:item.logisticsFluidContainer:0>);
NEI.hide(<LogisticsPipes:item.brokenItem:0>);

for meta in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15] as int[] {
  NEI.hide(<LogisticsPipes:item.pipeComponents>.definition.makeStack(meta));
}

# Custom Recipes

recipes.remove(CraftingSignCreator);
recipes.addShaped(CraftingSignCreator, [
  [gearGold, null, gearGold],
  [null, Sign, null],
  [null, gearSteel, null]
]);

recipes.remove(LogisticsSecurityStation);
recipes.addShaped(LogisticsSecurityStation, [
  [ingotIron, gearSteel, ingotIron],
  [dustRedstone, BasicLogisticsPipe, dustRedstone],
  [ingotIron, ingotIron, ingotIron]
]);

recipes.remove(QuickSortModule);
recipes.addShaped(QuickSortModule, [
  [dyeBlue, gearSteel, dyeBlue],
  [dustRedstone, BlankModule, dustRedstone]
]);
recipes.addShaped(QuickSortModule, [
  [dyeBlue, chipsetDiamond  , dyeBlue],
  [dustRedstone, BlankModule, dustRedstone]
]);

recipes.remove(RemoteOrderer);
recipes.addShaped(RemoteOrderer, [
  [blockGlass, blockGlass],
  [blockGlass, blockGlass],
  [gearSteel, gearSteel]
]);

recipes.remove(RequestLogisticsPipeMk2);
recipes.addShaped(RequestLogisticsPipeMk2, [
  [gearSteel],
  [RequestLogisticsPipe],
  [dustRedstone]
]);
recipes.addShaped(RequestLogisticsPipeMk2, [
  [chipsetDiamond],
  [RequestLogisticsPipe]
]);

recipes.remove(ExtractorMk3Module);
recipes.addShaped(ExtractorMk3Module, [
  [gearSteel],
  [ExtractorMk2Module]
]);
recipes.addShaped(ExtractorMk3Module, [
  [chipsetDiamond],
  [ExtractorMk2Module]
]);

recipes.remove(ProviderModuleMk2);
recipes.addShaped(ProviderModuleMk2, [
  [gearSteel],
  [ProviderModule]
]);
recipes.addShaped(ProviderModuleMk2, [
  [chipsetDiamond],
  [ProviderModule]
]);

recipes.remove(AdvancedExtractorMk3);
recipes.addShaped(AdvancedExtractorMk3, [
  [gearSteel],
  [AdvancedExtractorMk2]
]);
recipes.addShaped(AdvancedExtractorMk3, [
  [chipsetDiamond],
  [ProviderModule]
]);

recipes.remove(ProviderLogisticsPipeMk2);
recipes.addShaped(ProviderLogisticsPipeMk2, [
  [gearSteel],
  [ProviderLogisticsPipe]
]);
recipes.addShaped(ProviderLogisticsPipeMk2, [
  [chipsetDiamond],
  [ProviderLogisticsPipe]
]);

# Add missing recipes

// CraftingCleanupUpgrade derived from https://github.com/chaos234/LogisticsPipes/blob/38de4258fbd6ce7877472ee27ee41b810246921e/common/logisticspipes/recipes/RecipeManager.java
recipes.addShaped(CraftingCleanupUpgrade, [
  [dustRedstone, dyeRed, dustRedstone],
  [platePaper, chipsetIron, platePaper],
  [dustRedstone, ExtractorMk3Module, dustRedstone]
]);
recipes.addShaped(CraftingCleanupUpgrade, [
  [dustRedstone, dyeRed, dustRedstone],
  [platePaper, chipsetGold, platePaper],
  [dustRedstone, ExtractorMk2Module, dustRedstone]
]);
recipes.addShaped(CraftingCleanupUpgrade, [
  [dustRedstone, dyeRed, dustRedstone],
  [platePaper, chipsetDiamond, platePaper],
  [dustRedstone, ExtractorModule, dustRedstone]
]);

// Undyed Remote Orderer
recipes.addShapeless(RemoteOrderer, [<LogisticsPipes:item.remoteOrdererItem:*>]);

// Dyed Remote Orderer
for dyedRemoteOrderer, dye  in {
  <LogisticsPipes:item.remoteOrdererItem:1> : <ore:dyeBlack>,
  <LogisticsPipes:item.remoteOrdererItem:2> : <ore:dyeRed>,
  <LogisticsPipes:item.remoteOrdererItem:3> : <ore:dyeGreen>,
  <LogisticsPipes:item.remoteOrdererItem:4> : <ore:dyeBrown>,
  <LogisticsPipes:item.remoteOrdererItem:5> : <ore:dyeBlue>,
  <LogisticsPipes:item.remoteOrdererItem:6> : <ore:dyePurple>,
  <LogisticsPipes:item.remoteOrdererItem:7> : <ore:dyeCyan>,
  <LogisticsPipes:item.remoteOrdererItem:8> : <ore:dyeLightGray>,
  <LogisticsPipes:item.remoteOrdererItem:9> : <ore:dyeGray>,
  <LogisticsPipes:item.remoteOrdererItem:10> : <ore:dyePink>,
  <LogisticsPipes:item.remoteOrdererItem:11> : <ore:dyeLime>,
  <LogisticsPipes:item.remoteOrdererItem:12> : <ore:dyeYellow>,
  <LogisticsPipes:item.remoteOrdererItem:13> : <ore:dyeLightBlue>,
  <LogisticsPipes:item.remoteOrdererItem:14> : <ore:dyeMagenta>,
  <LogisticsPipes:item.remoteOrdererItem:15> : <ore:dyeOrange>,
  <LogisticsPipes:item.remoteOrdererItem:16> : <ore:dyeWhite>
  } as IIngredient[IItemStack] {
  recipes.addShapeless(dyedRemoteOrderer, [<LogisticsPipes:item.remoteOrdererItem:*>, dye]);
}
