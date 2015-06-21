import mods.gregtech.Assembler;

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

