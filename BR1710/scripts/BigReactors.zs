import mods.nei.NEI;

val steelplate = <ore:plateSteel>; 
val steel = <ore:ingotSteel>;
val rod = <ore:stickSteel>;
val bars = <minecraft:iron_bars>;
val graphite = <BigReactors:BRIngot:2>;
val yellorium = <ore:ingotYellorium>;
val yblock = <ore:blockYellorium>;
val cyanite = <ore:ingotCyanite>;
val glass = <BigReactors:BRMultiblockGlass>;
val port = <BigReactors:BRReactorPart:5>;

print("Turbine Housing");	
recipes.remove(<BigReactors:BRTurbinePart>);
recipes.addShaped(<BigReactors:BRTurbinePart> * 4, [[steelplate, graphite, steelplate],
                                                    [steelplate, cyanite, steelplate],
                                                    [steelplate, graphite, steelplate]]);
	
print("Reactor Housing") ;		
recipes.remove(<BigReactors:BRReactorPart>);
recipes.addShaped(<BigReactors:BRReactorPart>* 4, [[steelplate, graphite, steelplate],
                                                    [steelplate, yellorium, steelplate],
                                                    [steelplate, graphite, steelplate]]);
													
print("Fuel Rod") ;	
recipes.remove(<BigReactors:YelloriumFuelRod>);
recipes.addShaped(<BigReactors:YelloriumFuelRod>, [[steelplate, yellorium, steelplate],
                                                    [glass, yblock, glass],
                                                    [steelplate, yellorium, steelplate]]);	

		
						