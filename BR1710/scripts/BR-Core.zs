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

//Mars and Moon Ores
//Iron Ore
Macerator.addRecipe(<gregtech:gt.metaitem.01:5032> * 2, <beyondrealitycore:customBlock_0>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:5032> * 2, <beyondrealitycore:customBlock_1>);
//Mars Gold Ore
Macerator.addRecipe(<gregtech:gt.metaitem.01:5086> * 2, <beyondrealitycore:customBlock_2>);
//Diamond Ore
Macerator.addRecipe(<gregtech:gt.metaitem.01:5500> * 2, <beyondrealitycore:customBlock_3>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:5500> * 2, <beyondrealitycore:customBlock_4>);
//Moon Redstone Ore
Macerator.addRecipe(<gregtech:gt.metaitem.01:5810> * 10, <beyondrealitycore:customBlock_5>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:5810> * 10, <beyondrealitycore:customBlock_6>);
//Lapis Ore
Macerator.addRecipe(<gregtech:gt.metaitem.01:5526> * 12, <beyondrealitycore:customBlock_7>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:5526> * 12, <beyondrealitycore:customBlock_8>);
//Tetrahydrite
Macerator.addRecipe(<gregtech:gt.metaitem.01:5840> * 2, <beyondrealitycore:customBlock_9>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:5840> * 2, <beyondrealitycore:customBlock_10>);
//Bauxite
Macerator.addRecipe(<gregtech:gt.metaitem.01:5822> * 2, <beyondrealitycore:customBlock_11>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:5822> * 2, <beyondrealitycore:customBlock_12>);
//Uranium Ore
Macerator.addRecipe(<gregtech:gt.metaitem.01:5098> * 2, <beyondrealitycore:customBlock_13>);
//Cassiterite
Macerator.addRecipe(<gregtech:gt.metaitem.01:5824> * 4, <beyondrealitycore:customBlock_14>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:5824> * 4, <beyondrealitycore:customBlock_15>);
//Silver
Macerator.addRecipe(<gregtech:gt.metaitem.01:5054> * 2, <beyondrealitycore:customBlock_16>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:5054> * 2, <beyondrealitycore:customBlock_17>);
//Lead
Macerator.addRecipe(<gregtech:gt.metaitem.01:5089> * 2, <beyondrealitycore:customBlock_18>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:5089> * 2, <beyondrealitycore:customBlock_19>);
//Iridium
Macerator.addRecipe(<gregtech:gt.metaitem.01:5084> * 2, <beyondrealitycore:customBlock_20>);
//Platinum
Macerator.addRecipe(<gregtech:gt.metaitem.01:5085> * 2, <beyondrealitycore:customBlock_21>);
//Osmium
Macerator.addRecipe(<gregtech:gt.metaitem.01:5083> * 2, <beyondrealitycore:customBlock_22>);
//Tungstate
Macerator.addRecipe(<gregtech:gt.metaitem.01:5841> * 4, <beyondrealitycore:customBlock_23>);
//Naquidah
Macerator.addRecipe(<gregtech:gt.metaitem.01:5324> * 2, <beyondrealitycore:customBlock_24>);
//Ruby
Macerator.addRecipe(<gregtech:gt.metaitem.01:5502> * 2, <beyondrealitycore:customBlock_25>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:5502> * 2, <beyondrealitycore:customBlock_26>);
//Glowstone
Macerator.addRecipe(<minecraft:glowstone_dust> * 4, <beyondrealitycore:customBlock_27>);
//Naquadria
Macerator.addRecipe(<gregtech:gt.metaitem.01:5327> * 2, <beyondrealitycore:customBlock_29>);


