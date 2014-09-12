# MFR Changes

# Disable RedNet Energy Cable
recipes.remove(<MineFactoryReloaded:tile.mfr.cable.redstone:2>);
recipes.remove(<MineFactoryReloaded:tile.mfr.cable.redstone:3>);

# MFR Casing
recipes.remove(<MineFactoryReloaded:tile.mfr.machineblock>);
recipes.addShaped(<MineFactoryReloaded:tile.mfr.machineblock>, [[<gregtech:gt.metaitem.01:17019>,<gregtech:gt.metaitem.01:23305>,<gregtech:gt.metaitem.01:17019>],
                                                                [<gregtech:gt.metaitem.01:23305>,<gregtech:gt.blockmachines:11>,<gregtech:gt.metaitem.01:23305>],
                                                                [<gregtech:gt.metaitem.01:17019>,<gregtech:gt.metaitem.01:23305>,<gregtech:gt.metaitem.01:17019>]]);