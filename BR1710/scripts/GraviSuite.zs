# GraviSuite.zs Tweaks
import minetweaker.item.IItemStack;
import mods.nei.NEI;

// Migration from GraviSuite

// GraviSuiteReloaded defines

val itemMiscQuantumCircuit = <GraviSuiteReloaded:ItemMiscQuantumCircuit>;
val itemArmorLappack = <GraviSuiteReloaded:ItemArmorLappack>;
val itemArmorAdvancedJetpack = <GraviSuiteReloaded:ItemArmorAdvancedJetpack>;
val itemArmorAdvancedNanoChestplate = <GraviSuiteReloaded:ItemArmorAdvancedNanoChestplate>;
val itemArmorQuantumLappack = <GraviSuiteReloaded:ItemArmorQuantumLappack>;
val itemWeaponQuantumSaber = <GraviSuiteReloaded:ItemWeaponQuantumSaber>;
val itemToolBigDiamondDrill = <GraviSuiteReloaded:ItemToolBigDiamondDrill>;
val itemToolTheThingamabob = <GraviSuiteReloaded:ItemToolTheThingamabob>;
val itemToolTheChopper = <GraviSuiteReloaded:ItemToolTheChopper>;

// Old GraviSuite defines
val advChainSawDeprecated = <GraviSuite:advChainsaw>;
val advDDrillDeprecated = <GraviSuite:advDDrill>;
val advJetpackDeprecated = <GraviSuite:advJetpack>;
val advLappackDeprecated = <GraviSuite:advLappack>;
val advNanoChestPlateDeprecated = <GraviSuite:advNanoChestPlate>;
val blockRelocatorPortal = <GraviSuite:BlockRelocatorPortal>;
val graviChestPlate = <GraviSuite:graviChestPlate>;
val graviTool = <GraviSuite:graviTool>;
val itemGravitationEngine = <GraviSuite:itemSimpleItem:3>;
val itemCoolingCore = <GraviSuite:itemSimpleItem:2>;
val itemMagnetron = <GraviSuite:itemSimpleItem:4>;
val itemSuperConductor = <GraviSuite:itemSimpleItem:1>;
val itemSuperConductorCover = <GraviSuite:itemSimpleItem:0>;
val itemEngineBoost = <GraviSuite:itemSimpleItem:6>;
val itemVajraCore = <GraviSuite:itemSimpleItem:5>;
val relocator = <GraviSuite:relocator>;
val sonicLauncher = <GraviSuite:sonicLauncher>;
val ultimateLappackDeprecated = <GraviSuite:ultimateLappack>;
val vajraDeprecated = <GraviSuite:vajra>;

val deprecatedItems = [
  blockRelocatorPortal, relocator, graviTool,
  itemCoolingCore, itemGravitationEngine, itemMagnetron,
  itemSuperConductor, itemSuperConductorCover, itemEngineBoost,
  itemVajraCore, sonicLauncher, graviChestPlate
] as IItemStack[];

for item in deprecatedItems
{
  recipes.remove(item);
  NEI.hide(item);
}

// No replacement
NEI.addEntry(graviTool.withTag({display: {Name: "Deprecated GraviTool", Lore: ["This tool has no replacement", "in GraviSuiteReloaded.", "It is to be lost as soon as GraviSuite is removed."]}}));

NEI.addEntry(graviChestPlate.withTag({display: {Name: "Deprecated GraviChestPlate", Lore: ["This armour has no replacement", "in GraviSuiteReloaded.", "It is to be lost as soon as GraviSuite is removed."]}}));

// Migration replacement
recipes.remove(vajraDeprecated);
NEI.addEntry(vajraDeprecated.withTag({display: {Name: "Deprecated Vajra", Lore: ["Use it to craft the new Green Vajra", "AKA: The Thingamabob", "from GraviSuiteReloaded"]}}));
recipes.addShapeless(itemToolTheThingamabob, [vajraDeprecated.anyDamage()]);

recipes.remove(advChainSawDeprecated);
NEI.addEntry(advChainSawDeprecated.withTag({display: {Name: "Deprecated Advanced ChainSaw", Lore: ["Use it to craft", "The Chopper", "from GraviSuiteReloaded"]}}));
recipes.addShapeless(itemToolTheChopper, [advChainSawDeprecated.anyDamage()]);

recipes.remove(advJetpackDeprecated);
NEI.addEntry(advJetpackDeprecated.withTag({display: {Name: "Deprecated Advanced Jetpack", Lore: ["Use it to craft", "An Advanced Jetpack", "from GraviSuiteReloaded"]}}));
recipes.addShapeless(itemArmorAdvancedJetpack, [advLappackDeprecated.anyDamage()]);

recipes.remove(advLappackDeprecated);
NEI.addEntry(advLappackDeprecated.withTag({display: {Name: "Deprecated Advanced Lappack", Lore: ["Use it to craft", "A Lappack", "from GraviSuiteReloaded"]}}));
recipes.addShapeless(itemArmorLappack, [ultimateLappackDeprecated.anyDamage()]);

recipes.remove(advNanoChestPlateDeprecated);
NEI.addEntry(advNanoChestPlateDeprecated.withTag({display: {Name: "Deprecated Advanced NanoChestPlate", Lore: ["Use it to craft", "An Advanced NanoChestPlate", "from GraviSuiteReloaded"]}}));
recipes.addShapeless(itemArmorAdvancedNanoChestplate, [advNanoChestPlateDeprecated.anyDamage()]);

recipes.remove(advDDrillDeprecated);
NEI.addEntry(advDDrillDeprecated.withTag({display: {Name: "Deprecated Advanced Diamond Drill", Lore: ["Use it to craft", "A Big Diamond Drill", "from GraviSuiteReloaded"]}}));
recipes.addShapeless(itemToolBigDiamondDrill, [advDDrillDeprecated.anyDamage()]);
