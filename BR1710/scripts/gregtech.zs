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

val tungstate = <ore:oreTungstate>;
tungstate.add(<beyondrealitycore:customBlock_23>);



