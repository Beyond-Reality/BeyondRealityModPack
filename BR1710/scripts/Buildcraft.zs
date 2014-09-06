# Buildcraft Minetweaker Changes

# Remove BC Quarry
recipes.remove(<BuildCraft|Factory:machineBlock>);

# BC Pump
recipes.remove(<BuildCraft|Factory:miningWellBlock>);
recipes.addShaped(<BuildCraft|Factory:miningWellBlock>, [[<ore:plateSteel>,<ore:blockGlass>,<ore:plateSteel>],
                                                        [<BuildCraft|Silicon:redstoneChipset>,<minecraft:iron_pickaxe>,<BuildCraft|Silicon:redstoneChipset>],
                                                        [<ore:plateSteel>,<gregtech:gt.metaitem.02:31057>,<ore:plateSteel>]]);
