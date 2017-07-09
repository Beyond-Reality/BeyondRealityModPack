# bibliowoods.zs tweaks

import minetweaker.item.IIngredient;

// Ingredients

val plankWoodsA = [
  <ore:plankWoodAcacia>, <ore:plankWoodBalsa>, <ore:plankWoodBaobab>, <ore:plankWoodCherry>,
  <ore:plankWoodChestnut>, <ore:plankWoodCitrus>, <ore:plankWoodEbony>, <ore:plankWoodGreenheart>,
  <ore:plankWoodKapok>, <ore:plankWoodLarch>, <ore:plankWoodLime>, <ore:plankWoodMahoe>,
  <ore:plankWoodMahogany>, <ore:plankWoodMaple>, <ore:plankWoodPalm>, <ore:plankWoodPapaya>
] as IIngredient[];

val plankWoodsB = [
  <ore:plankWoodPine>, <ore:plankWoodPlum>, <ore:plankWoodPoplar>, <ore:plankWoodSequoia>,
  <ore:plankWoodTeak>, <ore:plankWoodWalnut>, <ore:plankWoodWenge>, <ore:plankWoodWillow>
] as IIngredient[];

val slabWoods = [
  <ore:slabWoodAcacia>, <ore:slabWoodBalsa>, <ore:slabWoodBaobab>, <ore:slabWoodCherry>,
  <ore:slabWoodChestnut>, <ore:slabWoodCitrus>, <ore:slabWoodEbony>, <ore:slabWoodGreenheart>,
  <ore:slabWoodKapok>, <ore:slabWoodLarch>, <ore:slabWoodLime>, <ore:slabWoodMahoe>,
  <ore:slabWoodMahogany>, <ore:slabWoodMaple>, <ore:slabWoodPalm>, <ore:slabWoodPapaya>,
  <ore:slabWoodPine>, <ore:slabWoodPlum>, <ore:slabWoodPoplar>, <ore:slabWoodSequoia>,
  <ore:slabWoodTeak>, <ore:slabWoodWalnut>, <ore:slabWoodWenge>, <ore:slabWoodWillow>
] as IIngredient[];

val slabWoodsA = [
  <ore:slabWoodAcacia>, <ore:slabWoodBalsa>, <ore:slabWoodBaobab>, <ore:slabWoodCherry>,
  <ore:slabWoodChestnut>, <ore:slabWoodCitrus>, <ore:slabWoodEbony>, <ore:slabWoodGreenheart>,
  <ore:slabWoodKapok>, <ore:slabWoodLarch>, <ore:slabWoodLime>, <ore:slabWoodMahoe>,
  <ore:slabWoodMahogany>, <ore:slabWoodMaple>, <ore:slabWoodPalm>, <ore:slabWoodPapaya>
] as IIngredient[];

val slabWoodsB = [
  <ore:slabWoodPine>, <ore:slabWoodPlum>, <ore:slabWoodPoplar>, <ore:slabWoodSequoia>,
  <ore:slabWoodTeak>, <ore:slabWoodWalnut>, <ore:slabWoodWenge>, <ore:slabWoodWillow>
] as IIngredient[];

val stick = <minecraft:stick>;
val bottle = <minecraft:glass_bottle>;
val ingotIron = <ore:ingotIron>;
val blockGlass = <ore:blockGlassColorless>;
val blockWool = <ore:blockWoolWhite>;
val torch = <minecraft:torch>;
val feather = <ore:craftingFeather>;
val woodplate = <minecraft:wooden_pressure_plate>;
val dyeBlack = <ore:dyeBlack>;
val craftingTable = <minecraft:crafting_table>;
val clock = <minecraft:clock>;
val ingotGold = <ore:ingotGold>;

