import mods.botania.ManaInfusion;

val steel = <ore:ingotSteel>;
val mana = <ore:ingotManaSteel>;
val manasteel = <Botania:manaResource>;
val blocksteel = <ore:blockSteel>;
val framedlivingwood = <Botania:livingwood:3>;
val craftingtable = <minecraft:crafting_table>;

// Botania Nerf
mods.botania.ManaInfusion.removeRecipe(<Botania:manaResource>);
mods.botania.ManaInfusion.addInfusion(<Botania:manaResource>, steel, 1000);

mods.botania.ManaInfusion.removeRecipe(<Botania:storage>);
mods.botania.ManaInfusion.addInfusion(<Botania:storage>, blocksteel, 5000);

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
recipes.addShaped(framedlivingwood, [
  [livingwoodPlank, null, livingwoodPlank],
  [null, null, null],
  [livingwoodPlank, null, livingwoodPlank]
]);
