import mods.mfr.AutoSpawner;
import mods.gregtech.CuttingSaw;

// Blacklist Butterfly from MFR AutoSpawner

AutoSpawner.addBlacklist("forestry.lepidopterology.entities.EntityButterfly");

// Custom Stamp recipe

recipes.remove(<Forestry:stamps> );
recipes.addShaped(<Forestry:stamps>, [
    [<ore:gemApatite>, <ore:gemApatite>, <ore:gemApatite>],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
    [<Forestry:honeyDrop> ,<Forestry:honeyDrop> ,<Forestry:honeyDrop>]
  ]);

/*
  Forestry4 wood recipes a la Gregtech sauce.
  There are currently 29 wood types in Forestry:
    LARCH, TEAK, ACACIA, LIME, CHESTNUT, WENGE, BAOBAB, SEQUOIA, KAPOK, EBONY, MAHOGANY, BALSA, WILLOW, WALNUT, GREENHEART, CHERRY, MAHOE, POPLAR, PALM, PAPAYA, PINE, PLUM, MAPLE, CITRUS, GIGANTEUM, IPE, PADAUK, COCOBOLO, ZEBRAWOOD
*/

val dustWood = <gregtech:gt.metaitem.01:2809>;
val toolSaw = <ore:craftingToolSaw>;
val water = <liquid:water>;
val distilledWater = <liquid:ic2distilledwater>;
val lubricant = <liquid:lubricant>;

//for i,v in forestryPlanks
for woodType = 0, woodType < 29, woodType += 1
{
  var plankWood = <Forestry:planks>.definition.makeStack(woodType);
  var plankWoodFireproof = <Forestry:planksFireproof>.definition.makeStack(woodType);
  var logkWood = <Forestry:logs>.definition.makeStack(woodType);
  var logWoodFireproof = <Forestry:logsFireproof>.definition.makeStack(woodType);
  var slabkWood = <Forestry:slabs>.definition.makeStack(woodType);
  var slabWoodFireproof = <Forestry:slabsFireproof>.definition.makeStack(woodType);

// Planks from Slabs

// Combine 2 Slabs into a Plank
  recipes.addShaped(plankWood, [[slabWood], [slabWood]]);
  recipes.addShaped(plankWoodFireproof, [[slabWoodFireproof], [slabWoodFireproof]]);

// Planks from Logs

// Hand slash a Log into 2 Planks (Steve's super power nerfed)
  recipes.remove(plankWood * 2);
  recipes.addShapeless(plankWood * 2, logWood);
  recipes.remove(plankWoodFireproof * 2);
  recipes.addShapeless(plankWoodFireproof * 2, logWoodFireproof);

// Saw a Log into 4 Planks
  recipes.remove(plankWood * 4);
  recipes.addShaped(plankWood * 4, [[toolSaw],[logWood]]);
  recipes.remove(plankWoodFireproof * 4);
  recipes.addShaped(plankWoodFireproof * 4, [[toolSaw],[logWoodFireproof]]);

// Planks with a Log in CuttingSaw
  CuttingSaw.addRecipe([plankWood * 4, dustWood * 2], logWood, water, 400, 8);
  CuttingSaw.addRecipe([plankWood * 4, dustWood * 2], logWood, distilledWater, 400, 8);
  CuttingSaw.addRecipe([plankWood * 6, dustWood * 1], logWood, lubricant, 200, 8);
  CuttingSaw.addRecipe([plankWoodFireproof * 4, dustWoodFireproof * 2], logWoodFireproof, water, 400, 8);
  CuttingSaw.addRecipe([plankWoodFireproof * 4, dustWoodFireproof * 2], logWoodFireproof, distilledWater, 400, 8);
  CuttingSaw.addRecipe([plankWoodFireproof * 6, dustWoodFireproof * 1], logWoodFireproof, lubricant, 200, 8);

// Slabs from Planks

// 2 Slabs from a Plank with Saw
  recipes.remove(slabWood);
  recipes.addShaped(slabWood * 2, [[toolSaw, plankWood]]);
  recipes.remove(slabWoodFireproof);
  recipes.addShaped(slabWoodFireproof * 2, [[toolSaw, plankWoodFireproof]]);

// 2 Slabs with a Plank in CuttingSaw
  CuttingSaw.addRecipe([slabWood * 2], plankWood, water, 40, 4);
  CuttingSaw.addRecipe([slabWood * 2], plankWood, distilledWater, 40, 4);
  CuttingSaw.addRecipe([slabWood * 2], plankWood, lubricant, 20, 4);
  CuttingSaw.addRecipe([slabWoodFireproof * 2], plankWoodFireproof, water, 40, 4);
  CuttingSaw.addRecipe([slabWoodFireproof * 2], plankWoodFireproof, distilledWater, 40, 4);
  CuttingSaw.addRecipe([slabWoodFireproof * 2], plankWoodFireproof, lubricant, 20, 4);
}

/*
  2 GT Wood covers from 1 Forestry Slab
  Gregtech 5.09.12 still doess not have all forestry WoodTypes as covers.
  Damage values above 32499 are occupied by crop products, so we are screwed.
  Forestry woods GT covers start at Damage 32476.
  GT covers only use first 24 Forestry wood types.
*/

val coverGTForestryWoods = 32476;

for woodType = 0, woodType < 24, woodType += 1
{
  var coverID = coverGTForestryWoods + woodType;
  var cover = <gregtech:gt.metaitem.02>.definition.makeStack(coverID);
  var slabWood = <Forestry:slabs>.definition.makeStack(woodType);
  var slabWoodFireproof = <Forestry:slabsFireproof>.definition.makeStack(woodType);

// 2 Covers using Saw on a Slab
  recipes.addShaped(cover * 2, [[toolSaw], [null, slabWood]]);
  recipes.addShaped(cover * 2, [[toolSaw], [null, slabWoodFireproof]]);

// 2 Covers using Cutting Machine on a Slab
  CuttingSaw.addRecipe([cover * 2], slabWood, water, 100, 8);
  CuttingSaw.addRecipe([cover * 2], slabWood, distilledWater, 100, 8);
  CuttingSaw.addRecipe([cover * 2], slabWood, lubricant, 40, 8);

// 2 Covers using Cutting Machine on a Fireproof Slab
  CuttingSaw.addRecipe([cover * 2], slabWoodFireproof, water, 100, 8);
  CuttingSaw.addRecipe([cover * 2], slabWoodFireproof, distilledWater, 100, 8);
  CuttingSaw.addRecipe([cover * 2], slabWoodFireproof, lubricant, 40, 8);
}
