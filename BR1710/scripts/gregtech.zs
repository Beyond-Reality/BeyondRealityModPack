import mods.gregtech.Assembler;
import mods.gregtech.Centrifuge;
import mods.ic2.Macerator;

import minetweaker.data.IData;
import minetweaker.item.IItemStack;

var dustDacite = <gregtech:gt.metaitem.01:2859>;
var dustBiotite = <gregtech:gt.metaitem.01:2848>;
var dustRhyolite = <gregtech:gt.metaitem.01:2875>;
var dustSiliconDioxide = <gregtech:gt.metaitem.01:2837>;


// DACITE

//  public static void addRecipe(IItemStack[] outputs, ILiquidStack fluidOutput, IItemStack input, IItemStack cells, ILiquidStack fluidInput, int[] chances, int durationTicks, int euPerTick) {
Centrifuge.addRecipe(
  // IItemStack[] outputs,
  [
    dustBiotite,
    dustRhyolite
  ],

  // ILiquidStack fluidOutput, IItemStack input,
  null,
  dustDacite * 2,

  // IItemStack cells, ILiquidStack fluidInput,
  null, null,

  // int[] chances,
  [10000, 10000],

  // int durationTicks, int euPerTick
  400, 16
);


// RHYOLITE

Centrifuge.addRecipe(
  // IItemStack[] outputs,
  [
    dustBiotite,
    dustSiliconDioxide * 3,
  ],
  // ILiquidStack fluidOutput, IItemStack input,
  null,
  dustRhyolite * 4,

  // IItemStack cells, ILiquidStack fluidInput,
  null, null,

  // int[] chances,
  [10000, 10000],

  // int durationTicks, int euPerTick
  256, 16
);

var machineCasing = <gregtech:gt.blockcasings2:11>;
var plateSteel = <ore:plateSteel>;
var boltIron = <ore:boltIron>;
var toolWrench = <ore:craftingToolWrench>;

recipes.addShaped(machineCasing * 4, [[boltIron, plateSteel, boltIron],
                                      [plateSteel,toolWrench.transformDamage() ,plateSteel],
                                      [boltIron, plateSteel, boltIron]]);

var craftingDuctTape = <gregtech:gt.metaitem.01:32764>;
var plateRubber = <gregtech:gt.metaitem.01:17880>;
var crateGtDustRubber = <gregtech:gt.metaitem.03:880>;
var rawCarbonMesh = <IC2:itemPartCarbonMesh>;
var stickyResin = <IC2:itemHarz>;
recipes.addShaped(craftingDuctTape, [[plateRubber,plateRubber,plateRubber],
                                     [stickyResin,crateGtDustRubber,stickyResin],
                                     [rawCarbonMesh,rawCarbonMesh,rawCarbonMesh]]);

//Shutter Recipe Fix
var ironDoor = <minecraft:iron_door>;
var plateIron = <Railcraft:part.plate>;
var plateWroughtIron = <gregtech:gt.metaitem.01:17304>;
var plateAluminium = <gregtech:gt.metaitem.01:17019>;
var shutterModule = <gregtech:gt.metaitem.01:32749>;
Assembler.addRecipe(shutterModule * 2, plateIron * 2, ironDoor * 1, 800, 16);
Assembler.addRecipe(shutterModule * 2, plateAluminium * 2, ironDoor * 1, 800, 16);
Assembler.addRecipe(shutterModule * 2, plateWroughtIron * 2, ironDoor * 1, 800, 16);

// Add Mars Tungstate Ore to Oredict
val tungstate = <ore:oreTungstate>;
tungstate.add(<beyondrealitycore:customBlock_23>);

// Enable processing of bee combs with greg centriguge
//addRecipe(IItemStack[] outputs, ILiquidStack fluidOutput, IItemStack input, IItemStack cells, ILiquidStack fluidInput, int[] chances, int durationTicks, int euPerTick)

//Sticky Comb
Centrifuge.addRecipe(
  [<IC2:itemHarz>,<IC2:itemFuelPlantBall>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:103>,
  null,null,
  [5000, 1500, 10000],
  240, 16
);

//Lignite Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:2538>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:101>,
  null, null,
  [10000, 7000],
  240, 16
);

