import minetweaker.item.IItemStack;
import mods.railcraft.RockCrusher;

// BR Ores
// Moon 
val mooniron                                                  = <beyondrealitycore:customBlock_0>;
val moondiamond                                               = <beyondrealitycore:customBlock_3>;
val moonredstone                                              = <beyondrealitycore:customBlock_5>;
val moonlapis                                                 = <beyondrealitycore:customBlock_7>;
val moontetrahedrite                                          = <beyondrealitycore:customBlock_9>;
val moonbauxite                                               = <beyondrealitycore:customBlock_11>;
val mooncassiterite                                           = <beyondrealitycore:customBlock_14>;
val moonsilver                                                = <beyondrealitycore:customBlock_16>;
val moonlead                                                  = <beyondrealitycore:customBlock_18>;
val moonruby                                                  = <beyondrealitycore:customBlock_25>;
val moonglowstone                                             = <beyondrealitycore:customBlock_27>;

// Mars 
val marsiron                                                  = <beyondrealitycore:customBlock_1>;
val marsgold                                                  = <beyondrealitycore:customBlock_2>;
val marsdiamond                                               = <beyondrealitycore:customBlock_4>;
val marsredstone                                              = <beyondrealitycore:customBlock_6>;
val marslapis                                                 = <beyondrealitycore:customBlock_8>;
val marstetrahedrite                                          = <beyondrealitycore:customBlock_10>;
val marsbauxite                                               = <beyondrealitycore:customBlock_12>;
val marsuranium                                               = <beyondrealitycore:customBlock_13>;
val marscassiterite                                           = <beyondrealitycore:customBlock_15>;
val marssilver                                                = <beyondrealitycore:customBlock_17>;
val marslead                                                  = <beyondrealitycore:customBlock_19>;
val marsiridium                                               = <beyondrealitycore:customBlock_20>;
val marsplatinum                                              = <beyondrealitycore:customBlock_21>;
val marsosmium                                                = <beyondrealitycore:customBlock_22>;
val marstungstate                                             = <beyondrealitycore:customBlock_23>;
val marsnaquadah                                              = <beyondrealitycore:customBlock_24>;
val marsruby                                                  = <beyondrealitycore:customBlock_26>;
val marsnaquadria                                             = <beyondrealitycore:customBlock_29>;

// Gregtech Crushed Ores
val crushedGTIron                                             = <gregtech:gt.metaitem.01:5032>;
val crushedGTGold                                             = <gregtech:gt.metaitem.01:5086>;
val crushedGTCassiterite                                      = <gregtech:gt.metaitem.01:5824>;
val crushedGTTetrahedrite                                     = <gregtech:gt.metaitem.01:5840>;
val crushedGTBauxite                                          = <gregtech:gt.metaitem.01:5822>;
val crushedGTUranium                                          = <gregtech:gt.metaitem.01:5098>;
val crushedGTRuby                                             = <gregtech:gt.metaitem.01:5502>;
val crushedGTLead                                             = <gregtech:gt.metaitem.01:5089>;
val crushedGTSilver                                           = <gregtech:gt.metaitem.01:5054>;
val crushedGTLapis                                            = <gregtech:gt.metaitem.01:5526>;
val crushedGTRedstone                                         = <gregtech:gt.metaitem.01:5810>;
val crushedGTDiamond                                          = <gregtech:gt.metaitem.01:5500>;
val crushedGTIridium                                          = <gregtech:gt.metaitem.01:5084>;
val crushedGTOsmium                                           = <gregtech:gt.metaitem.01:5083>;
val crushedGTPlatinum                                         = <gregtech:gt.metaitem.01:5085>;
val crushedGTNaquadah                                         = <gregtech:gt.metaitem.01:5324>;
val crushedGTNaquadria                                        = <gregtech:gt.metaitem.01:5327>;

// Gregtech Dusts & Gems 10% chance of byproduct in Rock Crusher
val dustGTNickel											  = <gregtech:gt.metaitem.01:2034>;
val dustGTGraphite											  = <gregtech:gt.metaitem.01:2865>;
val dustGTCinnabar											  = <gregtech:gt.metaitem.01:2826>;
val dustGTAntimony											  = <gregtech:gt.metaitem.01:2058>;
val dustGTGrossular											  = <gregtech:gt.metaitem.01:2831>;
val dustGTTin												  = <gregtech:gt.metaitem.01:2057>;
val dustGTLead												  = <gregtech:gt.metaitem.01:2089>;
val dustGTSilver											  = <gregtech:gt.metaitem.01:2054>;
val dustGTChrome											  = <gregtech:gt.metaitem.01:2030>;
val dustGTCopper											  = <gregtech:gt.metaitem.01:2035>;
val dustGTPlatinum											  = <gregtech:gt.metaitem.01:2085>;
val dustGTEnrichedNaquadah									  = <gregtech:gt.metaitem.01:2326>;
val dustGTNaquadria											  = <gregtech:gt.metaitem.01:2327>;

// Gregtech Gems as a byproduct
val gemGTLazurite											  = <gregtech:gt.metaitem.01:8524>;

// IC2 Ores as a byproduct
val oreICIridium											  = <IC2:itemOreIridium>;


// Railcraft Recipe Changes

