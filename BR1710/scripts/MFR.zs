import mods.gregtech.AlloySmelter;

# MFR Changes

# Disable RedNet Energy Cable
recipes.remove(<MineFactoryReloaded:tile.mfr.cable.redstone:2>);
recipes.remove(<MineFactoryReloaded:tile.mfr.cable.redstone:3>);

# MFR Casing
recipes.remove(<MineFactoryReloaded:tile.mfr.machineblock>);
recipes.addShaped(<MineFactoryReloaded:tile.mfr.machineblock>, [[<gregtech:gt.metaitem.01:17019>,<gregtech:gt.metaitem.01:23305>,<gregtech:gt.metaitem.01:17019>],
                                                                [<gregtech:gt.metaitem.01:23305>,<gregtech:gt.blockmachines:11>,<gregtech:gt.metaitem.01:23305>],
                                                                [<gregtech:gt.metaitem.01:17019>,<gregtech:gt.metaitem.01:23305>,<gregtech:gt.metaitem.01:17019>]]);
																
# MFR Rubber
furnace.remove(<*>, <MineFactoryReloaded:item.mfr.rubber.raw>);
AlloySmelter.addRecipe(<gregtech:gt.metaitem.01:2880>, <MineFactoryReloaded:item.mfr.rubber.raw>, <gregtech:gt.metaitem.01:8538>, 100, 2);