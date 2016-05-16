// GraviSuiteReloaded.zs Tweaks

import minetweaker.item.IItemStack;
import mods.nei.NEI;

val lead = <minecraft:lead>;

val itemArmorNanoChestplate  = <IC2:itemArmorNanoChestplate>;
val itemNanoSaber = <IC2:itemNanoSaber>;
val itemToolChainsaw = <IC2:itemToolChainsaw>;
val itemToolDrill = <IC2:itemToolDrill>;
val itemToolDDrill = <IC2:itemToolDDrill>;
val itemToolHoe = <IC2:itemToolHoe>;
val itemToolIridiumDrill = <IC2:itemToolIridiumDrill>;
val energyPack = <IC2:itemArmorEnergypack>;
val plasmaLauncher = <IC2:plasmaLauncher>;
val windMeter = <IC2:windmeter>;

val batteryMaster = <ore:batteryMaster>;
val cableGt01Platinum =   <ore:cableGt01Platinum>;
val chainSawHV = <gregtech:gt.metatool.01:114>;
val circuitAdvanced = <ore:circuitAdvanced>;
val circuitMaster = <ore:circuitMaster>;
val drillHV = <gregtech:gt.metatool.01:104>;
val electricPistonHV = <gregtech:gt.metaitem.01:32642>;
val plateAlloyAdvanced = <ore:plateAlloyAdvanced>;
val plateAlloyIridium = <ore:plateAlloyIridium>;
val robotArmEV = <gregtech:gt.metaitem.01:32653>;
val robotArmHV = <gregtech:gt.metaitem.01:32652>;

val itemMiscQuantumCircuit = <GraviSuiteReloaded:ItemMiscQuantumCircuit>;
val itemArmorAdvancedJetpack = <GraviSuiteReloaded:ItemArmorAdvancedJetpack>;
val itemArmorLappack = <GraviSuiteReloaded:ItemArmorLappack>;
val itemArmorQuantumLappack = <GraviSuiteReloaded:ItemArmorQuantumLappack>;
val itemWeaponQuantumSaber = <GraviSuiteReloaded:ItemWeaponQuantumSaber>;
val itemToolTheThingamabob = <GraviSuiteReloaded:ItemToolTheThingamabob>;
val itemToolTheChopper = <GraviSuiteReloaded:ItemToolTheChopper>;
val itemArmorAdvancedNanoChestplate = <GraviSuiteReloaded:ItemArmorAdvancedNanoChestplate>;


// Vajra recipe a la Gregtech sauce

recipes.remove(itemToolTheThingamabob);
recipes.addShaped(itemToolTheThingamabob, [
  [plateAlloyIridium, circuitMaster, plateAlloyIridium],
  [circuitMaster, drillHV, circuitMaster],
  [robotArmEV, batteryMaster, robotArmEV]
]);

<ore:craftingToolVajra>.add(itemToolTheThingamabob);
<ore:craftingToolPickaxe>.add(itemToolTheThingamabob);
<ore:craftingToolAxe>.add(itemToolTheThingamabob);
<ore:craftingToolShovel>.add(itemToolTheThingamabob);

<ore:craftingToolSaw>.add(itemToolTheChopper);

<ore:craftingToolBlade>.add(itemWeaponQuantumSaber);
<ore:craftingToolSword>.add(itemWeaponQuantumSaber);

// Advanced Jetpack a la Gregtech sauce
recipes.removeShaped(itemArmorAdvancedJetpack, [
  [<IC2:itemDensePlates:5>, <IC2:itemBatCrystal>, <IC2:itemDensePlates:5>],
  [<IC2:itemPartCircuitAdv>, <IC2:itemArmorJetpackElectric>, <IC2:itemPartCircuitAdv>],
  [<IC2:itemDensePlates:5>, <IC2:itemArmorEnergypack>, <IC2:itemDensePlates:5>]
]);

recipes.addShaped(itemArmorAdvancedJetpack, [
  [<ore:plateDenseSteel>, <ore:batteryElite>, <ore:plateDenseSteel>],
  [<ore:circuitAdvanced>, <IC2:itemArmorJetpackElectric>.anyDamage(), <ore:circuitAdvanced>],
  [<ore:plateDenseSteel>, <IC2:itemArmorEnergypack>.anyDamage(), <ore:plateDenseSteel>],
]);


// Quantum Lappack a la Gregtech sauce

recipes.remove(itemArmorQuantumLappack);
recipes.addShaped(itemArmorQuantumLappack, [
  [plateAlloyIridium, circuitMaster, plateAlloyIridium],
  [batteryMaster, itemArmorLappack, batteryMaster],
  [batteryMaster, plateAlloyIridium, batteryMaster]
]);

// The Chopper ChainSaw a la Gregtech sauce
recipes.remove(itemToolTheChopper);
recipes.addShaped(itemToolTheChopper, [
  [lead, lead, lead],
  [electricPistonHV, chainSawHV, electricPistonHV],
  [circuitAdvanced, robotArmHV, circuitAdvanced]
]);

// Lappack oredicted recipe

recipes.remove(itemArmorLappack);
recipes.addShaped(itemArmorLappack, [
  [circuitAdvanced, plateAlloyAdvanced, circuitAdvanced],
  [batteryMaster, energyPack, batteryMaster],
  [plateAlloyAdvanced, null, plateAlloyAdvanced]
]);

// Quantum Sabre ordicted recipe

recipes.remove(itemWeaponQuantumSaber);
recipes.addShaped(itemWeaponQuantumSaber, [
  [plateAlloyIridium, plateAlloyAdvanced],
  [plateAlloyIridium, itemNanoSaber],
  [plateAlloyIridium, batteryMaster, plateAlloyIridium]
]);

// Now Unused

recipes.remove(itemMiscQuantumCircuit);
NEI.hide(itemMiscQuantumCircuit);

// Advanced Nano ChestPlate

recipes.remove(itemArmorAdvancedNanoChestplate);
recipes.addShaped(itemArmorAdvancedNanoChestplate, [
  [cableGt01Platinum, itemArmorAdvancedJetpack, cableGt01Platinum],
  [circuitAdvanced, itemArmorNanoChestplate, circuitAdvanced],
  [cableGt01Platinum, itemArmorAdvancedJetpack, cableGt01Platinum]
]);



