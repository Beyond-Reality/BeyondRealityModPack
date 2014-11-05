var tinPlate = <ore:tinPlate>;
var tinWire = <ore:craftingWireTin>;
var lvbat = <gregtech:gt.blockmachines:161>;
var glassfiber = <IC2:itemCable:9>;
var denselead = <ore:plateDenseLead>; 
var densebronze = <ore:plateDenseBronze>;
var upgrade = <IC2:upgradeModule:4>;
var cell = <IC2:itemFluidCell>;

recipes.remove(<PowerConverters:converter.steam>);
recipes.remove(<PowerConverters:converter.fz>);
recipes.remove(<PowerConverters:converter.rf>);

recipes.remove(<PowerConverters:converter.steam:1>);
recipes.addShaped(<PowerConverters:converter.steam:1>, [
	[cell, densebronze, cell],
	[densebronze, upgrade, densebronze],
	[cell, densebronze, cell]]);

recipes.remove(<PowerConverters:converter.fz:1>);	
	recipes.addShaped(<PowerConverters:converter.fz:1>, [
	[cell, densebronze, cell],
	[densebronze, <factorization:FzBlock:22>, densebronze],
	[cell, densebronze, cell]]);
	
recipes.remove(<PowerConverters:converter.rf:1>);	
	recipes.addShaped(<PowerConverters:converter.rf:1>, [
	[tinWire, denselead, tinWire],
	[denselead, lvbat, denselead],
	[tinWire, denselead, tinWire]]);	
	
	
	recipes.addShaped(<PowerConverters:converter.common:2>, [
	[glassfiber, denselead, glassfiber],
	[denselead, <IC2:blockChargepad:2>, denselead],
	[tinWire, <gregtech:gt.metaitem.01:32702>, tinWire]]);		
    
recipes.addShaped(<PowerConverters:converter.common>, [
	[glassfiber, <gregtech:gt.metaitem.01:17033>, glassfiber],
	[denselead, <gregtech:gt.blockmachines:22>, denselead],
	[<gregtech:gt.blockmachines:1207>, <gregtech:gt.metaitem.01:17033>, <gregtech:gt.blockmachines:1207>]]);		
    	