// Rolling Machine
recipes.remove(<Railcraft:tile.railcraft.machine.alpha:8>);
recipes.addShaped(<Railcraft:tile.railcraft.machine.alpha:8>, [[<ore:plateSteel>, <Railcraft:tile.railcraft.machine.beta:9>, <ore:plateSteel>],
                                                              [<ore:circuitBasic>, <ore:craftingPiston> ,<ore:circuitBasic>],
                                                              [<ore:plateSteel>, <minecraft:anvil>, <ore:plateSteel>]]);

// Detector - Energy
recipes.remove(<Railcraft:tile.railcraft.detector:10>);
recipes.addShaped(<Railcraft:tile.railcraft.detector:10>, [[<ore:plateTin>,<ore:plateTin>,<ore:plateTin>],
                                                            [<ore:plateTin>,<minecraft:stone_pressure_plate>,<ore:plateTin>],
                                                            [<ore:plateTin>,<ore:plateTin>,<ore:plateTin>]]);

// Adding Lunar and Martian ores to the Railcraft Rock Crusher
// RockCrusher Recipes
// InputStack, matchDamage, matchNBT, OutputStacks, Chance
// This recipe would add both stone dust and crushed ores at the normal rate
// RockCrusher.addRecipe(mooniron, false, false, [<gregtech:gt.metaitem.01:5032> * 2, <gregtech:gt.metaitem.01:2299>], [1.0, 0.1]);

// Lunar Ores
RockCrusher.addRecipe(mooniron, 		false, false, [crushedGTIron * 2, 			dustGTNickel], 				[1.0, 0.1]);
RockCrusher.addRecipe(moondiamond, 		false, false, [crushedGTDiamond * 2, 		dustGTGraphite],		 	[1.0, 0.1]);
RockCrusher.addRecipe(moonredstone, 	false, false, [crushedGTRedstone * 10, 		dustGTCinnabar], 			[1.0, 0.1]);
RockCrusher.addRecipe(moonlapis, 		false, false, [crushedGTLapis * 12, 		gemGTLazurite], 			[1.0, 0.4]);
RockCrusher.addRecipe(moontetrahedrite, false, false, [crushedGTTetrahedrite * 2, 	dustGTAntimony], 			[1.0, 0.1]);
RockCrusher.addRecipe(moonbauxite, 		false, false, [crushedGTBauxite * 2, 		dustGTGrossular], 			[1.0, 0.1]);
RockCrusher.addRecipe(mooncassiterite, 	false, false, [crushedGTCassiterite * 4, 	dustGTTin], 				[1.0, 0.1]);
RockCrusher.addRecipe(moonsilver, 		false, false, [crushedGTSilver * 2, 		dustGTLead], 				[1.0, 0.1]);
RockCrusher.addRecipe(moonlead, 		false, false, [crushedGTLead * 2, 			dustGTSilver], 				[1.0, 0.1]);
RockCrusher.addRecipe(moonruby, 		false, false, [crushedGTRuby * 2, 			dustGTChrome], 				[1.0, 0.1]);

// Martian Ores
RockCrusher.addRecipe(marsiron, 		false, false, [crushedGTIron * 2,			dustGTNickel], 				[1.0, 0.1]);
RockCrusher.addRecipe(marsgold, 		false, false, [crushedGTGold * 2,			dustGTCopper], 				[1.0, 0.1]);
RockCrusher.addRecipe(marsdiamond, 		false, false, [crushedGTDiamond * 2,		dustGTGraphite], 			[1.0, 0.1]);
RockCrusher.addRecipe(marsredstone, 	false, false, [crushedGTRedstone * 10,		dustGTCinnabar], 			[1.0, 0.1]);
RockCrusher.addRecipe(marslapis, 		false, false, [crushedGTLapis * 12,			gemGTLazurite], 			[1.0, 0.4]);
RockCrusher.addRecipe(marstetrahedrite, false, false, [crushedGTTetrahedrite * 2,	dustGTAntimony], 			[1.0, 0.1]);
RockCrusher.addRecipe(marsbauxite, 		false, false, [crushedGTBauxite * 2,		dustGTGrossular], 			[1.0, 0.1]);
RockCrusher.addRecipe(marsuranium, 		false, false, [crushedGTUranium * 2,		dustGTLead], 				[1.0, 0.1]);
RockCrusher.addRecipe(marscassiterite, 	false, false, [crushedGTCassiterite * 4,	dustGTTin], 				[1.0, 0.1]);
RockCrusher.addRecipe(marssilver, 		false, false, [crushedGTSilver * 2,			dustGTLead], 				[1.0, 0.1]);
RockCrusher.addRecipe(marslead, 		false, false, [crushedGTLead * 2,			dustGTSilver], 				[1.0, 0.1]);
RockCrusher.addRecipe(marsiridium, 		false, false, [crushedGTIridium * 2,		dustGTPlatinum], 			[1.0, 0.1]);
RockCrusher.addRecipe(marsplatinum, 	false, false, [crushedGTPlatinum * 2,		dustGTNickel], 				[1.0, 0.1]);
RockCrusher.addRecipe(marsosmium, 		false, false, [crushedGTOsmium * 2,			oreICIridium], 				[1.0, 0.1]);
RockCrusher.addRecipe(marsnaquadah, 	false, false, [crushedGTNaquadah * 2,		dustGTEnrichedNaquadah],	[1.0, 0.1]);
RockCrusher.addRecipe(marsruby, 		false, false, [crushedGTRuby * 2,			dustGTChrome], 				[1.0, 0.1]);
RockCrusher.addRecipe(marsnaquadria, 	false, false, [crushedGTNaquadria * 2,		dustGTNaquadria], 			[1.0, 0.1]);
