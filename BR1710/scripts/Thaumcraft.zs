# Thaumcraft.zs tweaks
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Arcane;

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


// Make KAMI awakened tools, armour and wand harder to obtain using ichorium ingot as a gate
val ingotTritainium =  <gregtech:gt.metaitem.01:11329>;
val ichor = <ThaumicTinkerer:kamiResource>;
val ichorCloth = <ThaumicTinkerer:kamiResource:1>;
val ichoriumIngot = <ThaumicTinkerer:kamiResource:2>;
val exDiamond = <ore:gemExquisiteDiamond>;
val salisMundus = <Thaumcraft:ItemResource:14>;
val silverwoodRod = <Thaumcraft:WandRod:2>;
val ichorRod = <ThaumicTinkerer:kamiResource:5>;

mods.thaumcraft.Arcane.removeRecipe(ichoriumIngot);
mods.thaumcraft.Arcane.addShaped(
   "ICHORIUM", ichoriumIngot,
   "ignis 100, terra 100, aqua 100, aer 100, ordo 100, perditio 100",
   [[null, ingotTritainium, null], 
    [ichor, exDiamond, ichor],
    [null, ichor, null]]
);
mods.thaumcraft.Research.refreshResearchRecipe("ICHORIUM");

Infusion.removeRecipe(ichorRod);
mods.thaumcraft.Infusion.addRecipe(
  "ROD_ICHORCLOTH", silverwoodRod, [
   ichoriumIngot,
   ichorCloth,
   salisMundus, <minecraft:ghast_tear>, salisMundus,
   ichorCloth
  ],
  "instrumentum 64, lux 64, praecantatio 150",
  ichorRod, 10
);
mods.thaumcraft.Research.refreshResearchRecipe("ROD_ICHORCLOTH");

mods.thaumcraft.Arcane.removeRecipe(<ThaumicTinkerer:ichorclothHelm>);
mods.thaumcraft.Arcane.addShaped(
   "ICHORCLOTH_ARMOR", <ThaumicTinkerer:ichorclothHelm>,
   "aqua 75",
   [[ichoriumIngot, ichorCloth, ichoriumIngot], 
    [ichorCloth, null, ichorCloth],
    [null, null, null]]
);
mods.thaumcraft.Arcane.removeRecipe(<ThaumicTinkerer:ichorclothChest>);
mods.thaumcraft.Arcane.addShaped(
   "ICHORCLOTH_ARMOR", <ThaumicTinkerer:ichorclothChest>,
   "aer 75",
   [[ichorCloth, null, ichorCloth], 
    [ichoriumIngot, ichorCloth, ichoriumIngot],
    [ichorCloth, ichorCloth, ichorCloth]]
);
mods.thaumcraft.Arcane.removeRecipe(<ThaumicTinkerer:ichorclothLegs>);
mods.thaumcraft.Arcane.addShaped(
   "ICHORCLOTH_ARMOR", <ThaumicTinkerer:ichorclothLegs>,
   "ignis 75",
   [[ichorCloth, ichorCloth, ichorCloth], 
    [ichoriumIngot, null, ichoriumIngot],
    [ichorCloth, null, ichorCloth]]
);
mods.thaumcraft.Arcane.removeRecipe(<ThaumicTinkerer:ichorclothBoots>);
mods.thaumcraft.Arcane.addShaped(
   "ICHORCLOTH_ARMOR", <ThaumicTinkerer:ichorclothBoots>,
   "terra 75",
   [[ichorCloth, null, ichorCloth], 
    [ichoriumIngot, null, ichoriumIngot],
    [null, null, null]]
);
mods.thaumcraft.Research.refreshResearchRecipe("ICHORCLOTH_ARMOR");
