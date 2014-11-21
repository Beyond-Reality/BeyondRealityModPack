import mods.gregtech.ImplosionCompressor;

var tinyPileDarkAshes = <gregtech:gt.metaitem.01:816>;

ImplosionCompressor.addRecipe([<PneumaticCraft:ingotIronCompressed> *9, tinyPileDarkAshes], <minecraft:iron_ingot> * 9, 1);

recipes.remove(<PneumaticCraft:plasticPlant:4>);
recipes.addShapeless(<gregtech:gt.metaitem.02:32418>, [<PneumaticCraft:plasticPlant:4>]);
recipes.remove(<PneumaticCraft:plasticPlant:5>);
recipes.addShapeless(<gregtech:gt.metaitem.02:32429>, [<PneumaticCraft:plasticPlant:5>]);
recipes.removeShapeless(<minecraft:dye:4>, [<PneumaticCraft:plasticPlant:4>]);
recipes.removeShapeless(<minecraft:dye:15>, [<PneumaticCraft:plasticPlant:15>]);
