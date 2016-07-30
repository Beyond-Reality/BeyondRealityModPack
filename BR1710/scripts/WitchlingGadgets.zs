
# Witching Gadgets Tweaks
 
import mods.nei.NEI;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Research;
import mods.witchinggadgets.InfernalBlastfurnace;
 
 
// Foreign Items

val HungryChest = <Thaumcraft:blockChestHungry>;
 
// This Mod Items
 
val BagOfTricks = <WitchingGadgets:item.WG_Bag>;
val VoidLinkedBag = <WitchingGadgets:item.WG_Bag:1>;
val EderLinkedBag = <WitchingGadgets:item.WG_Bag:2>;
val HungryBag = <WitchingGadgets:item.WG_Bag:3>;
val CloakOfHolding = <WitchingGadgets:item.WG_Cloak:2>;
val SpaciousCloth = <WitchingGadgets:item.WG_Material:3>;
val Cloak = <ore:travelgearCloakBase>;
 
 
// Remove/Hide unused
 
NEI.hide(BagOfTricks);
NEI.hide(VoidLinkedBag);
NEI.hide(EderLinkedBag);
NEI.hide(HungryBag);
 
 
//BlastFurnaceFixes
 
for ingotTungsten in <ore:ingotTungsten>.items {
  InfernalBlastfurnace.removeRecipe(ingotTungsten);
}
for ingotTitanium in <ore:ingotTitanium>.items {
  InfernalBlastfurnace.removeRecipe(ingotTitanium);
}
for ingotSteel in <ore:ingotSteel>.items {
  InfernalBlastfurnace.removeRecipe(ingotSteel);
}
 for blockSteel in <ore:blockSteel>.items {
  InfernalBlastfurnace.removeRecipe(blockSteel);
}
 
 
//BagFixes
 
Research.orphanResearch("BAGOFTRICKS");
Research.removeResearch("BAGOFTRICKS");
Arcane.removeRecipe(BagOfTricks);
Research.removeResearch("VOIDBAG");
Infusion.removeRecipe(VoidLinkedBag);
Research.removeResearch("ENDERBAG");
Infusion.removeRecipe(EderLinkedBag);
Research.removeResearch("HUNGERBAG");
Arcane.removeRecipe(HungryBag);

//CloakFix

Arcane.removeRecipe(CloakOfHolding);
Research.clearPages("CLOAK_STORAGE");
Arcane.addShaped("CLOAK_STORAGE", CloakOfHolding, "aer 20, perditio 15, ordo 10", [[SpaciousCloth, Cloak, SpaciousCloth], 
                                                                                  [null, HungryChest, null],
                                                                                  [null, null, null]]);
Research.addPage("CLOAK_STORAGE", "derp.research_page.CLOAK_STORAGE");
game.setLocalization("en_US", "derp.research_page.CLOAK_STORAGE", "[BR] Did you ever want to carry a chest in your pocket???   Well Now you Can with the Patent Pending Cloak of Voluminous Pockets. With a little bit of magic you can smash a Hungry Chest into your plain old Cloak to give yourself an extra inventory to store all your goodies.");
Research.addArcanePage("CLOAK_STORAGE", CloakOfHolding);
Research.refreshResearchRecipe("CLOAK_STORAGE");  