//Coal Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:535>,<minecraft:coal>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:102>,
  null, null,
  [10000, 500, 7000],
  240, 16
);

//Oil Comb
Centrifuge.addRecipe(
  [<gendustry:HoneyDrop:10>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:104>,
  null, null,
  [10000, 10000],
  240, 16
);

//Red Alloy Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:308>,<Forestry:refractoryWax>],
  null,<gendustry:HoneyComb:105>,
  null, null,
  [10000, 5000],
  240, 16
);

//Energetic Alloy Comb
Centrifuge.addRecipe(
  [<EnderIO:itemAlloy:1>,<Forestry:refractoryWax>],
  null,<gendustry:HoneyComb:106>,
  null, null,
  [1300, 5000],
  240, 16
);

//Vibrant Alloy Comb
Centrifuge.addRecipe(
  [<EnderIO:itemMaterial:4>,<Forestry:refractoryWax>],
  null,<gendustry:HoneyComb:107>,
  null, null,
  [10000, 5000],
  240, 16
);

//Pulsating Alloy Comb
Centrifuge.addRecipe(
  [<EnderIO:itemMaterial:3>,<Forestry:refractoryWax>],
  null,<gendustry:HoneyComb:108>,
  null, null,
  [10000, 5000],
  240, 16
);

//Shard Comb
Centrifuge.addRecipe(
  [
    <Thaumcraft:ItemShard>,
    <Thaumcraft:ItemShard:1>,
    <Thaumcraft:ItemShard:2>,
    <Thaumcraft:ItemShard:3>,
    <Thaumcraft:ItemShard:4>,
    <Thaumcraft:ItemShard:5>
  ],
  null,<gendustry:HoneyComb:109>,
  null, null,
  [1400, 1400, 1400, 1400, 1400, 1400],
  240, 16
);

//Thaumium Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:330>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:110>,
  null, null,
  [10000, 5000],
  240, 16
);

//Stone Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:2299>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:111>,
  null, null,
  [7000, 3000],
  240, 16
);

//Certus Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:516>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:112>,
  null, null,
  [10000, 3000],
  240, 16
);

//Fluix Comb
Centrifuge.addRecipe(
  [<appliedenergistics2:item.ItemMultiMaterial:8>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:113>,
  null, null,
  [1300, 3000],
  240, 16
);

//Redstone Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:810>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:114>,
  null, null,
  [10000, 3000],
  240, 16
);

//Lapis Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:526>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:115>,
  null, null,
  [10000, 3000],
  240, 16
);

//Ruby Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:502>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:116>,
  null, null,
  [10000, 3000],
  240, 16
);

//Sahpire Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:503>,<gregtech:gt.metaitem.01:504>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:117>,
  null, null,
  [5000, 5000, 3000],
  240, 16
);

//Diamond Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:500>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:118>,
  null, null,
  [10000, 3000],
  240, 16
);

//Olivine Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:505>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:119>,
  null, null,
  [10000, 3000],
  240, 16
);

//Emerald Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:501>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:120>,
  null, null,
  [10000, 3000],
  240, 16
);

//Slag Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:2299>,<IC2:itemSlag>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:121>,
  null, null,
  [7000, 500, 3000],
  240, 16
);

//Copper Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:35>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:122>,
  null, null,
  [10000, 3000],
  240, 16
);

//Tin Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:57>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:123>,
  null, null,
  [10000, 3000],
  240, 16
);

//Iron Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:32>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:125>,
  null, null,
  [10000, 3000],
  240, 16
);

//Lead Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:89>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:124>,
  null, null,
  [10000, 3000],
  240, 16
);

//Steel Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:305>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:126>,
  null, null,
  [10000, 3000],
  240, 16
);

//Nickel Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:34>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:127>,
  null, null,
  [10000, 3000],
  240, 16
);

//Zinc Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:36>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:128>,
  null, null,
  [10000, 3000],
  240, 16
);

//Silver Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:54>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:129>,
  null, null,
  [10000, 3000],
  240, 16
);

//Gold Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:86>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:130>,
  null, null,
  [10000, 3000],
  240, 16
);

//Aluminium Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:19>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:131>,
  null, null,
  [5000, 3000],
  240, 16
);

//Mang Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:31>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:132>,
  null, null,
  [5000, 3000],
  240, 16
);

