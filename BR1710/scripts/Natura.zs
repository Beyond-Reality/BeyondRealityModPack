import mods.mfr.AutoSpawner;
import mods.gregtech.Assembler;
import mods.gregtech.CuttingSaw;
import mods.gregtech.Lathe;
import minetweaker.item.IItemStack;

AutoSpawner.addBlacklist("mods.natura.entity.NitroCreeper");

var naturaLogs = [
  <Natura:tree:0>, <Natura:tree:1>,
  <Natura:tree:2>, <Natura:redwood:1>,
  <Natura:bloodwood:*>, <Natura:tree:3>,
  <Natura:Rare Tree:0>, <Natura:Rare Tree:1>,
  <Natura:Rare Tree:2>, <Natura:Rare Tree:3>,
  <Natura:willow>, <Natura:Dark Tree>,
  <Natura:Dark Tree:12>
] as IItemStack[];

//Euc, Sak, Gho, Red, Blo, Hop, Map, Sil, Ama, Tig, Wil, Dar, Fus
var naturaPlanks = [
  <Natura:planks:0>, <Natura:planks:1>,
  <Natura:planks:2>, <Natura:planks:3>,
  <Natura:planks:4>, <Natura:planks:5>,
  <Natura:planks:6>, <Natura:planks:7>,
  <Natura:planks:8>, <Natura:planks:9>,
  <Natura:planks:10>, <Natura:planks:11>,
  <Natura:planks:12>
] as IItemStack[];

var naturaSticks = [
  <Natura:natura.stick:0>, <Natura:natura.stick:1>,
  <Natura:natura.stick:2>, <Natura:natura.stick:3>,
  <Natura:natura.stick:4>, <Natura:natura.stick:5>,
  <Natura:natura.stick:6>, <Natura:natura.stick:7>,
  <Natura:natura.stick:8>, <Natura:natura.stick:9>,
  <Natura:natura.stick:10>, <Natura:natura.stick:11>,
  <Natura:natura.stick:12>
] as IItemStack[];

var naturaSlabs = [
  <Natura:plankSlab1:0>, <Natura:plankSlab1:1>,
  <Natura:plankSlab1:2>, <Natura:plankSlab1:3>,
  <Natura:plankSlab1:4>, <Natura:plankSlab1:5>,
  <Natura:plankSlab1:6>, <Natura:plankSlab1:7>,
  <Natura:plankSlab2:0>, <Natura:plankSlab2:1>,
  <Natura:plankSlab2:2>, <Natura:plankSlab2:3>,
  <Natura:plankSlab2:4>
] as IItemStack[];

var naturaStairs = [
  <Natura:stair.eucalyptus>, <Natura:stair.sakura>,
  <Natura:stair.ghostwood>, <Natura:stair.redwood>,
  <Natura:stair.bloodwood>, <Natura:stair.hopseed>,
  <Natura:stair.maple>, <Natura:stair.silverbell>,
  <Natura:stair.amaranth>, <Natura:stair.tiger>,
  <Natura:stair.willow>, <Natura:stair.darkwood>,
  <Natura:stair.fusewood>
] as IItemStack[];

var naturaFences = [
  <Natura:Natura.fence:0>, <Natura:Natura.fence:1>,
  <Natura:Natura.fence:2>, <Natura:Natura.fence:3>,
  <Natura:Natura.fence:4>, <Natura:Natura.fence:5>,
  <Natura:Natura.fence:6>, <Natura:Natura.fence:7>,
  <Natura:Natura.fence:8>, <Natura:Natura.fence:9>,
  <Natura:Natura.fence:10>, <Natura:Natura.fence:11>,
  <Natura:Natura.fence:12>
] as IItemStack[];

