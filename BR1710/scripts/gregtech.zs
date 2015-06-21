import mods.gregtech.Assembler;
import mods.ic2.Macerator;
import mods.gregtech.Centrifuge;
import mods.gregtech.CentrifugeLiq; // yeah, requires GTTweaker
 
var andesDust = <gregtech:gt.metaitem.01:2868>; 
andesDust.displayName = "Andesite Dust";
	
var dioriteDust = <gregtech:gt.metaitem.01:2861>;
dioriteDust.displayName = "Diorite Dust";
 
 
//DIORITE
Macerator.addRecipe(dioriteDust, <chisel:diorite>);
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:2848>,
	<gregtech:gt.metaitem.01:2837>,
	<gregtech:gt.metaitem.02:27505>, 
	<gregtech:gt.metaitem.01:3918>, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	dioriteDust * 3,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 10000, 500, 300, 0, 0, 
	// duration ticks, eu/t
	700, 16
);
//GRANITE
Macerator.addRecipe(<gregtech:gt.metaitem.01:3850>, <chisel:granite>);
//ANDESITE
Macerator.addRecipe(andesDust, <chisel:andesite>);
//Macerator.addRecipe(andesDust, <botania:andesite>);
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:2837>,
	<gregtech:gt.metaitem.01:2859>,
	<gregtech:gt.metaitem.02:27528>, 
	<gregtech:gt.metaitem.01:3933>, 
	null, 
        null,
	// inputs (liquid, item)
	null, 
	andesDust * 3,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 10000, 500, 600, 0, 0, 
	// duration ticks, eu/t
	200, 16
);
	
 
 
// DACITE
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:2848>,
	<gregtech:gt.metaitem.01:2875>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gregtech:gt.metaitem.01:2859> * 2,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 10000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	400, 16
);
 
 
// RHYOLITE
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:2848>,
	<gregtech:gt.metaitem.01:2837> * 3,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gregtech:gt.metaitem.01:2875> * 4,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 10000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	256, 16
);


var machineCasing = <gregtech:gt.blockcasings2:11>;
var plateSteel = <ore:plateSteel>;
var  boltIron = <ore:boltIron>;

recipes.addShaped(machineCasing * 4, [[boltIron, plateSteel, boltIron],
                                      [plateSteel, <gregtech:gt.metatool.01:16>.transformDamage() ,plateSteel],
                                      [boltIron, plateSteel, boltIron]]);	

recipes.addShaped(<gregtech:gt.metaitem.01:32764>, [[<gregtech:gt.metaitem.01:17880>,<gregtech:gt.metaitem.01:17880>,<gregtech:gt.metaitem.01:17880>],
																		[<IC2:itemHarz>,<gregtech:gt.metaitem.03:880>,<IC2:itemHarz>],
				[<IC2:itemPartCarbonMesh>,<IC2:itemPartCarbonMesh>,<IC2:itemPartCarbonMesh>]]);										  

//Shutter Recipe Fix
var plateIron = <Railcraft:part.plate>;
var plateWroughtIron = <gregtech:gt.metaitem.01:17304>;
var plateAluminium = <gregtech:gt.metaitem.01:17019>;
var shutterModule = <gregtech:gt.metaitem.01:32749>;
Assembler.addRecipe(shutterModule * 2, plateIron * 2, <minecraft:iron_door> * 1, 800, 16);
Assembler.addRecipe(shutterModule * 2, plateAluminium * 2, <minecraft:iron_door> * 1, 800, 16);
Assembler.addRecipe(shutterModule * 2, plateWroughtIron * 2, <minecraft:iron_door> * 1, 800, 16);