for meta, slab in slabWoods {

  var seatBack2 = <BiblioWoodsForestry:seatBack2>.definition.makeStack(meta);

// Seatback 1

  recipes.addShaped(<BiblioWoodsForestry:seatBack1>.definition.makeStack(meta), [
    [null, blockWool, null],
    [null, slab, null],
    [stick, null, stick]
  ]);

// Seatback 2

  recipes.addShaped(<BiblioWoodsForestry:seatBack2>.definition.makeStack(meta), [
    [stick, blockWool, stick],
    [stick, slab, stick],
    [stick, null, stick]
  ]);

// Seatback 3

  recipes.addShaped(<BiblioWoodsForestry:seatBack3>.definition.makeStack(meta), [
    [slab, seatBack2]
  ]);

// Seatback 4

  recipes.addShaped(<BiblioWoodsForestry:seatBack4>.definition.makeStack(meta), [
    [null, blockWool, null],
    [null, slab, null]
  ]);

// Seatback 5

  recipes.addShaped(<BiblioWoodsForestry:seatBack5>.definition.makeStack(meta), [
    [slab, slab],
    [seatBack2, null]
  ]);

}

for meta, slab in slabWoodsA {

  var plank = plankWoodsA[meta];
  var bookCase = <BiblioWoodsForestry:BiblioWoodFstBookcase>.definition.makeStack(meta);
  var paintingFrameBorderless = <BiblioWoodsForestry:BiblioWoodPaintingT0>.definition.makeStack(meta);

// Book Case

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstBookcase>.definition.makeStack(meta), [
    [plank, slab, plank],
    [plank, slab, plank],
    [plank, slab, plank]
  ]);

// Potion Shelf

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstpotshelf>.definition.makeStack(meta), [
    [slab, slab, slab],
    [plank, bottle, plank],
    [slab, slab, slab]
  ]);

// Shelf

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstshelf>.definition.makeStack(meta), [
    [slab, slab, slab],
    [null, plank, null],
    [slab, slab, slab]
  ]);

// Tool Rack

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstrack>.definition.makeStack(meta), [
    [slab, slab, slab],
    [slab, ingotIron, slab],
    [slab, slab, slab]
  ]);

// Case

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstcase0>.definition.makeStack(meta), [
    [slab, blockGlass, slab],
    [slab, blockWool, slab],
    [slab, slab, slab]
  ]);

// Label

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstlabel>.definition.makeStack(meta), [
    [slab, slab, slab],
    [slab, slab, slab],
    [null, null, null]
  ]);

// Desk

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstdesk>.definition.makeStack(meta), [
    [torch, null, feather],
    [slab, slab, slab],
    [plank, null, plank]
  ]);

// Table

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFsttable>.definition.makeStack(meta), [
    [slab, slab, slab],
    [null, plank, null],
    [null, plank, null]
  ]);

// Seat

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodSeat>.definition.makeStack(meta), [
    [null, blockWool, null],
    [null, slab, null],
    [stick, woodplate, stick]
  ]);

// Map Frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodMapFrame>.definition.makeStack(meta), [
    [stick, stick, stick],
    [stick, slab, stick],
    [stick, stick, stick]
  ]);

// Fancy Workbench

  recipes.addShapedMirrored(<BiblioWoodsForestry:BiblioWoodFancyWorkbench>.definition.makeStack(meta), [
    [dyeBlack, craftingTable, feather],
    [slab, bookCase, slab],
    [slab, slab, slab]
  ]);

// Clock

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodClock>.definition.makeStack(meta), [
    [slab, clock, slab],
    [slab, stick, slab],
    [slab, ingotGold, slab]
  ]);

// Borderless painting frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodPaintingT0>.definition.makeStack(meta), [
    [stick, slab, stick],
    [slab, slab, slab],
    [stick, slab, stick]
  ]);

// Single tier painting frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodPaintingT1>.definition.makeStack(meta), [
    [slab, slab, slab],
    [slab, paintingFrameBorderless, slab],
    [slab, slab, slab]
  ]);

// Double tier painting frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodPaintingT2>.definition.makeStack(meta), [
    [stick, slab, stick],
    [slab, paintingFrameBorderless, slab],
    [stick, slab, stick]
  ]);

