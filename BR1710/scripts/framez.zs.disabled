var  boltWood = <gregtech:gt.metaitem.01:26809>;
var  boltIron = <ore:boltIron>;
var  boltBronze = <ore:boltBronze>;
var  stickIron = <ore:stickIron>;
var  stick = <ore:stickWood>;
var  screwIron = <ore:screwIron>;
var  screwBronze = <ore:screwBronze>;
var  screwWood = <ore:screwWood>;
var  lvMotor = <gregtech:gt.metaitem.01:32600>;
var  ironFrame = <gregtech:gt.blockmachines:4128>;
var  woodFrame = <gregtech:gt.blockmachines:4905>;
var  bronzeFrame = <gregtech:gt.blockmachines:4396>;
var  frame = <framez:frame:9999>.withTag({modifiers: []});
var cross = <framez:framepart>;
var ironCross = <framez:framepart:2>;
var  framepart = <framez:framepart:1>;
var ironframepart = <framez:framepart:3>;
var motorCore = <framez:motorcore>;
var machineCasing = <gregtech:gt.blockcasings2:11>;
var plateSteel = <ore:plateSteel>;
var redstoneChip = <BuildCraft|Silicon:redstoneChipset>;
var comparator = <minecraft:comparator>;
var repeater = <minecraft:repeater>;

recipes.remove(frame);
recipes.addShaped(frame, [[boltBronze, framepart, boltBronze],
                                      [framepart, bronzeFrame ,framepart],
                                      [boltBronze, framepart, boltBronze]]);
									  
recipes.remove(framepart);
recipes.addShaped(framepart, [[screwBronze, stick, screwBronze],
                                      [stick, cross ,stick],
                                      [screwBronze, stick, screwBronze]]); 
									  
recipes.remove(cross);
recipes.addShaped(cross, [[stick, null, stick],
                                      [screwWood, stick ,screwWood],
                                      [stick, null, stick]]); 		

recipes.remove(ironCross);
recipes.addShaped(ironCross, [[stickIron, null, stickIron],
                                      [screwIron, stickIron ,screwIron],
                                      [stickIron, null, stickIron]]); 

recipes.remove(ironframepart);
recipes.addShaped(ironframepart, [[boltIron, stickIron, boltIron],
                                      [stickIron, ironCross ,stickIron],
                                      [boltIron, stickIron, boltIron]]);	

recipes.remove(motorCore);
recipes.addShaped(motorCore, [[comparator, redstoneChip, repeater],
                                      [<minecraft:redstone>, machineCasing ,<minecraft:redstone>],
                                      [<minecraft:redstone>, lvMotor, <minecraft:redstone>]]);	
									  
// recipes.remove(<framez:motor.appliedenergistics2> );
//recipes.addShaped(<framez:motor.appliedenergistics2> , [[<minecraft:redstone_block>, <appliedenergistics2:item.ItemMultiMaterial:24>, <minecraft:redstone_block>],
 //                                     [<appliedenergistics2:item.ItemMultiMaterial:22>, motorCore, <appliedenergistics2:item.ItemMultiMaterial:22>],
   //                                   [<minecraft:redstone_block>, <appliedenergistics2:item.ItemMultiMaterial:24>, <minecraft:redstone_block>]]);

recipes.remove(<framez:motor.rf> );
recipes.addShaped(<framez:motor.rf> , [[<minecraft:redstone_block>, <EnderIO:itemBasicCapacitor>, <minecraft:redstone_block>],
                                      [<EnderIO:itemBasicCapacitor>, motorCore, <EnderIO:itemBasicCapacitor>],
                                      [<minecraft:redstone_block>, <EnderIO:itemBasicCapacitor>, <minecraft:redstone_block>]]);										  