var naturaPressurePlates = [
  <Natura:pressureplate.eucalyptus>, <Natura:pressureplate.sakura>,
  <Natura:pressureplate.ghostwood>, <Natura:pressureplate.redwood>,
  <Natura:pressureplate.bloodwood>, <Natura:pressureplate.hopseed>,
  <Natura:pressureplate.maple>, <Natura:pressureplate.silverbell>,
  <Natura:pressureplate.amaranth>, <Natura:pressureplate.tiger>,
  <Natura:pressureplate.willow>, <Natura:pressureplate.darkwood>,
  <Natura:pressureplate.fusewood>
] as IItemStack[];

var naturaTrapDoors = [
  <Natura:trapdoor.eucalyptus>, <Natura:trapdoor.sakura>,
  <Natura:trapdoor.ghostwood>, <Natura:trapdoor.redwood>,
  <Natura:trapdoor.bloodwood>, <Natura:trapdoor.hopseed>,
  <Natura:trapdoor.maple>, <Natura:trapdoor.silverbell>,
  <Natura:trapdoor.amaranth>, <Natura:trapdoor.tiger>,
  <Natura:trapdoor.willow>, <Natura:trapdoor.darkwood>,
  <Natura:trapdoor.fusewood>
] as IItemStack[];

var naturaButtons = [
  <Natura:fenceGate.eucalyptus>, <Natura:fenceGate.sakura>,
  <Natura:fenceGate.ghostwood>, <Natura:fenceGate.redwood>,
  <Natura:fenceGate.bloodwood>, <Natura:fenceGate.hopseed>,
  <Natura:fenceGate.maple>, <Natura:fenceGate.silverbell>,
  <Natura:fenceGate.amaranth>, <Natura:fenceGate.tiger>,
  <Natura:fenceGate.willow>, <Natura:fenceGate.darkwood>,
  <Natura:fenceGate.fusewood>
] as IItemStack[];

var naturaFenceGates = [
  <Natura:fenceGate.eucalyptus>, <Natura:fenceGate.sakura>,
  <Natura:fenceGate.ghostwood>, <Natura:fenceGate.redwood>,
  <Natura:fenceGate.bloodwood>, <Natura:fenceGate.hopseed>,
  <Natura:fenceGate.maple>, <Natura:fenceGate.silverbell>,
  <Natura:fenceGate.amaranth>, <Natura:fenceGate.tiger>,
  <Natura:fenceGate.willow>, <Natura:fenceGate.darkwood>,
  <Natura:fenceGate.fusewood>
] as IItemStack[];

var oreWood = <ore:oreWood>;
var toolSaw = <ore:craftingToolSaw>;
val dustWood = <gregtech:gt.metaitem.01:2809>;
val water = <liquid:water>;
val distilledWater = <liquid:ic2distilledwater>;
val lubricant = <liquid:lubricant>;