//Titanium Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:28>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:133>,
  null, null,
  [5000, 3000],
  240, 16
);

//Chrome Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:30>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:134>,
  null, null,
  [5000, 3000],
  240, 16
);

//Tungsten Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:81>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:135>,
  null, null,
  [5000, 3000],
  240, 16
);

//Platinum Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:85>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:136>,
  null, null,
  [5000, 3000],
  240, 16
);

//Iridium Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:84>,<gregtech:gt.metaitem.01:83>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:137>,
  null, null,
  [2000, 800, 3000],
  240, 16
);

//Uranium Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:97>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:138>,
  null, null,
  [2500, 3000],
  240, 16
);

//Plutonium Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:100>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:139>,
  null, null,
  [1600, 3000],
  240, 16
);

//Naquidah Comb
Centrifuge.addRecipe(
  [<gregtech:gt.metaitem.01:324>,<gregtech:gt.metaitem.01:326>,<Forestry:beeswax>],
  null,<gendustry:HoneyComb:140>,
  null, null,
  [2000, 500, 3000],
  240, 16
);

//D-O-B Comb
Centrifuge.addRecipe(
  [
    <IC2:itemHarz>,
    <IC2:itemFuelPlantBall>,
    <gregtech:gt.metaitem.01:2538>,
    <gregtech:gt.metaitem.01:535>,
    <minecraft:coal>,
    <gendustry:HoneyDrop:10>,
//--- Gregtech Centrifuge only handle up to here ---
    <gregtech:gt.metaitem.01:308>,
    <EnderIO:itemAlloy:1>,
    <EnderIO:itemMaterial:4>,
    <EnderIO:itemMaterial:3>,
    <Thaumcraft:ItemShard>,   // Air Shard
    <Thaumcraft:ItemShard:1>, // Fire Shard
    <Thaumcraft:ItemShard:2>, // Water Shard
    <Thaumcraft:ItemShard:3>, // Earth Shard
    <Thaumcraft:ItemShard:4>, // Order Shard
    <Thaumcraft:ItemShard:5>, // Entropy Shard
    <Thaumcraft:ItemShard:6>, // Balanced Shard
    <gregtech:gt.metaitem.01:330>,
    <gregtech:gt.metaitem.01:2299>,
    <gregtech:gt.metaitem.01:516>,
    <appliedenergistics2:item.ItemMultiMaterial:8>,
    <gregtech:gt.metaitem.01:810>,
    <gregtech:gt.metaitem.01:526>,
    <gregtech:gt.metaitem.01:502>,
    <gregtech:gt.metaitem.01:503>, // Tiny Pile of blue Sapphire
    <gregtech:gt.metaitem.01:504>,
    <gregtech:gt.metaitem.01:500>,
    <gregtech:gt.metaitem.01:505>,
    <gregtech:gt.metaitem.01:501>,
    <gregtech:gt.metaitem.01:35>,
    <gregtech:gt.metaitem.01:57>,
    <gregtech:gt.metaitem.01:89>,
    <gregtech:gt.metaitem.01:32>,
    <gregtech:gt.metaitem.01:305>,
    <gregtech:gt.metaitem.01:34>,
    <gregtech:gt.metaitem.01:36>,
    <gregtech:gt.metaitem.01:54>,
    <gregtech:gt.metaitem.01:86>,
    <gregtech:gt.metaitem.01:19>,
    <gregtech:gt.metaitem.01:31>,
    <gregtech:gt.metaitem.01:28>,
    <gregtech:gt.metaitem.01:30>,
    <gregtech:gt.metaitem.01:81>,
    <gregtech:gt.metaitem.01:85>,
    <gregtech:gt.metaitem.01:84>,   // tiny pile of iridium
    <gregtech:gt.metaitem.01:83>,
    <gregtech:gt.metaitem.01:97>,
    <gregtech:gt.metaitem.01:10>,
    <gregtech:gt.metaitem.01:324>
  ],
  null,<gendustry:HoneyComb:142>,
  null, null,
  [1500,100,1500,1500,1500,1500,1500,100,1500,1500,100,100,100,100,100,100,100,1500,700,1500,100,1500,1500,1500,500,500,1500,1500,1500,1500,1500,1500,1500,1500,1500,1500,1500,1500,500,500,500,500,500,500,500,100,500,400,300],
  240, 16
);

