

// Ore Dictonary Addition

// Shorts
val marstungstate = <beyondrealitycore:customBlock_23>;
val tungstate = <ore:oreTungsten>;
val mooniron = <beyondrealitycore:customBlock_0>;
val marsiron = <beyondrealitycore:customBlock_1>;
val iron = <ore:oreIron>;
val marsgold = <beyondrealitycore:customBlock_2>;
val gold = <ore:oreGold>;
val moonbauxite = <beyondrealitycore:customBlock_11>;
val marsbauxite = <beyondrealitycore:customBlock_12>;
val bauxite = <ore:oreBauxite>;
val moontetrahedrite = <beyondrealitycore:customBlock_9>;
val marstetrahedrite = <beyondrealitycore:customBlock_10>;
val tetrahedrite = <ore:oreTetrahedrite>;
val marsuranium = <beyondrealitycore:customBlock_13>;
val uranium = <ore:oreUranium>;
val mooncassiterite = <beyondrealitycore:customBlock_14>;
val marscassiterite = <beyondrealitycore:customBlock_15>;
val cassiterite = <ore:oreCassiterite>;
val moonruby = <beyondrealitycore:customBlock_25>;
val marsruby = <beyondrealitycore:customBlock_26>;
val ruby = <ore:oreRuby>;
val moonlead = <beyondrealitycore:customBlock_18>;
val marslead = <beyondrealitycore:customBlock_19>;
val lead = <ore:oreLead>;
val marsmutagen = <beyondrealitycore:customBlock_28>;
val moonsilver = <beyondrealitycore:customBlock_16>;
val marssilver = <beyondrealitycore:customBlock_17>;
val silver = <ore:oreSilver>;
val moonglowstone = <beyondrealitycore:customBlock_27>;
val marsnaquadria = <beyondrealitycore:customBlock_29>;
val naquadria = <ore:oreNaquadria>;
val moonlapis = <beyondrealitycore:customBlock_7>;
val marslapis = <beyondrealitycore:customBlock_8>;
val lapis = <ore:oreLapis>;
val moonredstone = <beyondrealitycore:customBlock_5>;
val marsredstone = <beyondrealitycore:customBlock_6>;
val redstone = <ore:oreRedstone>;
val moondiamond = <beyondrealitycore:customBlock_3>;
val marsdiamond = <beyondrealitycore:customBlock_4>;
val diamond = <ore:oreDiamond>;
val marsiridium = <beyondrealitycore:customBlock_20>;
val iridium = <ore:oreIridium>;
val marsnaquadah = <beyondrealitycore:customBlock_24>;
val naquadah = <ore:oreNaquadah>;
val marsosmium = <beyondrealitycore:customBlock_22>;
val osmium = <ore:oreOsmium>;
val marsplatinum = <beyondrealitycore:customBlock_21>;
val platinum = <ore:orePlatinum>;
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
furnace.addRecipe(<gendustry:HoneyDrop:11>, marsmutagen, 2.0);
furnace.addRecipe(<minecraft:glowstone_dust>, moonglowstone, 2.0);

furnace.addRecipe(<minecraft:diamond>, moondiamond, 2.0);
furnace.addRecipe(<minecraft:diamond>, marsdiamond, 2.0);

// Dust to diamond
recipes.addShapeless(<minecraft:diamond>, [dust, dust, dust]);

// Adding
tungstate.add(marstungstate);
iron.add(mooniron);
iron.add(marsiron);
gold.add(marsgold);
bauxite.add(moonbauxite);
bauxite.add(marsbauxite);
tetrahedrite.add(moontetrahedrite);
tetrahedrite.add(marstetrahedrite);
uranium.add(marsuranium);
cassiterite.add(mooncassiterite);
cassiterite.add(marscassiterite);
ruby.add(moonruby);
ruby.add(marsruby);
lead.add(moonlead);
lead.add(marslead);
silver.add(moonsilver);
silver.add(marssilver);
naquadria.add(marsnaquadria);
lapis.add(moonlapis);
lapis.add(marslapis);
redstone.add(moonredstone);
redstone.add(marsredstone);
redstone.add(marsredstone);
diamond.add(moondiamond);
diamond.add(marsdiamond);
iridium.add(marsiridium);
naquadah.add(marsnaquadah);
osmium.add(marsosmium);
platinum.add(marsplatinum);


