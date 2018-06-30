# GraviSuiteReloaded.zs Tweaks

import minetweaker.item.IItemStack;
import mods.nei.NEI;

// Ingredients

val lead = <minecraft:lead>;
val itemArmorNanoChestplate  = <IC2:itemArmorNanoChestplate:*>;
val itemNanoSaber = <IC2:itemNanoSaber:*>;
val itemToolChainsaw = <IC2:itemToolChainsaw:*>;
val itemToolDrill = <IC2:itemToolDrill:*>;
val itemToolDDrill = <IC2:itemToolDDrill:*>;
val itemToolHoe = <IC2:itemToolHoe:*>;
val itemToolIridiumDrill = <IC2:itemToolIridiumDrill:*>;
val energyPack = <IC2:itemArmorEnergypack:*>;
val plasmaLauncher = <IC2:plasmaLauncher:*>;
val windMeter = <IC2:windmeter:*>;

val itemMiscQuantumCircuit = <GraviSuiteReloaded:ItemMiscQuantumCircuit:*>;
val itemArmorAdvancedJetpack = <GraviSuiteReloaded:ItemArmorAdvancedJetpack:*>;
val itemArmorLappack = <GraviSuiteReloaded:ItemArmorLappack:*>;
val itemArmorQuantumLappack = <GraviSuiteReloaded:ItemArmorQuantumLappack:*>;
val itemWeaponQuantumSaber = <GraviSuiteReloaded:ItemWeaponQuantumSaber:*>;
val itemToolTheThingamabob = <GraviSuiteReloaded:ItemToolTheThingamabob:*>;
val itemToolTheChopper = <GraviSuiteReloaded:ItemToolTheChopper:*>;
val itemArmorAdvancedNanoChestplate = <GraviSuiteReloaded:ItemArmorAdvancedNanoChestplate:*>;

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

// This mod items

val ItemMiscQuantumCircuit = <GraviSuiteReloaded:ItemMiscQuantumCircuit>;
val ItemArmorAdvancedJetpack = <GraviSuiteReloaded:ItemArmorAdvancedJetpack>;
val ItemArmorLappack = <GraviSuiteReloaded:ItemArmorLappack>;
val ItemArmorQuantumLappack = <GraviSuiteReloaded:ItemArmorQuantumLappack>;
val ItemWeaponQuantumSaber = <GraviSuiteReloaded:ItemWeaponQuantumSaber>;
val ItemToolTheThingamabob = <GraviSuiteReloaded:ItemToolTheThingamabob>;
val ItemToolTheChopper = <GraviSuiteReloaded:ItemToolTheChopper>;
val ItemArmorAdvancedNanoChestplate = <GraviSuiteReloaded:ItemArmorAdvancedNanoChestplate>;

// Allow GT NetherQuartz to Vanilla NetherQuartz conversion in MFR Unifier
<ore:oreNetherQuartz>.add(<gregtech:gt.blockores:1522>);
<ore:oreQuartz>.add(<gregtech:gt.blockores:1522>);
<ore:oreNetherrackNetherQuartz>.add(<minecraft:quartz_ore>);

// Vajra recipe a la Gregtech sauce

recipes.remove(ItemToolTheThingamabob);
recipes.addShaped(ItemToolTheThingamabob, [
  [plateAlloyIridium, circuitMaster, plateAlloyIridium],
  [circuitMaster, drillHV, circuitMaster],
  [robotArmEV, batteryMaster  , robotArmEV]
]);

<ore:craftingToolVajra>.add(ItemToolTheThingamabob);
<ore:craftingToolPickaxe>.add(ItemToolTheThingamabob);
<ore:craftingToolAxe>.add(ItemToolTheThingamabob);
<ore:craftingToolShovel>.add(ItemToolTheThingamabob);

<ore:craftingToolSaw>.add(ItemToolTheChopper);

<ore:craftingToolBlade>.add(ItemWeaponQuantumSaber);
<ore:craftingToolSword>.add(ItemWeaponQuantumSaber);

// Advanced Jetpack a la Gregtech sauce
recipes.removeShaped(ItemArmorAdvancedJetpack, [
  [<IC2:itemDensePlates:5>, <IC2:itemBatCrystal>, <IC2:itemDensePlates:5>],
  [<IC2:itemPartCircuitAdv>, <IC2:itemArmorJetpackElectric>, <IC2:itemPartCircuitAdv>],
  [<IC2:itemDensePlates:5>, <IC2:itemArmorEnergypack>, <IC2:itemDensePlates:5>]
]);

recipes.addShaped(ItemArmorAdvancedJetpack, [
  [<ore:plateDenseSteel>, <ore:batteryElite>, <ore:plateDenseSteel>],
  [<ore:circuitAdvanced>, <IC2:itemArmorJetpackElectric>.anyDamage(), <ore:circuitAdvanced>],
  [<ore:plateDenseSteel>, <IC2:itemArmorEnergypack>.anyDamage(), <ore:plateDenseSteel>],
]);


// Quantum Lappack a la Gregtech sauce

recipes.remove(ItemArmorQuantumLappack);
recipes.addShaped(ItemArmorQuantumLappack, [
  [plateAlloyIridium, circuitMaster, plateAlloyIridium],
  [batteryMaster, itemArmorLappack, batteryMaster],
  [batteryMaster, plateAlloyIridium, batteryMaster]
]);

// The Chopper ChainSaw a la Gregtech sauce
recipes.remove(ItemToolTheChopper);
recipes.addShaped(ItemToolTheChopper, [
  [lead, lead, lead],
  [electricPistonHV, chainSawHV, electricPistonHV],
  [circuitAdvanced, robotArmHV, circuitAdvanced]
]);

// Lappack oredicted recipe

recipes.remove(ItemArmorLappack);
recipes.addShaped(ItemArmorLappack, [
  [circuitAdvanced, plateAlloyAdvanced, circuitAdvanced],
  [batteryMaster, energyPack, batteryMaster],
  [plateAlloyAdvanced, null, plateAlloyAdvanced]
]);

// Quantum Sabre ordicted recipe

recipes.remove(ItemWeaponQuantumSaber);
recipes.addShaped(ItemWeaponQuantumSaber, [
  [plateAlloyIridium, plateAlloyAdvanced],
  [plateAlloyIridium, itemNanoSaber],
  [plateAlloyIridium, batteryMaster, plateAlloyIridium]
]);

// Now Unused

recipes.remove(ItemMiscQuantumCircuit);
NEI.hide(ItemMiscQuantumCircuit);

// Advanced Nano ChestPlate

recipes.remove(ItemArmorAdvancedNanoChestplate);
recipes.addShaped(ItemArmorAdvancedNanoChestplate, [
  [cableGt01Platinum, itemArmorAdvancedJetpack, cableGt01Platinum],
  [circuitAdvanced, itemArmorNanoChestplate, circuitAdvanced],
  [cableGt01Platinum, itemArmorAdvancedJetpack, cableGt01Platinum]
]);



