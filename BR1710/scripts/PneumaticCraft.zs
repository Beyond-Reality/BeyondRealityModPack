import mods.gregtech.ImplosionCompressor;

var tinyPileDarkAshes = <gregtech:gt.metaitem.01:816>;

ImplosionCompressor.addRecipe([<PneumaticCraft:ingotIronCompressed> *9, tinyPileDarkAshes], <minecraft:iron_ingot> * 9, 1);

recipes.remove(<PneumaticCraft:plasticPlant:4>);
recipes.addShapeless(<PneumaticCraft:plasticPlant:4>, [<gregtech:gt.metaitem.02:32418>]);
recipes.remove(<PneumaticCraft:plasticPlant:5>);
recipes.addShapeless(<PneumaticCraft:plasticPlant:5>, [<gregtech:gt.metaitem.02:32429>]);
recipes.removeShapeless(<minecraft:dye:4>, [<PneumaticCraft:plasticPlant:4>]);
