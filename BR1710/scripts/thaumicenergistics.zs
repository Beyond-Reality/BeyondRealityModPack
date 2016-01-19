// thaumicenergistics.zs Tweaks
import mods.thaumcraft.Arcane;

// Ingredients
val calculationProcessor = <appliedenergistics2:item.ItemMultiMaterial:23>;
val dyeBlue = <ore:dyeBlue>;
val gemCertusQuartz = <ore:gemCertusQuartz>;
val logicProcessor = <appliedenergistics2:item.ItemMultiMaterial:22>;
val vibrantQuartzGlass = <appliedenergistics2:tile.BlockQuartzLamp>;
val wispEssence = <Thaumcraft:ItemWispEssence>;
val zombieBrain = <Thaumcraft:ItemZombieBrain>;

// Recipes outputs
val componentEssentiaStorage1k = <thaumicenergistics:storage.component:0>;
val knowledgeCore = <thaumicenergistics:knowledge.core>;

// Fix recipes to not spend Pure/Charged Quartz when not required

// 1k ME Essentia Storage Component
Arcane.removeRecipe(componentEssentiaStorage1k);
Arcane.addShaped("thaumicenergistics.TESTORAGE",
  componentEssentiaStorage1k,
  "ignis 3, ordo 1", [
    [wispEssence, gemCertusQuartz, null],
    [gemCertusQuartz, logicProcessor, gemCertusQuartz],
    [null, gemCertusQuartz, wispEssence]
]);
Arcane.removeRecipe(knowledgeCore);
Arcane.addShaped("thaumicenergistics.TECORES",
  knowledgeCore,
  "aqua 3, ordo 3, terra 1", [
    [vibrantQuartzGlass, dyeBlue, vibrantQuartzGlass],
    [dyeBlue, zombieBrain, dyeBlue],
    [vibrantQuartzGlass, calculationProcessor, vibrantQuartzGlass]
]);
