import mods.gregtech.AlloySmelter;
import mods.nei.NEI;


# MFR Changes

# Disable RedNet Energy Cable
recipes.remove(<MineFactoryReloaded:tile.mfr.cable.redstone:2>);
NEI.addEntry(<MineFactoryReloaded:tile.mfr.cable.redstone:2>.withTag({display: {Lore: ["Beyond Reality,", "This is disabled!"]}}));
recipes.remove(<MineFactoryReloaded:tile.mfr.cable.redstone:3>);
NEI.addEntry(<MineFactoryReloaded:tile.mfr.cable.redstone:3>.withTag({display: {Lore: ["Beyond Reality,", "This is disabled!"]}}));


# MFR Casing
recipes.remove(<MineFactoryReloaded:tile.mfr.machineblock>);
recipes.addShaped(<MineFactoryReloaded:tile.mfr.machineblock>, [[<gregtech:gt.metaitem.01:17019>,<gregtech:gt.metaitem.01:23305>,<gregtech:gt.metaitem.01:17019>],
                                                                [<gregtech:gt.metaitem.01:23305>,<gregtech:gt.blockmachines:11>,<gregtech:gt.metaitem.01:23305>],
                                                                [<gregtech:gt.metaitem.01:17019>,<gregtech:gt.metaitem.01:23305>,<gregtech:gt.metaitem.01:17019>]]);
																
# MFR Rubber
furnace.remove(<*>, <MineFactoryReloaded:item.mfr.rubber.raw>);
AlloySmelter.addRecipe(<gregtech:gt.metaitem.01:2880>, <MineFactoryReloaded:item.mfr.rubber.raw>, <gregtech:gt.metaitem.01:8538>, 100, 2);


