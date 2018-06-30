// IC2.zs tweaks

// Ore Dictionary Stuffs

<ore:stoneBasalt>.add(<IC2:blockBasalt>);

// Uranium block require compressor
recipes.remove(<IC2:blockMetal:3>);

// Fixes Advanced Scanner uncraftable
recipes.remove(<IC2:itemScannerAdv>);
recipes.addShaped(<IC2:itemScannerAdv>, [
  [<IC2:itemCasing:3>, <ore:batteryElite>, <IC2:itemCasing:3>],
  [<ore:dustGlowstone>, <ore:circuitAdvanced>, <ore:dustGlowstone>],
  [<ore:craftingWireGold>, <IC2:itemScanner>.anyDamage(), <ore:craftingWireGold>]
]);

// Fix macerating brick
//Macerator.addRecipe(<minecraft:brick>, <gregtech:gt.metaitem.01:2625>);
