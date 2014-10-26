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

recipes.remove(cross);
NEI.addEntry(cross.withTag({display: {Name: "Survivalist Gen", Lore: ["Beyond Reality,", "Balanced"]}}));	
recipes.addShaped(cross, [
	[rod, null, rod],
	[null, rod, null],
	[rod, null, rod]]);	
	
recipes.remove(panel);
NEI.addEntry(panel.withTag({display: {Name: "Survivalist Gen", Lore: ["Beyond Reality,", "Balanced"]}}));	
recipes.addShaped(panel, [
	[rod, rod, rod],
	[rod, cross, rod],
	[rod, rod, rod]]);	

recipes.remove(framework);
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
	