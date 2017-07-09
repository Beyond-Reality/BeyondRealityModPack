# storagedrawers.zs tweaks

import minetweaker.item.IIngredient;

// Ingredients

val plankWoodsA = [
  <ore:plankWoodLarch>, <ore:plankWoodTeak>, <ore:plankWoodAcacia>, <ore:plankWoodLime>,
  <ore:plankWoodChestnut>, <ore:plankWoodWenge>, <ore:plankWoodBaobab>, <ore:plankWoodSequoia>,
  <ore:plankWoodKapok>, <ore:plankWoodEbony>, <ore:plankWoodMahogany>, <ore:plankWoodBalsa>,
  <ore:plankWoodWillow>, <ore:plankWoodWalnut>, <ore:plankWoodGreenheart>, <ore:plankWoodCherry>
] as IIngredient[];

val plankWoodsB = [
  <ore:plankWoodMahoe>, <ore:plankWoodPoplar>, <ore:plankWoodPalm>, <ore:plankWoodPapaya>,
  <ore:plankWoodPine>, <ore:plankWoodPlum>, <ore:plankWoodMaple>, <ore:plankWoodCitrus>,
  <ore:plankWoodSequoiaGiant>, <ore:plankWoodIpe>, <ore:plankWoodPadauk>, <ore:plankWoodCocobolo>,
  <ore:plankWoodZebrawood>
] as IIngredient[];

val slabWoodsA = [
  <ore:slabWoodLarch>, <ore:slabWoodTeak>, <ore:slabWoodAcacia>, <ore:slabWoodLime>,
  <ore:slabWoodChestnut>, <ore:slabWoodWenge>, <ore:slabWoodBaobab>, <ore:slabWoodSequoia>,
  <ore:slabWoodKapok>, <ore:slabWoodEbony>, <ore:slabWoodMahogany>, <ore:slabWoodBalsa>,
  <ore:slabWoodWillow>, <ore:slabWoodWalnut>, <ore:slabWoodGreenheart>, <ore:slabWoodCherry>
] as IIngredient[];

val slabWoodsB = [
  <ore:slabWoodMahoe>, <ore:slabWoodPoplar>, <ore:slabWoodPalm>, <ore:slabWoodPapaya>,
  <ore:slabWoodPine>, <ore:slabWoodPlum>, <ore:slabWoodMaple>, <ore:slabWoodCitrus>,
  <ore:slabWoodSequoiaGiant>, <ore:slabWoodIpe>, <ore:slabWoodPadauk>, <ore:slabWoodCocobolo>,
  <ore:slabWoodZebrawood>
] as IIngredient[];

val chest = <ore:craftingChest>;
val stick = <ore:stickWood>;

// Recipes

for meta, plank in plankWoodsA {

  var slab = slabWoodsA[meta];

// Drawer 1
  recipes.addShaped(<StorageDrawersForestry:fullDrawers1A>.definition.makeStack(meta), [
    [plank, plank, plank],
    [null, chest, null],
    [plank, plank, plank]
  ]);

// Drawer 2
  recipes.addShaped(<StorageDrawersForestry:fullDrawers2A>.definition.makeStack(meta) * 2, [
    [plank, chest, plank],
    [plank, plank, plank],
    [plank, chest, plank]
  ]);

// Drawer 4
  recipes.addShaped(<StorageDrawersForestry:fullDrawers4A>.definition.makeStack(meta) * 4, [
    [chest, plank, chest],
    [plank, plank, plank],
    [chest, plank, chest]
  ]);

// Half Drawer 2
  recipes.addShaped(<StorageDrawersForestry:halfDrawers2A>.definition.makeStack(meta) * 2, [
    [slab, chest, slab],
    [slab, slab, slab],
    [slab, chest, slab]
  ]);

// Half Drawer 4
  recipes.addShaped(<StorageDrawersForestry:halfDrawers4A>.definition.makeStack(meta) * 4, [
    [chest, slab, chest],
    [slab, slab, slab],
    [chest, slab, chest]
  ]);

// Trim
  recipes.addShaped(<StorageDrawersForestry:trimA>.definition.makeStack(meta) * 4, [
    [stick, plank, stick],
    [plank, plank, plank],
    [stick, plank, stick]
  ]);

}

for meta, plank in plankWoodsB {

  var slab = slabWoodsB[meta];

// Drawer 1
  recipes.addShaped(<StorageDrawersForestry:fullDrawers1B>.definition.makeStack(meta), [
    [plank, plank, plank],
    [null, chest, null],
    [plank, plank, plank]
  ]);

// Drawer 2
  recipes.addShaped(<StorageDrawersForestry:fullDrawers2B>.definition.makeStack(meta) * 2, [
    [plank, chest, plank],
    [plank, plank, plank],
    [plank, chest, plank]
  ]);

// Drawer 4
  recipes.addShaped(<StorageDrawersForestry:fullDrawers4B>.definition.makeStack(meta) * 4, [
    [chest, plank, chest],
    [plank, plank, plank],
    [chest, plank, chest]
  ]);

// Half Drawer 2
  recipes.addShaped(<StorageDrawersForestry:halfDrawers2B>.definition.makeStack(meta) * 2, [
    [slab, chest, slab],
    [slab, slab, slab],
    [slab, chest, slab]
  ]);

// Half Drawer 4
  recipes.addShaped(<StorageDrawersForestry:halfDrawers4B>.definition.makeStack(meta) * 4, [
    [chest, slab, chest],
    [slab, slab, slab],
    [chest, slab, chest]
  ]);

// Trim
  recipes.addShaped(<StorageDrawersForestry:trimB>.definition.makeStack(meta) * 4, [
    [stick, plank, stick],
    [plank, plank, plank],
    [stick, plank, stick]
  ]);

}
