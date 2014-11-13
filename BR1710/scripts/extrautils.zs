import mods.gregtech.Assembler;

var endergen = <ExtraUtilities:generator:3>;
var furnacegen = <ExtraUtilities:generator:1>;
var heatedgen = <ExtraUtilities:generator:4>;
var hightempgen = <ExtraUtilities:generator:10>;
var foodgen = <ExtraUtilities:generator:5>;
var lavagen = <ExtraUtilities:generator:2>;
var potgen = <ExtraUtilities:generator:6>;
var pinkgen = <ExtraUtilities:generator:9>;
var solargen = <ExtraUtilities:generator:7>;
var tntgen = <ExtraUtilities:generator:8>;
var stargen = <ExtraUtilities:generator:11>;
var endercore = <ExtraUtilities:decorativeBlock1:11>;
var survivalgen = <ExtraUtilities:generator>;
var matrix = <ExtraUtilities:decorativeBlock1:12>;
var upgrade = <ExtraUtilities:enderQuarryUpgrade>;
var drum = <ExtraUtilities:drum>;
var cauldron = <minecraft:cauldron>;
var pressure = <minecraft:heavy_weighted_pressure_plate>;
var steel = <ore:ingotSteel>;
var steelplate = <ore:plateSteel>;
var gregpiston = <gregtech:gt.metaitem.01:32640>;
var piston = <minecraft:piston>;
var redstone = <minecraft:redstone>;
var cobble = <ExtraUtilities:cobblestone_compressed>;
var furnace = <factorization:FzBlock:11>;
var pink = <minecraft:wool:6>;
var steelblock = <ore:blockSteel>;
var enderpearl = <minecraft:ender_pearl>;
var endereye = <minecraft:ender_eye>;
var daylight = <minecraft:daylight_detector>;
var diamond = <minecraft:diamond_block>;
var lapis = <minecraft:dye:4>;
var star = <minecraft:nether_star>;
var skull = <minecraft:skull:1>;
var unstableblock = <ExtraUtilities:decorativeBlock1:5>;
var tnt = <minecraft:tnt>;
var gold = <ore:ingotGold>;
var redstoneblock = <ore:blockRedstone>;
var end1 = <ExtraUtilities:decorativeBlock1:1>;
var flawless = <gregtech:gt.metaitem.02:29500>;
var rockdrum = <ExtraUtilities:drum:1>;
var ring = <gregtech:gt.metaitem.01:28305>;
var meteorsteelring = <gregtech:gt.metaitem.01:28341>;
var bedrockIngot = <ExtraUtilities:bedrockiumIngot>;

recipes.remove(<ExtraUtilities:nodeUpgrade:5>);

recipes.remove(<ExtraUtilities:nodeUpgrade:6>);

recipes.remove(<ExtraUtilities:enderQuarryUpgrade>);

recipes.remove(survivalgen);
recipes.addShaped(survivalgen, [
	[cobble, cobble, cobble],
	[steel, piston, steel],
	[redstone, furnace, redstone]]);	
	
recipes.remove(foodgen);
recipes.addShaped(foodgen, [
	[cobble, cobble, cobble],
	[steel, survivalgen, steel],
	[redstone, furnace, redstone]]);		
	
recipes.remove(pinkgen);
recipes.addShaped(pinkgen, [
	[pink, pink, pink],
	[pink, survivalgen, pink],
	[redstone, furnace, redstone]]);	
	
recipes.remove(endergen);
recipes.addShaped(endergen, [
	[enderpearl, enderpearl, enderpearl],
	[endereye, steelblock, endereye],
	[redstone, gregpiston, redstone]]);		
	
recipes.remove(solargen);
recipes.addShaped(solargen, [
	[lapis, daylight, lapis],
	[steelplate, diamond, steelplate],
	[redstone, gregpiston, redstone]]);	
	
recipes.remove(stargen);
recipes.addShaped(stargen, [
	[skull, star, skull],
	[skull, unstableblock, skull],
	[steel, gregpiston, steel]]);		
	
recipes.remove(tntgen);
recipes.addShaped(tntgen, [
	[tnt, tnt, tnt],
	[tnt, steelblock, tnt],
	[redstone, furnace, redstone]]);	
	
recipes.remove(furnacegen);
recipes.addShaped(furnacegen, [
	[cobble, cobble, cobble],
	[<ore:ingotIron>, steelblock, <ore:ingotIron>],
	[redstone, furnace, redstone]]);

recipes.remove(lavagen);
recipes.addShaped(lavagen, [
	[gold, gold, gold],
	[gold, steelblock, gold],
	[redstone, furnace, redstone]]);		
	
recipes.remove(heatedgen);
recipes.addShaped(heatedgen, [
	[redstoneblock, redstoneblock, redstoneblock],
	[redstoneblock, lavagen, redstoneblock],
	[redstone, furnace, redstone]]);	
	
recipes.remove(hightempgen);
recipes.addShaped(hightempgen, [
	[steel, steel, steel],
	[steel, furnacegen, steel],
	[redstone, furnace, redstone]]);	

recipes.remove(drum);
recipes.addShaped(drum, [
[steelplate, <gregtech:gt.metaitem.01:28032>, steelplate],
[steelplate, <minecraft:cauldron>, steelplate],
[steelplate, <minecraft:heavy_weighted_pressure_plate>, steelplate]]);	

recipes.remove(drum);
recipes.addShaped(drum, [
[steelplate, ring, steelplate],
[steelplate, <minecraft:cauldron>, steelplate],
[steelplate, <minecraft:heavy_weighted_pressure_plate>, steelplate]]);	

recipes.remove(rockdrum);
recipes.addShaped(rockdrum, [
[bedrockIngot, meteorsteelring, bedrockIngot],
[bedrockIngot, <minecraft:cauldron>, bedrockIngot],
[bedrockIngot, <minecraft:heavy_weighted_pressure_plate>, bedrockIngot]]);
	
// Ender Quarry nerfs
// recipes.remove(upgrade);
Assembler.addRecipe(upgrade, matrix, <gregtech:gt.metaitem.01:32706>, 1600, 2);

recipes.remove(matrix);
Assembler.addRecipe(matrix,  flawless, end1  * 8, 1600, 2);

recipes.remove(<ExtraUtilities:enderQuarry>);
Assembler.addRecipe(<ExtraUtilities:enderQuarry>, matrix, <gregtech:gt.metaitem.01:32651>, 1600, 2);

