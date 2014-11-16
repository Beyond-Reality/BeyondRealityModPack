
var helm = <powersuits:item.powerArmorHelmet>;
var chest = <powersuits:item.powerArmorChestplate>;
var legs = <powersuits:item.powerArmorLeggings>;
var boots = <powersuits:item.powerArmorBoots>;
var fist = <powersuits:item.powerFist>;
var table = <powersuits:tile.tinkerTable>;
var wiring = <powersuits:item.null>;
var basicPlate = <powersuits:item.null:9>;
var advancePlate = <powersuits:item.null:10>;
var controlCircuit = <powersuits:item.null:14>;
var laserEmitter = <powersuits:item.null:12>;
var Parachute = <powersuits:item.null:8>;
var componentLVCapacitor = <powersuits:item.null:5>;
var componentMVCapacitor = <powersuits:item.null:6>;
var componentHVCapacitor = <powersuits:item.null:7>;
var componentSolenoid = <powersuits:item.null:1>;
var componentGliderWing = <powersuits:item.null:3>;
var componentServo = <powersuits:item.null:2>;
var componentFieldEmitter = <powersuits:item.null:11>;
var componentIonThruster = <powersuits:item.null:4>;
var CarbonMyoFiber = <powersuits:item.null:13>;
var MyoFiberGel = <powersuits:item.null:15>;
var ArtificialMuscle = <powersuits:item.null:16>;


var blockWool = <ore:blockWool>;
val minecraftstring = <minecraft:string>;

var blockSteel = <ore:blockSteel>;
var plateAlloyCarbon = <ore:plateAlloyCarbon>;
var plateAluminium = <ore:plateAluminium>;
var plateBrass = <ore:plateBrass>;
var plateChrome = <ore:plateChrome>;
var plateEmerald = <ore:plateEmerald>;
var plateGlass = <ore:plateGlass>;
var plateSteel = <ore:plateSteel>;
var plateAlloyIridium = <ore:plateAlloyIridium>;
var plateMagnalium = <ore:plateMagnalium>;
var plateElectrum = <ore:plateElectrum>;
var batteryElite = <ore:batteryElite>;
var batteryMaster = <ore:batteryMaster>;
var batteryUltimate = <ore:batteryUltimate>;
var cellNitrogen = <ore:cellNitrogen>;
var circuitBasic = <ore:circuitBasic>;
var circuitAdvanced = <ore:circuitAdvanced>;
var circuitMaster = <ore:circuitMaster>;
var circuitData = <ore:circuitData>;
var circuitGood = <ore:circuitGood>;
var advanceCircuitBoard = <gregtech:gt.metaitem.01:32711>;
var craftingLensRed = <ore:craftingLensRed>;
var craftingLensBlue = <ore:craftingLensBlue>;
var craftingLensGreen = <ore:craftingLensGreen>;
var crystalQuartzite = <ore:crystalQuartzite>;
var wireAnnealedCopper = <ore:wireGt02AnnealedCopper>;
var wireSilver = <ore:wireGt02Silver>;
var wireSuperconductor = <ore:wireGt02Superconductor>;
var pipeRestrictiveMediumOsmium = <ore:pipeRestrictiveMediumOsmium>;

# Recipe Adding
recipes.addShaped(basicPlate, [
	[plateMagnalium, plateMagnalium, plateMagnalium],
	[<gregtech:gt.metatool.01:16>.transformDamage(), circuitBasic, <gregtech:gt.metatool.01:22>.transformDamage()],
	[plateMagnalium, plateMagnalium, plateMagnalium]]);
	
recipes.addShaped(advancePlate, [
	[plateAlloyIridium, plateAlloyIridium, plateAlloyIridium],
	[<gregtech:gt.metatool.01:16>.transformDamage(), circuitAdvanced, <gregtech:gt.metatool.01:22>.transformDamage()],
	[plateAlloyIridium, plateAlloyIridium, plateAlloyIridium]]);	

recipes.addShaped(controlCircuit, [
	[wiring, circuitAdvanced, plateElectrum],
	[circuitData, circuitMaster, circuitAdvanced],
	[plateElectrum, <gregtech:gt.metatool.01:22>.transformDamage(), wiring]]);	

recipes.addShaped(laserEmitter, [
	[crystalQuartzite, circuitGood, crystalQuartzite],
	[craftingLensRed, craftingLensBlue, craftingLensGreen],
	[crystalQuartzite, <gregtech:gt.metatool.01:22>.transformDamage(), crystalQuartzite]]);	
	
