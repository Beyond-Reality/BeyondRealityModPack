import minetweaker.item.IItemStack;
import minetweaker.liquid.ILiquidStack;
import mods.mfr.AutoSpawner;
//import mods.gregtech.CuttingSaw;

AutoSpawner.addBlacklist("forestry.lepidopterology.entities.EntityButterfly");
recipes.remove(<Forestry:stamps> );
recipes.addShaped(<Forestry:stamps>,[[<ore:gemApatite>,<ore:gemApatite>,<ore:gemApatite>],
                  [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
                  [<Forestry:honeyDrop> ,<Forestry:honeyDrop> ,<Forestry:honeyDrop> ]]);

// Forestry4 wood recipes

// LARCH, TEAK, ACACIA, LIME, CHESTNUT, WENGE, BAOBAB, SEQUOIA, KAPOK, EBONY, MAHOGANY, BALSA, WILLOW, WALNUT, GREENHEART, CHERRY, MAHOE, POPLAR, PALM, PAPAYA, PINE, PLUM, MAPLE, CITRUS, GIGANTEUM, IPE, PADAUK, COCOBOLO, ZEBRAWOOD
var forestryLogs = [
  <Forestry:logs:0>.withTag({WoodType:0}),
  <Forestry:logs:0>.withTag({WoodType:1}),
  <Forestry:logs:0>.withTag({WoodType:2}),
  <Forestry:logs:0>.withTag({WoodType:3}),
  <Forestry:logs:0>.withTag({WoodType:4}),
  <Forestry:logs:0>.withTag({WoodType:5}),
  <Forestry:logs:0>.withTag({WoodType:6}),
  <Forestry:logs:0>.withTag({WoodType:7}),
  <Forestry:logs:0>.withTag({WoodType:8}),
  <Forestry:logs:0>.withTag({WoodType:9}),
  <Forestry:logs:0>.withTag({WoodType:10}),
  <Forestry:logs:0>.withTag({WoodType:11}),
  <Forestry:logs:0>.withTag({WoodType:12}),
  <Forestry:logs:0>.withTag({WoodType:13}),
  <Forestry:logs:0>.withTag({WoodType:14}),
  <Forestry:logs:0>.withTag({WoodType:15}),
  <Forestry:logs:0>.withTag({WoodType:16}),
  <Forestry:logs:0>.withTag({WoodType:17}),
  <Forestry:logs:0>.withTag({WoodType:18}),
  <Forestry:logs:0>.withTag({WoodType:19}),
  <Forestry:logs:0>.withTag({WoodType:20}),
  <Forestry:logs:0>.withTag({WoodType:21}),
  <Forestry:logs:0>.withTag({WoodType:22}),
  <Forestry:logs:0>.withTag({WoodType:23}),
  <Forestry:logs:0>.withTag({WoodType:24}),
  <Forestry:logs:0>.withTag({WoodType:25}),
  <Forestry:logs:0>.withTag({WoodType:26}),
  <Forestry:logs:0>.withTag({WoodType:27}),
  <Forestry:logs:0>.withTag({WoodType:28}),
// Fireproof
  <Forestry:logsFireproof:0>.withTag({WoodType:0}),
  <Forestry:logsFireproof:0>.withTag({WoodType:1}),
  <Forestry:logsFireproof:0>.withTag({WoodType:2}),
  <Forestry:logsFireproof:0>.withTag({WoodType:3}),
  <Forestry:logsFireproof:0>.withTag({WoodType:4}),
  <Forestry:logsFireproof:0>.withTag({WoodType:5}),
  <Forestry:logsFireproof:0>.withTag({WoodType:6}),
  <Forestry:logsFireproof:0>.withTag({WoodType:7}),
  <Forestry:logsFireproof:0>.withTag({WoodType:8}),
  <Forestry:logsFireproof:0>.withTag({WoodType:9}),
  <Forestry:logsFireproof:0>.withTag({WoodType:10}),
  <Forestry:logsFireproof:0>.withTag({WoodType:11}),
  <Forestry:logsFireproof:0>.withTag({WoodType:12}),
  <Forestry:logsFireproof:0>.withTag({WoodType:13}),
  <Forestry:logsFireproof:0>.withTag({WoodType:14}),
  <Forestry:logsFireproof:0>.withTag({WoodType:15}),
  <Forestry:logsFireproof:0>.withTag({WoodType:16}),
  <Forestry:logsFireproof:0>.withTag({WoodType:17}),
  <Forestry:logsFireproof:0>.withTag({WoodType:18}),
  <Forestry:logsFireproof:0>.withTag({WoodType:19}),
  <Forestry:logsFireproof:0>.withTag({WoodType:20}),
  <Forestry:logsFireproof:0>.withTag({WoodType:21}),
  <Forestry:logsFireproof:0>.withTag({WoodType:22}),
  <Forestry:logsFireproof:0>.withTag({WoodType:23}),
  <Forestry:logsFireproof:0>.withTag({WoodType:24}),
  <Forestry:logsFireproof:0>.withTag({WoodType:25}),
  <Forestry:logsFireproof:0>.withTag({WoodType:26}),
  <Forestry:logsFireproof:0>.withTag({WoodType:27}),
  <Forestry:logsFireproof:0>.withTag({WoodType:28})
  ] as IItemStack[];

var forestryPlanks = [
  <Forestry:planks:0>.withTag({WoodType:0}),
  <Forestry:planks:0>.withTag({WoodType:1}),
  <Forestry:planks:0>.withTag({WoodType:2}),
  <Forestry:planks:0>.withTag({WoodType:3}),
  <Forestry:planks:0>.withTag({WoodType:4}),
  <Forestry:planks:0>.withTag({WoodType:5}),
  <Forestry:planks:0>.withTag({WoodType:6}),
  <Forestry:planks:0>.withTag({WoodType:7}),
  <Forestry:planks:0>.withTag({WoodType:8}),
  <Forestry:planks:0>.withTag({WoodType:9}),
  <Forestry:planks:0>.withTag({WoodType:10}),
  <Forestry:planks:0>.withTag({WoodType:11}),
  <Forestry:planks:0>.withTag({WoodType:12}),
  <Forestry:planks:0>.withTag({WoodType:13}),
  <Forestry:planks:0>.withTag({WoodType:14}),
  <Forestry:planks:0>.withTag({WoodType:15}),
  <Forestry:planks:0>.withTag({WoodType:16}),
  <Forestry:planks:0>.withTag({WoodType:17}),
  <Forestry:planks:0>.withTag({WoodType:18}),
  <Forestry:planks:0>.withTag({WoodType:19}),
  <Forestry:planks:0>.withTag({WoodType:20}),
  <Forestry:planks:0>.withTag({WoodType:21}),
  <Forestry:planks:0>.withTag({WoodType:22}),
  <Forestry:planks:0>.withTag({WoodType:23}),
  <Forestry:planks:0>.withTag({WoodType:24}),
  <Forestry:planks:0>.withTag({WoodType:25}),
  <Forestry:planks:0>.withTag({WoodType:26}),
  <Forestry:planks:0>.withTag({WoodType:27}),
  <Forestry:planks:0>.withTag({WoodType:28}),
// Fireproof
  <Forestry:planksFireproof:0>.withTag({WoodType:0}),
  <Forestry:planksFireproof:0>.withTag({WoodType:1}),
  <Forestry:planksFireproof:0>.withTag({WoodType:2}),
  <Forestry:planksFireproof:0>.withTag({WoodType:3}),
  <Forestry:planksFireproof:0>.withTag({WoodType:4}),
  <Forestry:planksFireproof:0>.withTag({WoodType:5}),
  <Forestry:planksFireproof:0>.withTag({WoodType:6}),
  <Forestry:planksFireproof:0>.withTag({WoodType:7}),
  <Forestry:planksFireproof:0>.withTag({WoodType:8}),
  <Forestry:planksFireproof:0>.withTag({WoodType:9}),
  <Forestry:planksFireproof:0>.withTag({WoodType:10}),
  <Forestry:planksFireproof:0>.withTag({WoodType:11}),
  <Forestry:planksFireproof:0>.withTag({WoodType:12}),
  <Forestry:planksFireproof:0>.withTag({WoodType:13}),
  <Forestry:planksFireproof:0>.withTag({WoodType:14}),
  <Forestry:planksFireproof:0>.withTag({WoodType:15}),
  <Forestry:planksFireproof:0>.withTag({WoodType:16}),
  <Forestry:planksFireproof:0>.withTag({WoodType:17}),
  <Forestry:planksFireproof:0>.withTag({WoodType:18}),
  <Forestry:planksFireproof:0>.withTag({WoodType:19}),
  <Forestry:planksFireproof:0>.withTag({WoodType:20}),
  <Forestry:planksFireproof:0>.withTag({WoodType:21}),
  <Forestry:planksFireproof:0>.withTag({WoodType:22}),
  <Forestry:planksFireproof:0>.withTag({WoodType:23}),
  <Forestry:planksFireproof:0>.withTag({WoodType:24}),
  <Forestry:planksFireproof:0>.withTag({WoodType:25}),
  <Forestry:planksFireproof:0>.withTag({WoodType:26}),
  <Forestry:planksFireproof:0>.withTag({WoodType:27}),
  <Forestry:planksFireproof:0>.withTag({WoodType:28})
  ] as IItemStack[];

var forestrySlabs =
[
  <Forestry:slabs:0>.withTag({WoodType:0}),
  <Forestry:slabs:0>.withTag({WoodType:1}),
  <Forestry:slabs:0>.withTag({WoodType:2}),
  <Forestry:slabs:0>.withTag({WoodType:3}),
  <Forestry:slabs:0>.withTag({WoodType:4}),
  <Forestry:slabs:0>.withTag({WoodType:5}),
  <Forestry:slabs:0>.withTag({WoodType:6}),
  <Forestry:slabs:0>.withTag({WoodType:7}),
  <Forestry:slabs:0>.withTag({WoodType:8}),
  <Forestry:slabs:0>.withTag({WoodType:9}),
  <Forestry:slabs:0>.withTag({WoodType:10}),
  <Forestry:slabs:0>.withTag({WoodType:11}),
  <Forestry:slabs:0>.withTag({WoodType:12}),
  <Forestry:slabs:0>.withTag({WoodType:13}),
  <Forestry:slabs:0>.withTag({WoodType:14}),
  <Forestry:slabs:0>.withTag({WoodType:15}),
  <Forestry:slabs:0>.withTag({WoodType:16}),
  <Forestry:slabs:0>.withTag({WoodType:17}),
  <Forestry:slabs:0>.withTag({WoodType:18}),
  <Forestry:slabs:0>.withTag({WoodType:19}),
  <Forestry:slabs:0>.withTag({WoodType:20}),
  <Forestry:slabs:0>.withTag({WoodType:21}),
  <Forestry:slabs:0>.withTag({WoodType:22}),
  <Forestry:slabs:0>.withTag({WoodType:23}),
  <Forestry:slabs:0>.withTag({WoodType:24}),
  <Forestry:slabs:0>.withTag({WoodType:25}),
  <Forestry:slabs:0>.withTag({WoodType:26}),
  <Forestry:slabs:0>.withTag({WoodType:27}),
  <Forestry:slabs:0>.withTag({WoodType:28}),
// Fireproof
  <Forestry:slabsFireproof:0>.withTag({WoodType:0}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:1}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:2}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:3}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:4}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:5}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:6}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:7}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:8}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:9}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:10}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:11}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:12}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:13}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:14}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:15}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:16}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:17}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:18}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:19}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:20}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:21}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:22}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:23}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:24}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:25}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:26}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:27}),
  <Forestry:slabsFireproof:0>.withTag({WoodType:28})
  ] as IItemStack[];

