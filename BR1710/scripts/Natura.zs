# Natura.zs Tweaks

import minetweaker.item.IItemStack;
import mods.gregtech.Assembler;
import mods.gregtech.CuttingSaw;
import mods.gregtech.Lathe;
import mods.mfr.AutoSpawner;

# Ingredients

val distilledWater = <liquid:ic2distilledwater>;
val ic1 = <gregtech:gt.integrated_circuit:1> * 0;
val ic2 = <gregtech:gt.integrated_circuit:2> * 0;
val ic3 = <gregtech:gt.integrated_circuit:3> * 0;
val ic6 = <gregtech:gt.integrated_circuit:6> * 0;
val lubricant = <liquid:lubricant>;
val toolSaw = <ore:craftingToolSaw>;
val water = <liquid:water>;

# Foreign items

val dustWood = <gregtech:gt.metaitem.01:2809>;
val stick = <minecraft:stick>;
val trapdoor = <minecraft:trapdoor>;
val woodenPressurePlate = <minecraft:wooden_pressure_plate>;

# This mod Items

val naturaLogs = [
  <Natura:tree:0>, <Natura:tree:1>,
  <Natura:tree:2>, <Natura:redwood:1>,
  <Natura:bloodwood:*>, <Natura:tree:3>,
  <Natura:Rare Tree:0>, <Natura:Rare Tree:1>,
  <Natura:Rare Tree:2>, <Natura:Rare Tree:3>,
  <Natura:willow>, <Natura:Dark Tree>,
  <Natura:Dark Tree:1>
] as IItemStack[];

//Euc, Sak, Gho, Red, Blo, Hop, Map, Sil, Ama, Tig, Wil, Dar, Fus
val naturaPlanks = [
  <Natura:planks:0>, <Natura:planks:1>,
  <Natura:planks:2>, <Natura:planks:3>,
  <Natura:planks:4>, <Natura:planks:5>,
  <Natura:planks:6>, <Natura:planks:7>,
  <Natura:planks:8>, <Natura:planks:9>,
  <Natura:planks:10>, <Natura:planks:11>,
  <Natura:planks:12>
] as IItemStack[];

val naturaSticks = [
  <Natura:natura.stick:0>, <Natura:natura.stick:1>,
  <Natura:natura.stick:2>, <Natura:natura.stick:3>,
  <Natura:natura.stick:4>, <Natura:natura.stick:5>,
  <Natura:natura.stick:6>, <Natura:natura.stick:7>,
  <Natura:natura.stick:8>, <Natura:natura.stick:9>,
  <Natura:natura.stick:10>, <Natura:natura.stick:11>,
  <Natura:natura.stick:12>
] as IItemStack[];

val naturaSlabs = [
  <Natura:plankSlab1:0>, <Natura:plankSlab1:1>,
  <Natura:plankSlab1:2>, <Natura:plankSlab1:3>,
  <Natura:plankSlab1:4>, <Natura:plankSlab1:5>,
  <Natura:plankSlab1:6>, <Natura:plankSlab1:7>,
  <Natura:plankSlab2:0>, <Natura:plankSlab2:1>,
  <Natura:plankSlab2:2>, <Natura:plankSlab2:3>,
  <Natura:plankSlab2:4>
] as IItemStack[];

val naturaStairs = [
  <Natura:stair.eucalyptus>, <Natura:stair.sakura>,
  <Natura:stair.ghostwood>, <Natura:stair.redwood>,
  <Natura:stair.bloodwood>, <Natura:stair.hopseed>,
  <Natura:stair.maple>, <Natura:stair.silverbell>,
  <Natura:stair.amaranth>, <Natura:stair.tiger>,
  <Natura:stair.willow>, <Natura:stair.darkwood>,
  <Natura:stair.fusewood>
] as IItemStack[];

val naturaFences = [
  <Natura:Natura.fence:0>, <Natura:Natura.fence:1>,
  <Natura:Natura.fence:2>, <Natura:Natura.fence:3>,
  <Natura:Natura.fence:4>, <Natura:Natura.fence:5>,
  <Natura:Natura.fence:6>, <Natura:Natura.fence:7>,
  <Natura:Natura.fence:8>, <Natura:Natura.fence:9>,
  <Natura:Natura.fence:10>, <Natura:Natura.fence:11>,
  <Natura:Natura.fence:12>
] as IItemStack[];

