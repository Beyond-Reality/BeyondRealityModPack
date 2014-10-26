


#Adv Solars
recipes.remove(<AdvancedSolarPanel:BlockAdvSolarPanel>);
recipes.addShaped(<AdvancedSolarPanel:BlockAdvSolarPanel>, [[<AdvancedSolarPanel:asp_crafting_items:5>,<AdvancedSolarPanel:asp_crafting_items:5>,<AdvancedSolarPanel:asp_crafting_items:5>],
                                                            [<IC2:itemPartAlloy>,<gregtech:gt.metaitem.01:32750>,<IC2:itemPartAlloy>],
                                                            [<ore:circuitAdvanced>,<AdvancedSolarPanel:asp_crafting_items:8>,<ore:circuitAdvanced>]]);
															
recipes.remove(<AdvancedSolarPanel:BlockMolecularTransformer>);															

recipes.addShaped(<AdvancedSolarPanel:BlockMolecularTransformer>,
[[<IC2:blockMachine:12>,<IC2:blockElectric:6>,<IC2:blockMachine:12>],
[<IC2:itemPartCircuitAdv>,<gregtech:gt.blockmachines:212>,<IC2:itemPartCircuitAdv>],
[<IC2:blockMachine:12>,<IC2:blockElectric:6>,<IC2:blockMachine:12>]]);

// Advanced Solar helm
recipes.remove(<AdvancedSolarPanel:advanced_solar_helmet:27>);
recipes.addShaped(<AdvancedSolarPanel:advanced_solar_helmet:27>, [[null, <AdvancedSolarPanel:BlockAdvSolarPanel>, null],
                                                            [<ore:circuitAdvanced>,<IC2:itemArmorNanoHelmet:27>,<ore:circuitAdvanced>],
                                                            [<IC2:itemCable:3>,<IC2:blockElectric:3>,<IC2:itemCable:3>]]);
															
// Ultimate Hybrid Solar helm
recipes.remove(<AdvancedSolarPanel:ultimate_solar_helmet:27>);
recipes.addShaped(<AdvancedSolarPanel:ultimate_solar_helmet:27>, [[null, <AdvancedSolarPanel:BlockAdvSolarPanel:2>, null],
                                                            [<ore:circuitAdvanced>,<IC2:itemArmorQuantumHelmet:27>,<ore:circuitAdvanced>],
                                                            [<IC2:itemCable:9>,<IC2:blockElectric:5>,<IC2:itemCable:9>]]);
															
recipes.addShaped(<AdvancedSolarPanel:ultimate_solar_helmet:27>, [[null, <AdvancedSolarPanel:BlockAdvSolarPanel:2>, null],
                                                            [null, <AdvancedSolarPanel:ultimate_solar_helmet:27>, null],
                                                            [null, <IC2:itemCable:9>, null ]]);