var toolSaw = <ore:craftingToolSaw>;

// Replace Logs to Planks recipes

recipes.remove(<Forestry:planks:0> * 4);
recipes.remove(<Forestry:planksFireproof:0> * 4);

for i,v in forestryPlanks
{
// 2 Planks without saw
  recipes.addShapeless(v * 2, [forestryLogs[i].marked("wood")], function(output, inputs, crafting) {
    return output.withTag(inputs.wood.tag);
  });

// 4 Planks using saw
  recipes.addShaped(v * 4, [[toolSaw],[forestryLogs[i].marked("wood")]],function(output, inputs, crafting) {
    return output.withTag(inputs.wood.tag);
  });

// 1 Plank from 2 Slabs
  recipes.addShaped(v, [[forestrySlabs[i].marked("wood")],[forestrySlabs[i]]],function(output, inputs, crafting) {
    return output.withTag(inputs.wood.tag);
  });

// Gregtech Cutting Saw
// See: http://forum.industrial-craft.net/index.php?page=Thread&postID=196036#post196036
}

// Replace Planks to Slabs recipes

recipes.remove(<Forestry:slabs:0>);
recipes.remove(<Forestry:slabsFireproof:0>);

for i,v in forestrySlabs
{
// 2 Slabs with saw
  recipes.addShaped(v * 2, [[toolSaw, forestryPlanks[i].marked("wood")]],function(output, inputs, crafting) {
    return output.withTag(inputs.wood.tag);
  });
}
