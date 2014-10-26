import mods.gregtech.Assembler;
import mods.nei.NEI;

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

recipes.remove(<ExtraUtilities:nodeUpgrade:5>);
NEI.addEntry(<ExtraUtilities:nodeUpgrade:5>.withTag({display: {Name: "Deemed OP", Lore: ["Beyond Reality,", "This is disabled!"]}}));

recipes.remove(<ExtraUtilities:nodeUpgrade:6>);
NEI.addEntry(<ExtraUtilities:nodeUpgrade:6>.withTag({display: {Name: "Deemed OP", Lore: ["Beyond Reality,", "This is disabled!"]}}));


recipes.remove(survivalgen);
recipes.addShaped(survivalgen, [
	[cobble, cobble, cobble],
	[steel, piston, steel],
	[redstone, furnace, redstone]]);	
NEI.addEntry(survivalgen.withTag({display: {Name: "Survivalist Gen", Lore: ["Beyond Reality,", "Balanced"]}}));	
	
recipes.remove(foodgen);
recipes.addShaped(foodgen, [
	[cobble, cobble, cobble],
	[steel, survivalgen, steel],
	[redstone, furnace, redstone]]);
NEI.addEntry(survivalgen.withTag({display: {Name: "Culinary Generator", Lore: ["Beyond Reality,", "Balanced"]}}));		
	
recipes.remove(pinkgen);
recipes.addShaped(pinkgen, [
	[pink, pink, pink],
	[pink, survivalgen, pink],
	[redstone, furnace, redstone]]);	
NEI.addEntry(pinkgen.withTag({display: {Name: "Pink Generator", Lore: ["Beyond Reality,", "Balanced"]}}));	
	
recipes.remove(endergen);
recipes.addShaped(endergen, [
	[enderpearl, enderpearl, enderpearl],
	[endereye, steelblock, endereye],
	[redstone, gregpiston, redstone]]);		
NEI.addEntry(endergen.withTag({display: {Name: "Ender Generator", Lore: ["Beyond Reality,", "Balanced"]}}));	
	
recipes.remove(solargen);
recipes.addShaped(solargen, [
	[lapis, daylight, lapis],
	[steelplate, diamond, steelplate],
	[redstone, gregpiston, redstone]]);	
NEI.addEntry(solargen.withTag({display: {Name: "Solar Generator", Lore: ["Beyond Reality,", "Balanced"]}}));	
	
recipes.remove(stargen);
recipes.addShaped(stargen, [
	[skull, star, skull],
	[skull, unstableblock, skull],
	[steel, gregpiston, steel]]);	
NEI.addEntry(stargen.withTag({display: {Name: "Nether Star Generator", Lore: ["Beyond Reality,", "Balanced"]}}));	
	
recipes.remove(tntgen);
recipes.addShaped(tntgen, [
	[tnt, tnt, tnt],
	[tnt, steelblock, tnt],
	[redstone, furnace, redstone]]);	
NEI.addEntry(tntgen.withTag({display: {Name: "TNT Generator", Lore: ["Beyond Reality,", "Balanced"]}}));
	
recipes.remove(furnacegen);
recipes.addShaped(furnacegen, [
	[cobble, cobble, cobble],
	[<ore:ingotIron>, steelblock, <ore:ingotIron>],
	[redstone, furnace, redstone]]);
NEI.addEntry(furnacegen.withTag({display: {Name: "Furnace Generator", Lore: ["Beyond Reality,", "Balanced"]}}));	

recipes.remove(lavagen);
recipes.addShaped(lavagen, [
	[gold, gold, gold],
	[gold, steelblock, gold],
	[redstone, furnace, redstone]]);	
NEI.addEntry(stargen.withTag({display: {Name: "Lava Generator", Lore: ["Beyond Reality,", "Balanced"]}}));	
	
recipes.remove(heatedgen);
recipes.addShaped(heatedgen, [
	[redstoneblock, redstoneblock, redstoneblock],
	[redstoneblock, lavagen, redstoneblock],
	[redstone, furnace, redstone]]);	
NEI.addEntry(heatedgen.withTag({display: {Name: "Heated Redstone Generator", Lore: ["Beyond Reality,", "Balanced"]}}));	
	
recipes.remove(hightempgen);
recipes.addShaped(hightempgen, [
	[steel, steel, steel],
	[steel, furnacegen, steel],
	[redstone, furnace, redstone]]);	
NEI.addEntry(hightempgen.withTag({display: {Name: "High-temperature Furnace Generator", Lore: ["Beyond Reality,", "Balanced"]}}));	
	
// Ender Quarry nerfs
// recipes.remove(upgrade);
Assembler.addRecipe(upgrade, matrix, <gregtech:gt.metaitem.01:32706>, 1600, 2);
NEI.addEntry(upgrade.withTag({display: {Name: "Ender Quarry Upgrade Base", Lore: ["Beyond Reality,", "Balanced"]}}));		
recipes.remove(matrix);
Assembler.addRecipe(matrix,  flawless, end1  * 8, 1600, 2);
NEI.addEntry(matrix.withTag({display: {Name: "Diamond-Etched Computational Matrix", Lore: ["Beyond Reality,", "Balanced"]}}));	
recipes.remove(<ExtraUtilities:enderQuarry>);
Assembler.addRecipe(<ExtraUtilities:enderQuarry>, matrix, <gregtech:gt.metaitem.01:32651>, 1600, 2);
NEI.addEntry(<ExtraUtilities:enderQuarry>.withTag({display: {Name: "Ender Quarry", Lore: ["Beyond Reality,", "Balanced"]}}));	
