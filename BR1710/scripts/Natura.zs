import mods.mfr.AutoSpawner;
import mods.gregtech.CuttingSaw;

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

var naturaSlabs = [<Natura:plankSlab1:0>, <Natura:plankSlab1:1>, <Natura:plankSlab1:2>, <Natura:plankSlab1:3>, <Natura:plankSlab1:4>, <Natura:plankSlab1:5>, <Natura:plankSlab1:6>, <Natura:plankSlab1:7>,  <Natura:plankSlab2:0>, <Natura:plankSlab2:1>, <Natura:plankSlab2:2>, <Natura:plankSlab2:3>, <Natura:plankSlab2:4>] as IItemStack[];

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
  //End Block

  //Slab Recipe -- Requires saw
  recipes.addShaped(slabWood * 2, [[toolSaw, plankWood]]);
  recipes.addShaped(plankWood, [[slabWood], [slabWood]]);

  // 2 Slabs with a Plank in CuttingSaw
  CuttingSaw.addRecipe([slabWood * 2], plankWood, water, 40, 4);
  CuttingSaw.addRecipe([slabWood * 2], plankWood, distilledWater, 40, 4);
  CuttingSaw.addRecipe([slabWood * 2], plankWood, lubricant, 20, 4);
}

// No charcoal from woods as of Gregtech 5.09 Experimental
for logWood in naturaLogs {
  furnace.remove(<*>, logWood);
}