val naturaPressurePlates = [
  <Natura:pressureplate.eucalyptus>, <Natura:pressureplate.sakura>,
  <Natura:pressureplate.ghostwood>, <Natura:pressureplate.redwood>,
  <Natura:pressureplate.bloodwood>, <Natura:pressureplate.hopseed>,
  <Natura:pressureplate.maple>, <Natura:pressureplate.silverbell>,
  <Natura:pressureplate.amaranth>, <Natura:pressureplate.tiger>,
  <Natura:pressureplate.willow>, <Natura:pressureplate.darkwood>,
  <Natura:pressureplate.fusewood>
] as IItemStack[];

val naturaTrapDoors = [
  <Natura:trapdoor.eucalyptus>, <Natura:trapdoor.sakura>,
  <Natura:trapdoor.ghostwood>, <Natura:trapdoor.redwood>,
  <Natura:trapdoor.bloodwood>, <Natura:trapdoor.hopseed>,
  <Natura:trapdoor.maple>, <Natura:trapdoor.silverbell>,
  <Natura:trapdoor.amaranth>, <Natura:trapdoor.tiger>,
  <Natura:trapdoor.willow>, <Natura:trapdoor.darkwood>,
  <Natura:trapdoor.fusewood>
] as IItemStack[];

val naturaButtons = [
  <Natura:fenceGate.eucalyptus>, <Natura:fenceGate.sakura>,
  <Natura:fenceGate.ghostwood>, <Natura:fenceGate.redwood>,
  <Natura:fenceGate.bloodwood>, <Natura:fenceGate.hopseed>,
  <Natura:fenceGate.maple>, <Natura:fenceGate.silverbell>,
  <Natura:fenceGate.amaranth>, <Natura:fenceGate.tiger>,
  <Natura:fenceGate.willow>, <Natura:fenceGate.darkwood>,
  <Natura:fenceGate.fusewood>
] as IItemStack[];

val naturaFenceGates = [
  <Natura:fenceGate.eucalyptus>, <Natura:fenceGate.sakura>,
  <Natura:fenceGate.ghostwood>, <Natura:fenceGate.redwood>,
  <Natura:fenceGate.bloodwood>, <Natura:fenceGate.hopseed>,
  <Natura:fenceGate.maple>, <Natura:fenceGate.silverbell>,
  <Natura:fenceGate.amaranth>, <Natura:fenceGate.tiger>,
  <Natura:fenceGate.willow>, <Natura:fenceGate.darkwood>,
  <Natura:fenceGate.fusewood>
] as IItemStack[];

var naturaWoodenDoors = [
  <Natura:redwoodDoorItem:0>, <Natura:redwoodDoorItem:1>,
  <Natura:redwoodDoorItem:2>, <Natura:redwoodDoorItem:3>,
  <Natura:redwoodDoorItem:4>, <Natura:redwoodDoorItem:5>,
  <Natura:redwoodDoorItem:6>
] as IItemStack[];

// Woods for doors
val naturaRedWoods = [
  <Natura:planks:3>, <Natura:planks:0>,
  <Natura:planks:5>, <Natura:planks:1>,
  <Natura:planks:2>, <Natura:planks:4>,
  <Natura:redwood:0>
] as IItemStack[];

# Recipes Tweaks

# Blacklist NitroCreeper from MVR AutoSpawner

AutoSpawner.addBlacklist("mods.natura.entity.NitroCreeper");

# Adapt recipes with Natura Planks Ingredients

