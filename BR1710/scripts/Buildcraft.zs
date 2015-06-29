import mods.gregtech.Assembler;
import mods.buildcraft.Refinery;
# Buildcraft Minetweaker Changes

var gear = <gregtech:gt.metaitem.02:31500>;
var arm = <gregtech:gt.metaitem.01:32650>;



#BC Quarry
recipes.remove(<BuildCraft|Builders:machineBlock>);
Assembler.addRecipe(<BuildCraft|Builders:machineBlock>, gear *4, <gregtech:gt.metaitem.01:32650>, 1600, 2);

# BC Pump
recipes.remove(<BuildCraft|Factory:miningWellBlock>);
recipes.addShaped(<BuildCraft|Factory:miningWellBlock>, [[<ore:plateSteel>,<ore:blockGlass>,<ore:plateSteel>],
                                                        [<BuildCraft|Silicon:redstoneChipset>,<minecraft:iron_pickaxe>,<BuildCraft|Silicon:redstoneChipset>],
                                                        [<ore:plateSteel>,<gregtech:gt.metaitem.02:31057>,<ore:plateSteel>]]);
														
Refinery.addRecipe(<liquid:fuel>*2, 120, 2, <liquid:oilgc>,<liquid:oilgc>);
