// EnderIO.zs Tweaks
import mods.nei.NEI;
import mods.gregtech.Assembler;

// Declares
val craftingToolWrench = <ore:craftingToolWrench>;
val steelplate = <ore:plateSteel>;
val steel = <ore:ingotSteel>;
val rod = <gregtech:gt.metaitem.01:23032>;
val basic = <EnderIO:itemBasicCapacitor>;
val bars = <minecraft:iron_bars>;
val ring = <ore:ringIron>;
val silicon = <EnderIO:itemMaterial>;
val plateSilicon = <ore:plateSilicon>;
val ingotSilicon = <ore:ingotSilicon>;
val itemSilicon = <ore:itemSilicon>;
val ingotRedAlloy = <ore:ingotRedAlloy>;
val itemConduitBinder = <ore:itemConduitBinder>;
val ingotIron = <ore:ingotIron>;
val stickDarkSteel = <ore:stickDarkSteel>;
val IC3 = <gregtech:gt.integrated_circuit:3> * 0;

// Oredict

ingotRedAlloy.addAll(<ore:ingotRedstoneAlloy>);

// Recipe outputs
val conduitRedstone = <EnderIO:itemRedstoneConduit:0>;
val conduitRedstoneInsulated = <EnderIO:itemRedstoneConduit:2>;
val conduitNetwork = <EnderIO:itemOCConduit:0>;
val darkSteelBars = <EnderIO:blockDarkIronBars>;

// Disable smelting itemSilicon
furnace.remove(ingotSilicon);

// Replace Ore-Dictionar entry for itemSilicon
itemSilicon.remove(silicon);

// Replace Redstone Alloy with Red Alloy in recipes
recipes.remove(conduitRedstone);
recipes.addShaped(conduitRedstone * 8, [
  [ingotRedAlloy, ingotRedAlloy, ingotRedAlloy]
]);

// Dark Iron Bars a la Gregtech sauce
recipes.remove(darkSteelBars);
recipes.addShaped(darkSteelBars * 8, [
  [null, craftingToolWrench, null],
  [stickDarkSteel, stickDarkSteel, stickDarkSteel],
  [stickDarkSteel, stickDarkSteel, stickDarkSteel]
]);
for stick in stickDarkSteel.items {
  Assembler.addRecipe(darkSteelBars * 4, stick * 3, IC3, 300, 4);
}

recipes.remove(conduitRedstoneInsulated);
recipes.addShaped(conduitRedstoneInsulated * 8, [
  [itemConduitBinder, itemConduitBinder, itemConduitBinder],
  [ingotRedAlloy, ingotRedAlloy, ingotRedAlloy],
  [itemConduitBinder, itemConduitBinder, itemConduitBinder]
]);

recipes.remove(conduitNetwork);
recipes.addShaped(conduitNetwork * 8, [
  [itemConduitBinder, itemConduitBinder, itemConduitBinder],
  [ingotRedAlloy, ingotIron, ingotRedAlloy],
  [itemConduitBinder, itemConduitBinder, itemConduitBinder]
]);

recipes.remove(<EnderIO:itemMachinePart:1>);
recipes.addShaped(<EnderIO:itemMachinePart:1>, [[rod, steel, rod],
                                                    [steel, ring, steel],
                                                    [rod, steel, rod]]);

recipes.remove(<EnderIO:itemMachinePart>);
recipes.addShaped(<EnderIO:itemMachinePart>, [[bars, steelplate, bars],
                                                    [steelplate, basic, steelplate],
                                                    [bars, steelplate, bars]]);
