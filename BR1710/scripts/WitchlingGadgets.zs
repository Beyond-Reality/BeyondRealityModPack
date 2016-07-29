#Witching Gadgets


import mods.nei.NEI;


// Foreign Items

val tungsteningot = <gregtech:gt.metaitem.01:11081>;
val titaniumingot1 = <GalacticraftMars:item.itemBasicAsteroids:5>;
val titaniumingot2 = <gregtech:gt.metaitem.01:11028>;


//This Mods Items

val bagoftricks = <WitchingGadgets:item.WG_Bag>;
val voidlinkedbag = <WitchingGadgets:item.WG_Bag:1>;
val ederlinkedbag = <WitchingGadgets:item.WG_Bag:2>;
val hungrybag = <WitchingGadgets:item.WG_Bag:3>;


// Remove/Hide unused
NEI.hide(bagoftricks);
NEI.hide(voidlinkedbag);
NEI.hide(ederlinkedbag);
NEI.hide(hungrybag);


//BlastFurnaceFixes
mods.witchinggadgets.InfernalBlastfurnace.removeRecipe(tungsteningot);
mods.witchinggadgets.InfernalBlastfurnace.removeRecipe(titaniumingot1);
mods.witchinggadgets.InfernalBlastfurnace.removeRecipe(titaniumingot2);



//BagFixes
mods.thaumcraft.Research.orphanResearch("BAGOFTRICKS");
mods.thaumcraft.Research.removeResearch("BAGOFTRICKS");
mods.thaumcraft.Arcane.removeRecipe(bagoftricks);
mods.thaumcraft.Research.removeResearch("VOIDBAG");
mods.thaumcraft.Infusion.removeRecipe(voidlinkedbag);
mods.thaumcraft.Research.removeResearch("ENDERBAG");
mods.thaumcraft.Infusion.removeRecipe(ederlinkedbag);
mods.thaumcraft.Research.removeResearch("HUNGERBAG");
mods.thaumcraft.Arcane.removeRecipe(hungrybag);