recipes.addShaped(table, [
	[circuitAdvanced, plateGlass, circuitAdvanced],
	[plateSteel, plateEmerald, plateSteel],
	[plateSteel, blockSteel, plateSteel]]);		
	
recipes.addShaped(helm, [
	[plateAluminium, plateGlass, plateAluminium],
	[wiring, circuitData, wiring],
	[plateAluminium, <gregtech:gt.metatool.01:16>.transformDamage(), plateAluminium]]);

recipes.addShaped(chest, [
	[plateAluminium, wiring, plateAluminium],
	[plateAluminium, circuitData, plateAluminium],
	[plateAluminium, <gregtech:gt.metatool.01:16>.transformDamage(), plateAluminium]]);		
	
recipes.addShaped(boots, [
	[wiring, null, wiring],
	[plateAluminium, circuitData, plateAluminium],
	[null, <gregtech:gt.metatool.01:16>.transformDamage(), null]]);	

recipes.addShaped(legs, [
	[wiring, null, wiring],
	[plateAluminium, circuitData, plateAluminium],
	[plateAluminium, <gregtech:gt.metatool.01:16>.transformDamage(), plateAluminium]]);	
	
recipes.addShaped(fist, [
	[plateAluminium, <gregtech:gt.metatool.01:16>.transformDamage(), plateAluminium],
	[plateAluminium, wiring, plateAluminium],
	[null, circuitData, null]]);	
	
recipes.addShaped(wiring * 4, [
	[wireAnnealedCopper, wireAnnealedCopper, wireAnnealedCopper],
	[wireSilver, wireSilver, wireSilver],
	[wireAnnealedCopper, <gregtech:gt.metatool.01:16>.transformDamage(), wireAnnealedCopper]]);	

recipes.addShaped(Parachute, [
	[blockWool, blockWool, blockWool],
	[minecraftstring, null, minecraftstring],
	[plateAlloyCarbon, cellNitrogen, plateAlloyCarbon]]);	

recipes.addShaped(componentLVCapacitor, [
	[plateSteel, <gregtech:gt.metatool.01:16>.transformDamage(3), plateSteel],
	[batteryElite, circuitData, batteryElite],
	[plateSteel, plateSteel, plateSteel]]);	
	
recipes.addShaped(componentMVCapacitor, [
	[plateMagnalium, <gregtech:gt.metatool.01:16>.transformDamage(3), plateMagnalium],
	[batteryMaster, circuitData, batteryMaster],
	[plateMagnalium, plateMagnalium, plateMagnalium]]);	

recipes.addShaped(componentHVCapacitor, [
	[plateChrome, <gregtech:gt.metatool.01:16>.transformDamage(3), plateChrome],
	[batteryUltimate, circuitData, batteryUltimate],
	[plateChrome, plateChrome, plateChrome]]);

recipes.addShaped(componentSolenoid, [
	[wiring, <gregtech:gt.metatool.01:22>.transformDamage(), wiring],
	[wiring, plateSteel, wiring],
	[wiring, plateSteel, wiring]]);	
		
recipes.addShaped(componentGliderWing, [
	[<gregtech:gt.metatool.01:22>.transformDamage(), plateMagnalium, circuitAdvanced],
	[plateMagnalium, plateAlloyCarbon, componentSolenoid],
	[plateMagnalium, null, <gregtech:gt.metatool.01:16>.transformDamage()]]);		
	
recipes.addShaped(componentServo, [
	[plateSteel, <gregtech:gt.metatool.01:22>.transformDamage(), plateSteel],
	[circuitAdvanced, componentSolenoid, circuitAdvanced],
	[plateSteel, plateBrass, plateSteel]]);	
	
recipes.addShaped(componentFieldEmitter, [
	[plateAlloyIridium, componentSolenoid, plateAlloyIridium],
	[wireSuperconductor, circuitMaster, wireSuperconductor],
	[plateAlloyIridium, componentSolenoid, plateAlloyIridium]]);	

recipes.addShaped(componentIonThruster, [
	[plateAlloyIridium, wireSuperconductor, plateAlloyIridium],
	[componentFieldEmitter, componentHVCapacitor, componentFieldEmitter],
	[pipeRestrictiveMediumOsmium, <gregtech:gt.metatool.01:16>.transformDamage(), pipeRestrictiveMediumOsmium]]);		