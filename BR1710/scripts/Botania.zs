import mods.botania.ManaInfusion;
import mods.botania.Lexicon;

val steelingot = <gregtech:gt.metaitem.01:11305>;
val blocksteel = <gregtech:gt.blockmetal6:13>;
val manasteel = <Botania:manaResource>;
val manasteelblock = <Botania:storage>;
val framedlivingwood = <Botania:livingwood:3>;
val frameddreamwod = <Botania:dreamwood:3>;
val craftingtable = <minecraft:crafting_table>;

// Botania Nerf
 
ManaInfusion.removeRecipe(manasteel);
for ingotSteel in <ore:ingotSteel>.items {
ManaInfusion.addInfusion(manasteel, ingotSteel, 1000);
}

ManaInfusion.removeRecipe(manasteelblock);
 for blockSteel in <ore:blockSteel>.items {
ManaInfusion.addInfusion(manasteelblock, blockSteel, 5000);
}

Lexicon.removePage("botania.entry.pool", 7);
Lexicon.addInfusionPage("botania.page.pool","botania.entry.pool",7,[manasteel, manasteelblock],[steelingot, blocksteel],[1000, 5000]);
game.setLocalization("en_US", "botania.page.pool", "Infusing &1Steel&0.");  

// Botania Woods a la Gregtech sauce
// All it takes are Oredictionary registrations

// Livingwood
val livingwood = <Botania:livingwood:0>;
val livingwoodSlab = <Botania:livingwood0Slab:0>;
val livingwoodPlank = <Botania:livingwood:1>;
val livingwoodPlankSlab = <Botania:livingwood1Slab:0>;
<ore:logWood>.add(livingwood);
<ore:plankWood>.add(livingwoodPlank);
<ore:slabWood>.add(livingwoodSlab);
<ore:slabWood>.add(livingwoodPlankSlab);

// Dreamwood
val dreamwood = <Botania:dreamwood:0>;
val dreamwoodSlab = <Botania:dreamwood0Slab:0>;
val dreamwoodPlank = <Botania:dreamwood:1>;
val dreamwoodPlankSlab = <Botania:dreamwood1Slab:0>;
<ore:logWood>.add(dreamwood);
<ore:plankWood>.add(dreamwoodPlank);
<ore:slabWood>.add(dreamwoodSlab);
<ore:slabWood>.add(dreamwoodPlankSlab);

// ShimmerWood
val shimmerWoodPlanks = <Botania:shimmerwoodPlanks>;
val shimmerWoodPlanksSlab = <Botania:shimmerwoodPlanks0Slab>;
<ore:plankWood>.add(shimmerWoodPlanks);
<ore:slabWood>.add(shimmerWoodPlanksSlab);

// livingwood slabs need a dedicated recipe tweak
var toolSaw = <ore:craftingToolSaw>;
recipes.removeShaped(livingwoodSlab * 6,[[livingwood,livingwood,livingwood]]);
recipes.addShaped(livingwoodSlab * 2,[[toolSaw,livingwood]]);

// framedLivingwood

recipes.remove(framedlivingwood);
recipes.addShaped(framedlivingwood, [
  [livingwoodPlank, null, livingwoodPlank],
  [null, null, null],
  [livingwoodPlank, null, livingwoodPlank]
]);

recipes.remove(frameddreamwod);
recipes.addShaped(frameddreamwod, [
  [dreamwoodPlank, null, dreamwoodPlank],
  [null, null, null],
  [dreamwoodPlank, null, dreamwoodPlank]
]);
