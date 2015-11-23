import minetweaker.item.IItemStack;
import minetweaker.liquid.ILiquidStack;
import mods.mfr.AutoSpawner;
import mods.gregtech.CuttingSaw;

AutoSpawner.addBlacklist("forestry.lepidopterology.entities.EntityButterfly");
recipes.remove(<Forestry:stamps> );
recipes.addShaped(<Forestry:stamps>,[[<ore:gemApatite>,<ore:gemApatite>,<ore:gemApatite>],
                  [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
                  [<Forestry:honeyDrop> ,<Forestry:honeyDrop> ,<Forestry:honeyDrop> ]]);

// Forestry4 wood recipes a la GregTech sauce.

// LARCH, TEAK, ACACIA, LIME, CHESTNUT, WENGE, BAOBAB, SEQUOIA, KAPOK, EBONY, MAHOGANY, BALSA, WILLOW, WALNUT, GREENHEART, CHERRY, MAHOE, POPLAR, PALM, PAPAYA, PINE, PLUM, MAPLE, CITRUS, GIGANTEUM, IPE, PADAUK, COCOBOLO, ZEBRAWOOD
var forestryLogs = [
  <Forestry:logs:0>,
  <Forestry:logs:1>,
  <Forestry:logs:2>,
  <Forestry:logs:3>,
  <Forestry:logs:4>,
  <Forestry:logs:5>,
  <Forestry:logs:6>,
  <Forestry:logs:7>,
  <Forestry:logs:8>,
  <Forestry:logs:9>,
  <Forestry:logs:10>,
  <Forestry:logs:11>,
  <Forestry:logs:12>,
  <Forestry:logs:13>,
  <Forestry:logs:14>,
  <Forestry:logs:15>,
  <Forestry:logs:16>,
  <Forestry:logs:17>,
  <Forestry:logs:18>,
  <Forestry:logs:19>,
  <Forestry:logs:20>,
  <Forestry:logs:21>,
  <Forestry:logs:22>,
  <Forestry:logs:23>,
  <Forestry:logs:24>,
  <Forestry:logs:25>,
  <Forestry:logs:26>,
  <Forestry:logs:27>,
  <Forestry:logs:28>,
// Fireproof
  <Forestry:logsFireproof:0>,
  <Forestry:logsFireproof:1>,
  <Forestry:logsFireproof:2>,
  <Forestry:logsFireproof:3>,
  <Forestry:logsFireproof:4>,
  <Forestry:logsFireproof:5>,
  <Forestry:logsFireproof:6>,
  <Forestry:logsFireproof:7>,
  <Forestry:logsFireproof:8>,
  <Forestry:logsFireproof:9>,
  <Forestry:logsFireproof:10>,
  <Forestry:logsFireproof:11>,
  <Forestry:logsFireproof:12>,
  <Forestry:logsFireproof:13>,
  <Forestry:logsFireproof:14>,
  <Forestry:logsFireproof:15>,
  <Forestry:logsFireproof:16>,
  <Forestry:logsFireproof:17>,
  <Forestry:logsFireproof:18>,
  <Forestry:logsFireproof:19>,
  <Forestry:logsFireproof:20>,
  <Forestry:logsFireproof:21>,
  <Forestry:logsFireproof:22>,
  <Forestry:logsFireproof:23>,
  <Forestry:logsFireproof:24>,
  <Forestry:logsFireproof:25>,
  <Forestry:logsFireproof:26>,
  <Forestry:logsFireproof:27>,
  <Forestry:logsFireproof:28>
  ] as IItemStack[];

var forestryPlanks = [
  <Forestry:planks:0>,
  <Forestry:planks:1>,
  <Forestry:planks:2>,
  <Forestry:planks:3>,
  <Forestry:planks:4>,
  <Forestry:planks:5>,
  <Forestry:planks:6>,
  <Forestry:planks:7>,
  <Forestry:planks:8>,
  <Forestry:planks:9>,
  <Forestry:planks:10>,
  <Forestry:planks:11>,
  <Forestry:planks:12>,
  <Forestry:planks:13>,
  <Forestry:planks:14>,
  <Forestry:planks:15>,
  <Forestry:planks:16>,
  <Forestry:planks:17>,
  <Forestry:planks:18>,
  <Forestry:planks:19>,
  <Forestry:planks:20>,
  <Forestry:planks:21>,
  <Forestry:planks:22>,
  <Forestry:planks:23>,
  <Forestry:planks:24>,
  <Forestry:planks:25>,
  <Forestry:planks:26>,
  <Forestry:planks:27>,
  <Forestry:planks:28>,
// Fireproof
  <Forestry:planksFireproof:0>,
  <Forestry:planksFireproof:1>,
  <Forestry:planksFireproof:2>,
  <Forestry:planksFireproof:3>,
  <Forestry:planksFireproof:4>,
  <Forestry:planksFireproof:5>,
  <Forestry:planksFireproof:6>,
  <Forestry:planksFireproof:7>,
  <Forestry:planksFireproof:8>,
  <Forestry:planksFireproof:9>,
  <Forestry:planksFireproof:10>,
  <Forestry:planksFireproof:11>,
  <Forestry:planksFireproof:12>,
  <Forestry:planksFireproof:13>,
  <Forestry:planksFireproof:14>,
  <Forestry:planksFireproof:15>,
  <Forestry:planksFireproof:16>,
  <Forestry:planksFireproof:17>,
  <Forestry:planksFireproof:18>,
  <Forestry:planksFireproof:19>,
  <Forestry:planksFireproof:20>,
  <Forestry:planksFireproof:21>,
  <Forestry:planksFireproof:22>,
  <Forestry:planksFireproof:23>,
  <Forestry:planksFireproof:24>,
  <Forestry:planksFireproof:25>,
  <Forestry:planksFireproof:26>,
  <Forestry:planksFireproof:27>,
  <Forestry:planksFireproof:28>
  ] as IItemStack[];
var forestrySlabs =
[
  <Forestry:slabs:0>,
  <Forestry:slabs:1>,
  <Forestry:slabs:2>,
  <Forestry:slabs:3>,
  <Forestry:slabs:4>,
  <Forestry:slabs:5>,
  <Forestry:slabs:6>,
  <Forestry:slabs:7>,
  <Forestry:slabs:8>,
  <Forestry:slabs:9>,
  <Forestry:slabs:10>,
  <Forestry:slabs:11>,
  <Forestry:slabs:12>,
  <Forestry:slabs:13>,
  <Forestry:slabs:14>,
  <Forestry:slabs:15>,
  <Forestry:slabs:16>,
  <Forestry:slabs:17>,
  <Forestry:slabs:18>,
  <Forestry:slabs:19>,
  <Forestry:slabs:20>,
  <Forestry:slabs:21>,
  <Forestry:slabs:22>,
  <Forestry:slabs:23>,
  <Forestry:slabs:24>,
  <Forestry:slabs:25>,
  <Forestry:slabs:26>,
  <Forestry:slabs:27>,
  <Forestry:slabs:28>,
// Fireproof
  <Forestry:slabsFireproof:0>,
  <Forestry:slabsFireproof:1>,
  <Forestry:slabsFireproof:2>,
  <Forestry:slabsFireproof:3>,
  <Forestry:slabsFireproof:4>,
  <Forestry:slabsFireproof:5>,
  <Forestry:slabsFireproof:6>,
  <Forestry:slabsFireproof:7>,
  <Forestry:slabsFireproof:8>,
  <Forestry:slabsFireproof:9>,
  <Forestry:slabsFireproof:10>,
  <Forestry:slabsFireproof:11>,
  <Forestry:slabsFireproof:12>,
  <Forestry:slabsFireproof:13>,
  <Forestry:slabsFireproof:14>,
  <Forestry:slabsFireproof:15>,
  <Forestry:slabsFireproof:16>,
  <Forestry:slabsFireproof:17>,
  <Forestry:slabsFireproof:18>,
  <Forestry:slabsFireproof:19>,
  <Forestry:slabsFireproof:20>,
  <Forestry:slabsFireproof:21>,
  <Forestry:slabsFireproof:22>,
  <Forestry:slabsFireproof:23>,
  <Forestry:slabsFireproof:24>,
  <Forestry:slabsFireproof:25>,
  <Forestry:slabsFireproof:26>,
  <Forestry:slabsFireproof:27>,
  <Forestry:slabsFireproof:28>
  ] as IItemStack[];

// Replace Logs to Planks recipes

var dustWood = <gregtech:gt.metaitem.01:2809>;
var toolSaw = <ore:craftingToolSaw>;

for i,v in forestryPlanks
{
// Hand slash a Log into 2 Planks (Steve's super power nerfed)
  recipes.remove(v * 2);
  recipes.addShapeless(v * 2, [forestryLogs[i].marked("wood")], function(output, inputs, crafting) {
    return output.withDamage(inputs.wood.damage);
  });

// Saw a Log into 4 Planks
  recipes.remove(v * 4);
  recipes.addShaped(v * 4, [[toolSaw],[forestryLogs[i].marked("wood")]],function(output, inputs, crafting) {
    return output.withDamage(inputs.wood.damage);
  });

// Combine 2 Slabs into a Plank
  recipes.addShaped(v, [[forestrySlabs[i].marked("wood")],[forestrySlabs[i]]],function(output, inputs, crafting) {
    return output.withDamage(inputs.wood.damage);
  });

// Gregtech Cutting Saw
// See: http://forum.industrial-craft.net/index.php?page=Thread&postID=196036#post196036

// Planks with a Log in CuttingSaw
  CuttingSaw.addRecipe([v * 4, dustWood * 2], forestryLogs[i], <liquid:water>, 400, 8);
  CuttingSaw.addRecipe([v * 4, dustWood * 2], forestryLogs[i], <liquid:ic2distilledwater>, 400, 8);
  CuttingSaw.addRecipe([v * 6, dustWood * 1], forestryLogs[i], <liquid:lubricant>, 200, 8);
}

// Slabs from Planks
for i,v in forestrySlabs
{
// 2 Slabs with saw on a Plank
  recipes.remove(v);
  recipes.addShaped(v * 2, [[toolSaw, forestryPlanks[i].marked("wood")]],function(output, inputs, crafting) {
    return output.withDamage(inputs.wood.damage);
  });
  CuttingSaw.addRecipe([v * 2], forestryPlanks[i], <liquid:water>, 40, 4);
  CuttingSaw.addRecipe([v * 2], forestryPlanks[i], <liquid:ic2distilledwater>, 40, 4);
  CuttingSaw.addRecipe([v * 2], forestryPlanks[i], <liquid:lubricant>, 20, 4);
}

// Gregtech 5.09.12 still doess not have all forestry WoodTypes as covers
// Damage values above 32499 are occupied by crop products, so we are screwed.
// Lets register those existing anyway:
var coverGTWoods = [
  <gregtech:gt.metaitem.02:32476>,
  <gregtech:gt.metaitem.02:32477>,
  <gregtech:gt.metaitem.02:32478>,
  <gregtech:gt.metaitem.02:32479>,
  <gregtech:gt.metaitem.02:32480>,
  <gregtech:gt.metaitem.02:32481>,
  <gregtech:gt.metaitem.02:32482>,
  <gregtech:gt.metaitem.02:32483>,
  <gregtech:gt.metaitem.02:32484>,
  <gregtech:gt.metaitem.02:32485>,
  <gregtech:gt.metaitem.02:32486>,
  <gregtech:gt.metaitem.02:32487>,
  <gregtech:gt.metaitem.02:32488>,
  <gregtech:gt.metaitem.02:32489>,
  <gregtech:gt.metaitem.02:32490>,
  <gregtech:gt.metaitem.02:32491>,
  <gregtech:gt.metaitem.02:32492>,
  <gregtech:gt.metaitem.02:32493>,
  <gregtech:gt.metaitem.02:32494>,
  <gregtech:gt.metaitem.02:32495>,
  <gregtech:gt.metaitem.02:32496>,
  <gregtech:gt.metaitem.02:32497>,
  <gregtech:gt.metaitem.02:32498>,
  <gregtech:gt.metaitem.02:32499>,
  ] as IItemStack[];

// 2 GT Wood covers from 1 Forestry Slab
for i,v in coverGTWoods
{
// 2 Covers using Saw on a Slab
  recipes.addShaped(v * 2,[[toolSaw],[null,forestrySlabs[i]]]);
  recipes.addShaped(v * 2,[[toolSaw],[null,forestrySlabs[i+29]]]);
// 2 Covers using Cutting Machine on a Slab
  CuttingSaw.addRecipe([v * 2], forestrySlabs[i], <liquid:water>, 100, 8);
  CuttingSaw.addRecipe([v * 2], forestrySlabs[i], <liquid:ic2distilledwater>, 100, 8);
  CuttingSaw.addRecipe([v * 2], forestrySlabs[i], <liquid:lubricant>, 40, 8);
// 2 Covers using Cutting Machine on a Fireproof Slab
  CuttingSaw.addRecipe([v * 2], forestrySlabs[i+29], <liquid:water>, 100, 8);
  CuttingSaw.addRecipe([v * 2], forestrySlabs[i+29], <liquid:ic2distilledwater>, 100, 8);
  CuttingSaw.addRecipe([v * 2], forestrySlabs[i+29], <liquid:lubricant>, 40, 8);
}

