import mods.ic2.Macerator;

// Ore Dictonary Addition

// Shorts
val endernugget = <EnderIO:itemMaterial:4>;
val enderingot = <EnderIO:itemAlloy:2>;
val stick = <minecraft:stick>;
val dirt = <minecraft:dirt>;
val dust = <gregtech:gt.metaitem.01:2500>;
val tinyPileDarkAshes = <gregtech:gt.metaitem.01:816>;

// Nugget to ingot
recipes.addShaped(enderingot, [
	[endernugget, endernugget, endernugget],
	[endernugget, endernugget, endernugget],
	[endernugget, endernugget, endernugget]]);

// furnace do stuff
furnace.addRecipe(<gendustry:HoneyDrop:11>, <beyondrealitycore:customBlock_28>, 2.0);
furnace.addRecipe(<minecraft:glowstone_dust>, <beyondrealitycore:customBlock_27>, 2.0);

furnace.addRecipe(<minecraft:diamond>, <beyondrealitycore:customBlock_3>, 2.0);
furnace.addRecipe(<minecraft:diamond>, <beyondrealitycore:customBlock_4>, 2.0);

// Dust to diamond
recipes.addShapeless(<minecraft:diamond>, [dust, dust, dust]);
