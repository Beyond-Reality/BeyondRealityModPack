// Chisel2.zs Tweaks
import mods.gregtech.CuttingSaw;

val toolSaw = <ore:craftingToolSaw>;
val water = <liquid:water>;
val distilledWater = <liquid:ic2distilledwater>;
val lubricant = <liquid:lubricant>;

val dustMarble = <gregtech:gt.metaitem.01:2845>;
val plateMarble = <gregtech:gt.metaitem.01:17845>;

for meta in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15] as int[] {
  var blockMarble = <chisel:marble>.definition.makeStack(meta);
  var blockMarblePillar = <chisel:marble_pillar>.definition.makeStack(meta);
  var blockLimestone = <chisel:limestone>.definition.makeStack(meta);
  var slabMarble = <chisel:marble_slab>.definition.makeStack(meta);
  var slabMarblePillar = <chisel:marble_pillar_slab>.definition.makeStack(meta);
  var slabLimestone = <chisel:limestone_slab>.definition.makeStack(meta);

  // Ore registrations
  <ore:blockMarble>.add(blockMarble);
  <ore:blockMarble>.add(blockMarblePillar);
  <ore:blockLimestone>.add(blockLimestone);
  <ore:slabMarble>.add(slabMarble);
  <ore:slabMarble>.add(slabMarblePillar);
  <ore:slabLimestone>.add(slabLimestone);
  <ore:blockMarblePillar>.add(blockMarblePillar);
  <ore:slabMarblePillar>.add(slabMarblePillar);

  // 2 Slabs from block with Saw
  recipes.addShaped(slabMarble * 2, [[toolSaw, blockMarble]]);
  recipes.addShaped(slabMarblePillar * 2, [[toolSaw, blockMarblePillar]]);
  recipes.addShaped(slabLimestone * 2, [[toolSaw, blockLimestone]]);

  // 2 Slabs from block in CuttingSaw
  CuttingSaw.addRecipe([slabMarble * 2], blockMarble, water, 50, 8);
  CuttingSaw.addRecipe([slabMarble * 2], blockMarble, distilledWater, 50, 8);
  CuttingSaw.addRecipe([slabMarble * 2], blockMarble, lubricant, 25, 8);
  CuttingSaw.addRecipe([slabMarblePillar * 2], blockMarblePillar, water, 50, 8);
  CuttingSaw.addRecipe([slabMarblePillar * 2], blockMarblePillar, distilledWater, 50, 8);
  CuttingSaw.addRecipe([slabMarblePillar * 2], blockMarblePillar, lubricant, 25, 8);
  CuttingSaw.addRecipe([slabLimestone * 2], blockLimestone, water, 50, 8);
  CuttingSaw.addRecipe([slabLimestone * 2], blockLimestone, distilledWater, 50, 8);
  CuttingSaw.addRecipe([slabLimestone * 2], blockLimestone, lubricant, 25, 8);

  // 2 plateMarble from slabMarble in CuttingSaw
  CuttingSaw.addRecipe([plateMarble * 2], slabMarble, water, 64, 8);
  CuttingSaw.addRecipe([plateMarble * 2], slabMarble, distilledWater, 64, 8);
  CuttingSaw.addRecipe([plateMarble * 2], slabMarble, lubricant, 32, 8);
  CuttingSaw.addRecipe([plateMarble * 2], slabMarblePillar, water, 64, 8);
  CuttingSaw.addRecipe([plateMarble * 2], slabMarblePillar, distilledWater, 64, 8);
  CuttingSaw.addRecipe([plateMarble * 2], slabMarblePillar, lubricant, 32, 8);
}