//Enable processing of bee combs with greg centriguge
//Sticky Comb
CentrifugeLiq.addRecipe(
	//output
	<IC2:itemHarz>,
	<IC2:itemFuelPlantBall>,
	<Forestry:beeswax>, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:103>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	5000, 1500, 10000, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Lignite Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:2538>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:101>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 7000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Coal Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:535>,
	<minecraft:coal>,
	<Forestry:beeswax>, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:102>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 500, 7000, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Oil Comb
CentrifugeLiq.addRecipe(
	//output
	<gendustry:HoneyDrop:10>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:104>,
	
	// cells, liquidout
	null, null,
	
	// chances
	10000, 10000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Red Alloy Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:308>,
	<Forestry:refractoryWax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:105>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 5000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Energetic Alloy Comb
CentrifugeLiq.addRecipe(
	//output
	<EnderIO:itemAlloy:1>,
	<Forestry:refractoryWax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:106>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	1300, 5000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Vibrant Alloy Comb
CentrifugeLiq.addRecipe(
	//output
	<EnderIO:itemMaterial:4>,
	<Forestry:refractoryWax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:107>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 5000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Pulsating Alloy Comb
CentrifugeLiq.addRecipe(
	//output
	<EnderIO:itemMaterial:3>,
	<Forestry:refractoryWax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:108>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 5000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Thaumium Comb
CentrifugeLiq.addRecipe(
	//output
	<Thaumcraft:ItemShard>,
	<Thaumcraft:ItemShard:1>,
	<Thaumcraft:ItemShard:2>, 
	<Thaumcraft:ItemShard:3>, 
	<Thaumcraft:ItemShard:4>, 
	<Thaumcraft:ItemShard:5>,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:109>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	1400, 1400, 1400, 1400, 1400, 1400, 
	// duration ticks, eu/t
	240, 16
);

//Thaumium Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:330>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:110>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 5000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Stone Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:2299>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:111>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	7000, 3000, 1500, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Certus Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:516>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:112>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Fluix Comb
CentrifugeLiq.addRecipe(
	//output
	<appliedenergistics2:item.ItemMultiMaterial:8>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:113>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	1300, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Redstone Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:810>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:114>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Lapis Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:526>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:115>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Ruby Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:502>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:116>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Sahpire Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:503>,
	<gregtech:gt.metaitem.01:504>,
	<Forestry:beeswax>, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:117>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	5000, 5000, 3000, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Diamond Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:500>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:118>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Olivine Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:505>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:119>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Emerald Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:501>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:120>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Slag Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:2299>,
	<IC2:itemSlag>,
	<Forestry:beeswax>, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:121>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	7000, 500, 3000, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Copper Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:35>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:122>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Tin Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:57>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:123>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Iron Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:32>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:125>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Lead Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:89>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:124>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Steel Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:305>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:126>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Nickel Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:34>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:127>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Zinc Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:36>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:128>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Silver Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:54>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:129>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Gold Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:86>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:130>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	10000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Aluminium Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:19>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:131>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	5000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Mang Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:31>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:132>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	5000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Titanium Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:28>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:133>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	5000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Chrome Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:30>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:134>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	5000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Tungsten Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:81>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:135>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	5000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Platinum Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:85>,
	<Forestry:beeswax>,
	null, 
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:136>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	5000, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Iridium Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:84>,
	<gregtech:gt.metaitem.01:83>,
	<Forestry:beeswax>,
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:137>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	2000, 800, 3000, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Uranium Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:97>,
	<Forestry:beeswax>,
	null,
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:138>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	2500, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Plutonium Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:100>,
	<Forestry:beeswax>,
	null,
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:139>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	1600, 3000, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Naquidah Comb
CentrifugeLiq.addRecipe(
	//output
	<gregtech:gt.metaitem.01:324>,
	<gregtech:gt.metaitem.01:326>,
	<Forestry:beeswax>,
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<gendustry:HoneyComb:140>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	2000, 500, 3000, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);

//Propolis
CentrifugeLiq.addRecipe(
	//output
	<IC2:itemHarz>,
	null,
	null,
	null, 
	null, 
	null,
	// inputs (liquid, item)
	null, 
	<Forestry:propolis>,
	
	// cells, liquidout 
	null, null,
	
	// chances
	100000, 0, 0, 0, 0, 0, 
	// duration ticks, eu/t
	240, 16
);
