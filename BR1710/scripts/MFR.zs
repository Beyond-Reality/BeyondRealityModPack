import mods.gregtech.AlloySmelter;
import mods.nei.NEI;
import mods.ic2.Compressor;

var redstonecable = <MineFactoryReloaded:cable.redstone:2>;
var redstonecable1 = <MineFactoryReloaded:cable.redstone:3>;
var machineblock = <MineFactoryReloaded:machineblock>;
var rawrubber = <MineFactoryReloaded:rubber.raw>;
var aluminumPlate = <ore:plateAluminium>;
var steelrod = <ore:stickSteel>;
var casing = <gregtech:gt.blockmachines:11>;
val blockPlastic = <MineFactoryReloaded:plastic>;
val ingotMeatCooked = <MineFactoryReloaded:meat.ingot.cooked>;
val ingotMeatRaw = <MineFactoryReloaded:meat.ingot.raw>;
val nuggetMeatCooked = <MineFactoryReloaded:meat.nugget.cooked>;
val nuggetMeatRaw = <MineFactoryReloaded:meat.nugget.raw>;
val blockMeatCooked = <MineFactoryReloaded:brick:13>;
val blockMeatRaw = <MineFactoryReloaded:brick:12>;
val ingotMeatCookedGT = <gregtech:gt.metaitem.01:11893>;

# MFR Changes

# Attempt to fix Ore-Dictionary derp
<ore:listAllMeatRaw>.remove(ingotMeatRaw);
<ore:ingotMeatRaw>.remove(ingotMeatRaw);
<ore:nuggetMeatRaw>.remove(nuggetMeatRaw);
<ore:blockMeatRaw>.remove(blockMeatRaw);
<ore:listAllMeatCooked>.remove(ingotMeatRaw);
<ore:ingotMeatCooked>.remove(ingotMeatRaw);
<ore:nuggetMeatCooked>.remove(nuggetMeatRaw);
<ore:blockMeatCooked>.remove(blockMeatRaw);
furnace.remove(ingotMeatCookedGT);

# Disable RedNet Energy Cable
recipes.remove(redstonecable);
recipes.remove(redstonecable1);

# MFR Casing
recipes.remove(machineblock);
recipes.addShaped(machineblock, [[aluminumPlate,steelrod,aluminumPlate],
                                                                [steelrod,casing,steelrod],
                                                                [aluminumPlate,steelrod,aluminumPlate]]);

# MFR Rubber
furnace.remove(<*>, rawrubber);
AlloySmelter.addRecipe(<gregtech:gt.metaitem.01:2880>, rawrubber, <gregtech:gt.metaitem.01:8538>, 100, 2);

// BLock of SugarCharcoal require compressor
recipes.remove(<MineFactoryReloaded:brick:15>);
Compressor.addRecipe(<MineFactoryReloaded:brick:15>, <MineFactoryReloaded:sugarcharcoal> * 9);

// Plastic block require compressor and the default 4 plate does not match 9 plates of Gregtech blockPlastic
recipes.remove(blockPlastic);
