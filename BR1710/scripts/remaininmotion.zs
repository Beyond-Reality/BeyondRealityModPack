import mods.nei.NEI;

var rod = <gregtech:gt.metaitem.01:23032>;
var framework = <JAKJ_RedstoneInMotion:item.JAKJ_RedstoneInMotion_SimpleItemSet:2>;
var cross = <JAKJ_RedstoneInMotion:item.JAKJ_RedstoneInMotion_SimpleItemSet>;
var panel = <JAKJ_RedstoneInMotion:item.JAKJ_RedstoneInMotion_SimpleItemSet:1>;
var redmotor = <JAKJ_RedstoneInMotion:tile.JAKJ_RedstoneInMotion_CarriageDrive:1>;
var motor = <gregtech:gt.metaitem.01:32600>;
var redstone = <minecraft:redstone_block>;
var steel = <ore:blockIron>;
var plate = <ore:plateIron>;

//Must remove recipes before adding them back... Recipe.remove appears to remove all instances of the recipe.
recipes.remove(cross);	

//Not nessisary, cause the above line removes all recipes for this block.
//recipes.remove(panel);
//recipes.remove(framework);

NEI.addEntry(cross.withTag({display: {Name: "Survivalist Gen", Lore: ["Beyond Reality,", "Balanced"]}}));	
recipes.addShaped(cross, [
	[rod, null, rod],
	[null, rod, null],
	[rod, null, rod]]);

NEI.addEntry(panel.withTag({display: {Name: "Survivalist Gen", Lore: ["Beyond Reality,", "Balanced"]}}));	
recipes.addShaped(panel, [
	[rod, rod, rod],
	[rod, cross, rod],
	[rod, rod, rod]]);	

NEI.addEntry(framework.withTag({display: {Name: "Survivalist Gen", Lore: ["Beyond Reality,", "Balanced"]}}));	
recipes.addShaped(framework, [
	[panel, null, panel],
	[null, cross, null],
	[panel, null, panel]]);
	
recipes.remove(redmotor);
NEI.addEntry(redmotor.withTag({display: {Name: "Survivalist Gen", Lore: ["Beyond Reality,", "Balanced"]}}));	
recipes.addShaped(redmotor, [
	[redstone, plate, redstone],
	[plate, steel, plate],
	[redstone, motor, redstone]]);	
	