for i, naturaPlank in naturaPlanks
{
  var naturaLog = naturaLogs[i];
  var naturaSlab = naturaSlabs[i];
  var naturaStick = naturaSticks[i];
  var naturaStair = naturaStairs[i];
  var naturaFence = naturaFences[i];
  var naturaPressurePlate = naturaPressurePlates[i];
  var naturaTrapDoor = naturaTrapDoors[i];
  var naturaButton = naturaButtons[i];
  var naturaFenceGate = naturaFenceGates[i];

  # Add missing Oredict registrations

  <ore:naturaStair>.add(naturaStair);
  <ore:naturaFence>.add(naturaFence);

  # Planks

  recipes.remove(naturaPlank);

  // Sawless Recipe for planks
  recipes.addShapeless(naturaPlank * 2, [naturaLog]);

  // Saw Recipe for planks
  recipes.addShaped(naturaPlank * 4, [[toolSaw], [naturaLog]]);

  // Planks with a Log in CuttingSaw
  CuttingSaw.addRecipe([naturaPlank * 4, dustWood * 2], naturaLog, water, 400, 8);
  CuttingSaw.addRecipe([naturaPlank * 4, dustWood * 2], naturaLog, distilledWater, 400, 8);
  CuttingSaw.addRecipe([naturaPlank * 6, dustWood * 1], naturaLog, lubricant, 200, 8);

  # Sticks

  // Sawless Recipe for natura sticks

  recipes.removeShaped(naturaStick * 4, [
    [naturaPlank],
    [naturaPlank]
  ]);

  recipes.removeShaped(stick * 2, [
    [naturaPlank],
    [naturaPlank]
  ]);

  recipes.addShaped(naturaStick * 2, [
    [naturaPlank],
    [naturaPlank]
  ]);

  // Saw Recipe for natura sticks

  recipes.removeShaped(stick * 4, [
    [toolSaw],
    [naturaPlank],
    [naturaPlank]
  ]);

  recipes.addShaped(naturaStick * 4, [
    [toolSaw],
    [naturaPlank],
    [naturaPlank]
  ]);

  // Gregtech Lath for natura sticks
  Lathe.addRecipe(naturaStick * 2, naturaPlank, 10, 8);

  # Slabs

  recipes.remove(naturaSlab);

  // Slab Recipe -- Requires saw
  recipes.addShaped(naturaSlab * 2, [[toolSaw, naturaPlank]]);
  recipes.addShaped(naturaPlank, [[naturaSlab], [naturaSlab]]);

  // 2 Slabs with a Plank in CuttingSaw
  CuttingSaw.addRecipe([naturaSlab * 2], naturaPlank, water, 40, 4);
  CuttingSaw.addRecipe([naturaSlab * 2], naturaPlank, distilledWater, 40, 4);
  CuttingSaw.addRecipe([naturaSlab * 2], naturaPlank, lubricant, 20, 4);

  # Stairs

  recipes.remove(naturaStair * 4);
  recipes.addShaped(naturaStair * 4, [
    [naturaPlank],
    [naturaPlank, naturaPlank],
    [naturaPlank, naturaPlank, naturaPlank]
  ]);

  recipes.addShaped(naturaStair * 4, [
    [null, null, naturaPlank],
    [null, naturaPlank, naturaPlank],
    [naturaPlank, naturaPlank, naturaPlank]
  ]);

  # Fences in Gregtech Assembler

  Assembler.addRecipe(naturaFence, naturaStick * 3, ic3, 300, 4);

  # Pressure plates

  recipes.removeShaped(woodenPressurePlate, [
    [naturaPlank, naturaPlank]
  ]);

/*
  recipes.addShaped(naturaPressurePlate, [
    [naturaPlank, naturaPlank]
  ]);
*/

  Assembler.addRecipe(naturaPressurePlate, naturaPlank * 2, ic2, 200, 4);

  # Drapdoors

  recipes.remove(naturaTrapDoor);

  recipes.addShaped(naturaTrapDoor, [
    [naturaPlank, naturaPlank, naturaPlank],
    [naturaPlank, naturaPlank, naturaPlank]
  ]);

  Assembler.addRecipe(naturaTrapDoor, naturaPlank * 3, ic3, 300, 4);

  # Wooden buttons

  recipes.removeShapeless(<minecraft:wooden_button>, [naturaPlank]);
  recipes.remove(naturaButton);
  recipes.addShaped(naturaButton * 2, [[naturaPlank], [null, naturaPlank]]);
  Assembler.addRecipe(naturaButton, naturaPlank, ic1, 100, 4);

  # Wooden FenceGates

  recipes.remove(naturaFenceGate);
  recipes.addShaped(naturaFenceGate, [
    [naturaStick, naturaPlank, naturaStick],
    [naturaStick, naturaPlank, naturaStick]
  ]);
}

// Assembler recipes for Redwood doors
for i, naturaWoodenDoor in naturaWoodenDoors {
  var naturaRedWood = naturaRedWoods[i];
  Assembler.addRecipe(naturaWoodenDoor, naturaRedWood * 6, ic6, 600, 4);
}

// No charcoal from woods as of Gregtech 5.09 Experimental
for naturaLog in naturaLogs {
  furnace.remove(<*>, naturaLog);
}