// Vanilla Forestry Combs
//Honey Comb
Centrifuge.addRecipe(
  [<Forestry:beeswax>,<Forestry:honeyDrop>],
  null,<Forestry:beeCombs:0>,
  null, null,
  [10000, 9000],
  240, 16
);

//Cocoa Comb
Centrifuge.addRecipe(
  [<Forestry:beeswax>,<minecraft:dye:3>],
  null,<Forestry:beeCombs:1>,
  null, null,
  [10000, 5000],
  240, 16
);

// Simmering Comb
Centrifuge.addRecipe(
  [<Forestry:beeswax>,<Forestry:phosphor>],
  null,<Forestry:beeCombs:2>,
  null, null,
  [10000, 7000],
  240, 16
);

// Stringy Comb
Centrifuge.addRecipe(
  [<Forestry:propolis>,<Forestry:honeyDrop>],
  null,<Forestry:beeCombs:3>,
  null, null,
  [10000, 4000],
  240, 16
);

// Frozen Comb
Centrifuge.addRecipe(
  [<Forestry:beeswax>,<Forestry:honeyDrop>,<minecraft:snowball>,<Forestry:pollen>],
  null,<Forestry:beeCombs:4>,
  null, null,
  [8000, 7000, 4000, 20],
  240, 16
);

// Dripping Comb
Centrifuge.addRecipe(
  [<Forestry:honeydew>,<Forestry:honeyDrop>],
  null,<Forestry:beeCombs:5>,
  null, null,
  [10000, 4000],
  240, 16
);

// Silky Comb
Centrifuge.addRecipe(
  [<Forestry:honeyDrop>,<Forestry:propolis:3>],
  null,<Forestry:beeCombs:6>,
  null, null,
  [10000, 7000],
  240, 16
);

// Parched Comb
Centrifuge.addRecipe(
  [<Forestry:beeswax>,<Forestry:honeyDrop>],
  null,<Forestry:beeCombs:7>,
  null, null,
  [10000, 9000],
  240, 16
);

// Mysterious Comb
Centrifuge.addRecipe(
  [<Forestry:propolis:2>,<Forestry:honeyDrop>],
  null,<Forestry:beeCombs:8>,
  null, null,
  [10000, 4000],
  240, 16
);

// Irradiated Comb
Centrifuge.addRecipe(
  [null],
  null,<Forestry:beeCombs:9>,
  null, null,
  [10000],
  240, 16
);

// Powdery Comb
Centrifuge.addRecipe(
  [<minecraft:gunpowder>,<Forestry:honeyDrop>,<Forestry:beeswax>],
  null,<Forestry:beeCombs:10>,
  null, null,
  [9000, 2000, 2000],
  240, 16
);

// Reddened Comb <Forestry:beeCombs:11>
// Darkened Comb <Forestry:beeCombs:12>
// Omega Comb <Forestry:beeCombs:13>

// Wheaten Comb
Centrifuge.addRecipe(
  [<minecraft:wheat>,<Forestry:honeyDrop>,<Forestry:beeswax>],
  null,<Forestry:beeCombs:14>,
  null, null,
  [8000, 2000, 2000],
  240, 16
);

// Mossy Comb
Centrifuge.addRecipe(
  [<Forestry:beeswax>,<Forestry:honeyDrop>],
  null,<Forestry:beeCombs:15>,
  null, null,
  [10000, 9000],
  240, 16
);

// Mellow Comb
Centrifuge.addRecipe(
  [<Forestry:honeydew>,<minecraft:quartz>,<Forestry:beeswax>],
  null,<Forestry:beeCombs:16>,
  null, null,
  [6000, 3000, 2000],
  240, 16
);

//Propolis
Centrifuge.addRecipe(
  [<IC2:itemHarz>],
  null,<Forestry:propolis>,
  null, null,
  [100000],
  240, 16
);

//Silky Propolis
Centrifuge.addRecipe(
  [<Forestry:craftingMaterial:2>,<Forestry:propolis>],
  null,<Forestry:propolis:3>,
  null, null,
  [6000, 1000],
  240, 16
);