// Triple tier painting frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodPaintingT3>.definition.makeStack(meta), [
    [stick, slab, stick],
    [stick, paintingFrameBorderless, stick],
    [stick, slab, stick]
  ]);

// Quadruple tier painting frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodPaintingT4>.definition.makeStack(meta), [
    [stick, stick, stick],
    [stick, paintingFrameBorderless, stick],
    [stick, stick, stick]
  ]);

}

for meta, slab in slabWoodsB {

  var plank = plankWoodsB[meta];
  var bookCase = <BiblioWoodsForestry:BiblioWoodFstBookcase2>.definition.makeStack(meta);
  var paintingFrameBorderless = <BiblioWoodsForestry:BiblioWoodPaintingT0b>.definition.makeStack(meta);

// Book Case

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstBookcase2>.definition.makeStack(meta), [
    [plank, slab, plank],
    [plank, slab, plank],
    [plank, slab, plank]
  ]);

// Potion Shelf

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstpotshelf2>.definition.makeStack(meta), [
    [slab, slab, slab],
    [plank, bottle, plank],
    [slab, slab, slab]
  ]);

// Shelf

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstshelf2>.definition.makeStack(meta), [
    [slab, slab, slab],
    [null, plank, null],
    [slab, slab, slab]
  ]);

// Tool Rack

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstrack2>.definition.makeStack(meta), [
    [slab, slab, slab],
    [slab, ingotIron, slab],
    [slab, slab, slab]
  ]);

// Case

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstcase1>.definition.makeStack(meta), [
    [slab, blockGlass, slab],
    [slab, blockWool, slab],
    [slab, slab, slab]
  ]);

// Label

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstlabel2>.definition.makeStack(meta), [
    [slab, slab, slab],
    [slab, slab, slab],
    [null, null, null]
  ]);

// Desk

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFstdesk2>.definition.makeStack(meta), [
    [torch, null, feather],
    [slab, slab, slab],
    [plank, null, plank]
  ]);

// Table

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodFsttable2>.definition.makeStack(meta), [
    [slab, slab, slab],
    [null, plank, null],
    [null, plank, null]
  ]);

// Seat

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodSeat2>.definition.makeStack(meta), [
    [null, blockWool, null],
    [null, slab, null],
    [stick, woodplate, stick]
  ]);

// Map Frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodMapFrame2>.definition.makeStack(meta), [
    [stick, stick, stick],
    [stick, slab, stick],
    [stick, stick, stick]
  ]);

// Fancy Workbench

  recipes.addShapedMirrored(<BiblioWoodsForestry:BiblioWoodFancyWorkbench2>.definition.makeStack(meta), [
    [dyeBlack, craftingTable, feather],
    [slab, bookCase, slab],
    [slab, slab, slab]
  ]);

// Clock

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodClock2>.definition.makeStack(meta), [
    [slab, clock, slab],
    [slab, stick, slab],
    [slab, ingotGold, slab]
  ]);

// Borderless painting frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodPaintingT0b>.definition.makeStack(meta), [
    [stick, slab, stick],
    [slab, slab, slab],
    [stick, slab, stick]
  ]);

// Single tier painting frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodPaintingT1b>.definition.makeStack(meta), [
    [slab, slab, slab],
    [slab, paintingFrameBorderless, slab],
    [slab, slab, slab]
  ]);

// Double tier painting frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodPaintingT2b>.definition.makeStack(meta), [
    [stick, slab, stick],
    [slab, paintingFrameBorderless, slab],
    [stick, slab, stick]
  ]);

// Triple tier painting frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodPaintingT3b>.definition.makeStack(meta), [
    [stick, slab, stick],
    [stick, paintingFrameBorderless, stick],
    [stick, slab, stick]
  ]);

// Quadruple tier painting frame

  recipes.addShaped(<BiblioWoodsForestry:BiblioWoodPaintingT4b>.definition.makeStack(meta), [
    [stick, stick, stick],
    [stick, paintingFrameBorderless, stick],
    [stick, stick, stick]
  ]);

}

