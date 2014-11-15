var machineCasing = <gregtech:gt.blockcasings2:11>;
var plateSteel = <ore:plateSteel>;
var  boltIron = <ore:boltIron>;

recipes.addShaped(machineCasing * 4, [[boltIron, plateSteel, boltIron],
                                      [plateSteel, <gregtech:gt.metatool.01:16>.transformDamage() ,plateSteel],
                                      [boltIron, plateSteel, boltIron]]);	

recipes.addShaped(<gregtech:gt.metaitem.01:32764>, [[<gregtech:gt.metaitem.01:17880>,<gregtech:gt.metaitem.01:17880>,<gregtech:gt.metaitem.01:17880>],
																		[<IC2:itemHarz>,<gregtech:gt.metaitem.03:880>,<IC2:itemHarz>],
				[<IC2:itemPartCarbonMesh>,<IC2:itemPartCarbonMesh>,<IC2:itemPartCarbonMesh>]]);										  