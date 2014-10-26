# Vanilla / Misc Minetweaker Changes

# Remove ability to smelt iron nuggets into steel
furnace.remove(<*>, <ore:nuggetIron>);
           
# Caliometric Burner
recipes.remove(<factorization:FzBlock:31>);

# chisel
recipes.addShapeless(<chisel:chisel>, [<ore:stickWood>,<minecraft:iron_ingot>]);

# Red Alloy Wire
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire>);
recipes.addShaped(<ProjRed|Transmission:projectred.transmission.wire> * 12, [[null,<ore:ingotRedAlloy>,null],
																		[null,<ore:ingotRedAlloy>,null],
																		[null,<ore:ingotRedAlloy>,null]]);
																		
recipes.addShaped(<gregtech:gt.metaitem.01:32764>, [[<gregtech:gt.metaitem.01:17880>,<gregtech:gt.metaitem.01:17880>,<gregtech:gt.metaitem.01:17880>],
																		[<IC2:itemHarz>,<gregtech:gt.metaitem.03:880>,<IC2:itemHarz>],
				[<IC2:itemPartCarbonMesh>,<IC2:itemPartCarbonMesh>,<IC2:itemPartCarbonMesh>]]);		
				
				
#HEE
recipes.remove(<HardcoreEnderExpansion:decomposition_table>);		

#Open Computers
recipes.remove(<OpenComputers:simple:11>);	