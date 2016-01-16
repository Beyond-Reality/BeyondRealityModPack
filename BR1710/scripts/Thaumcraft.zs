# Thaumcraft.zs tweaks
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;

// Fix crafting with Gregtech blockThaumium
val golemThaumium = <Thaumcraft:ItemGolemPlacer:7>;
val thaumicRestaurer = <ThaumicTinkerer:repairer>;

// Crucible
// ResearchString, OutputStack, InputStack, AspectString
mods.thaumcraft.Crucible.addRecipe("GOLEMTHAUMIUM",
  golemThaumium, <ore:blockThaumium>,
  "humanus 8, motus 8, spiritus 8"
);

// Infusion
// ResearchString, MainInputStack, InputArray, AspectString, OutputStack, InstabilityAmount
val ingotIron = <minecraft:iron_ingot>;
val ingotGold = <minecraft:gold_ingot>;
val gemDiamond = <minecraft:diamond>;
val stoneCobble = <minecraft:cobblestone>;
val plankWood = <minecraft:planks:0>;
val itemLeather = <minecraft:leather>;
val fabicEnchanted = <Thaumcraft:ItemResource:7>;
val ingotThaumium = <Thaumcraft:ItemResource:2>;

Infusion.removeRecipe(<ThaumicTinkerer:repairer>);
// Infusion can't use ore dictionary, so must iterate entries
for blockThaumium in <ore:blockThaumium>.items {
  mods.thaumcraft.Infusion.addRecipe(
    "REPAIRER", blockThaumium, [
      ingotIron, ingotGold, gemDiamond,
      stoneCobble, plankWood, itemLeather,
      fabicEnchanted, ingotThaumium
    ],
    "fabrico 20, instrumentum 15, praecantatio 15, ordo 10",
    thaumicRestaurer, 8
  );

}
