import mods.gregtech.AlloySmelter;
import mods.nei.NEI;

var redstonecable = <MineFactoryReloaded:cable.redstone:2>;
var redstonecable1 = <MineFactoryReloaded:cable.redstone:3>;
var machineblock = <MineFactoryReloaded:machineblock>;
var rawrubber = <MineFactoryReloaded:rubber.raw>;
var aluminumPlate = <ore:plateAluminium>;
var steelrod = <ore:stickSteel>;
var casing = <gregtech:gt.blockmachines:11>;

# MFR Changes

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