for i, plankWood in naturaPlanks
{
  var logWood = naturaLogs[i];
  var slabWood = naturaSlabs[i];
  var stickWood = naturaSticks[i];
  var stairWood = naturaStairs[i];
  var fenceWood = naturaFences[i];
  var pressurePlate = naturaPressurePlates[i];
  var trapDoor = naturaTrapDoors[i];
  var buttonWood = naturaButtons[i];
  var fenceGate = naturaFenceGates[i];

  // Add missing Oredict registrations
  <ore:stairWood>.add(stairWood);
  <ore:fenceWood>.add(fenceWood);

  recipes.remove(plankWood);
  recipes.remove(stickWood);
  recipes.remove(slabWood);

  //Sawless Recipe for planks
  recipes.addShapeless(plankWood * 2, [logWood]);

  //Saw Recipe for planks
  recipes.addShaped(plankWood * 4, [[toolSaw], [logWood]]);

  // Planks with a Log in CuttingSaw
  CuttingSaw.addRecipe([plankWood * 4, dustWood * 2], logWood, water, 400, 8);
  CuttingSaw.addRecipe([plankWood * 4, dustWood * 2], logWood, distilledWater, 400, 8);
  CuttingSaw.addRecipe([plankWood * 6, dustWood * 1], logWood, lubricant, 200, 8);

  //Begin Block -- This block could be removed if you don't want natura sticks to be craftable, or the recipes could be made shapeless
  //Sawless Recipe for natura sticks
  recipes.addShaped(stickWood * 2, [[plankWood], [null], [plankWood]]);  //Needs a gap or it will produce vanila sticks
  //Saw Recipe for natura sticks
  recipes.addShaped(stickWood * 4, [[toolSaw, plankWood, plankWood]]); //Horizontal or it will produce vanila sticks
  //Gregtech Lath for natura sticks
  Lathe.addRecipe(stickWood * 2, plankWood, 10, 8);
  //End Block

  //Slab Recipe -- Requires saw
  recipes.addShaped(slabWood * 2, [[toolSaw, plankWood]]);
  recipes.addShaped(plankWood, [[slabWood], [slabWood]]);

  // 2 Slabs with a Plank in CuttingSaw
  CuttingSaw.addRecipe([slabWood * 2], plankWood, water, 40, 4);
  CuttingSaw.addRecipe([slabWood * 2], plankWood, distilledWater, 40, 4);
  CuttingSaw.addRecipe([slabWood * 2], plankWood, lubricant, 20, 4);

  // Stairs
  recipes.remove(stairWood * 4);
  recipes.addShaped(stairWood * 4, [
    [plankWood],
    [plankWood, plankWood],
    [plankWood, plankWood, plankWood]
  ]);

  // Fences in Gregtech Assembler
  Assembler.addRecipe(fenceWood, stickWood * 3, <gregtech:gt.integrated_circuit:3>, 300, 4);

  // Pressure plates
  recipes.remove(pressurePlate);
  recipes.addShaped(pressurePlate, [[plankWood, null, plankWood]]);
  Assembler.addRecipe(pressurePlate, plankWood * 2, <gregtech:gt.integrated_circuit:2>, 200, 4);

  // Drapdoors
  recipes.remove(trapDoor);
  recipes.addShaped(trapDoor, [
    [plankWood, plankWood, plankWood],
    [null, null, null],
    [plankWood, plankWood, plankWood]
  ]);
  Assembler.addRecipe(trapDoor, plankWood * 3, <gregtech:gt.integrated_circuit:3>, 300, 4);

  // Wooden buttons
  recipes.removeShapeless(<minecraft:wooden_button>, [plankWood]);
  recipes.remove(buttonWood);
  recipes.addShaped(buttonWood * 2, [[plankWood], [null, plankWood]]);
  Assembler.addRecipe(buttonWood, plankWood, <gregtech:gt.integrated_circuit:1>, 100, 4);

  // Wooden FenceGates
  recipes.remove(fenceGate);
  recipes.addShaped(fenceGate, [
    [stickWood, plankWood, stickWood],
    [stickWood, plankWood, stickWood]
  ]);
}

var naturaWoodenDoors = [
  <Natura:redwoodDoorItem:0>, <Natura:redwoodDoorItem:1>,
  <Natura:redwoodDoorItem:2>, <Natura:redwoodDoorItem:3>,
  <Natura:redwoodDoorItem:4>, <Natura:redwoodDoorItem:5>,
  <Natura:redwoodDoorItem:6>
] as IItemStack[];

// Woods for doors
var naturaRedWoods = [
  <Natura:planks:3>, <Natura:planks:0>,
  <Natura:planks:5>, <Natura:planks:1>,
  <Natura:planks:2>, <Natura:planks:4>,
  <Natura:redwood:0>
] as IItemStack[];

// Assembler recipes for Redwood doors
for i, doorWood in naturaWoodenDoors {
  var plankWood = naturaRedWoods[i];
  Assembler.addRecipe(doorWood, plankWood * 6, <gregtech:gt.integrated_circuit:6>, 600, 4);
}

// No charcoal from woods as of Gregtech 5.09 Experimental
for logWood in naturaLogs {
  furnace.remove(<*>, logWood);
}
