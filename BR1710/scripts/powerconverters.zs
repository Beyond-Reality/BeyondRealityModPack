var tinPlate = <ore:tinPlate>;
var tinWire = <ore:craftingWireTin>;
var lvbat = <gregtech:gt.blockmachines:161>;
var glassfiber = <IC2:itemCable:9>;
var denselead = <ore:plateDenseLead>;
var densecopper = <ore:plateDenseCopper>;
var densebronze = <ore:plateDenseBronze>;
var densegold = <ore:plateDenseGold>;
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

recipes.remove(<PowerConverters:converter.common:2>);
	recipes.addShaped(<PowerConverters:converter.common:2>, [
	[glassfiber, denselead, glassfiber],
	[denselead, <IC2:blockChargepad:2>, denselead],
	[tinWire, <gregtech:gt.metaitem.01:32702>, tinWire]]);

recipes.remove(<PowerConverters:converter.common:0>);
recipes.addShaped(<PowerConverters:converter.common:0>, [
	[glassfiber, <ore:plateCobalt>, glassfiber],
	[denselead, <gregtech:gt.blockmachines:22>, denselead],
	[<ore:cableGt02Cobalt>, <ore:plateCobalt>, <ore:cableGt02Cobalt>]]);

recipes.remove(<PowerConverters:converter.gt.consumer:5>);
recipes.addShaped(<PowerConverters:converter.gt.consumer:5>, [
	[<ore:cableGt01AnnealedCopper>, densecopper, <ore:cableGt01AnnealedCopper>  ],
	[densecopper, <gregtech:gt.blockmachines:172>, densecopper],
	[<ore:cableGt01AnnealedCopper>, densecopper, <ore:cableGt01AnnealedCopper>]]);

recipes.remove(<PowerConverters:converter.gt.consumer:7>);
recipes.addShaped(<PowerConverters:converter.gt.consumer:7>, [
	[<ore:cableGt02Gold>, densegold, <ore:cableGt02Gold>],
	[densegold, <gregtech:gt.blockmachines:173>, densegold],
	[<ore:cableGt02Gold>, densegold, <ore:cableGt02Gold>]]);
