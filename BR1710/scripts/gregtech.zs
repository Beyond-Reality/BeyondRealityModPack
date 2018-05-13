# gregtech.zs tweaks

import minetweaker.data.IData;
import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;
import minetweaker.liquid.ILiquidStack;
import mods.gregtech.Assembler;
import mods.gregtech.BlastFurnace;
import mods.gregtech.Centrifuge;
import mods.gregtech.CuttingSaw;
import mods.gregtech.PlateBender;
import mods.gregtech.Pulverizer;
import mods.gregtech.PyrolyseOven;
import mods.ic2.Extractor;
import mods.ic2.Compressor;

# Ingredients

val blockWool = <ore:blockWool>;
val boltIron = <ore:boltIron>;
val craftingToolHardHammer = <ore:craftingToolHardHammer>;
val craftingToolWrench = <ore:craftingToolWrench>;
val crateGtDustRubber = <ore:crateGtDustRubber>;
val ironDoor = <minecraft:iron_door>;
val plateAluminium = <ore:plateAluminium>;
val plateIron = <ore:plateIron>;
val plateGlowstone = <ore:plateGlowstone>;
val plateRedstone = <ore:plateRedstone>;
val plateRubber = <ore:plateRubber>;
val plateSteel = <ore:plateSteel>;
val rawCarbonMesh = <IC2:itemPartCarbonMesh>;
val stickWood = <ore:stickWood>;
val stoneMarble = <ore:stoneMarble>;

# Fluids

val distilledWater = <liquid:ic2distilledwater>;
val glue = <liquid:glue>;
val lubricant = <liquid:lubricant>;
val water = <liquid:water>;

# Foreign items

val BlockRedstone = <minecraft:redstone_block>;
val BlockGlowstone = <minecraft:glowstone>;
val IngotElectricalSteel = <EnderIO:itemAlloy:0>;
val StickyResin = <IC2:itemHarz>;

# This mod items

val batteryAcidLarge = <gregtech:gt.metaitem.01:32530>; // Single Use
val batteryAcidMedium = <gregtech:gt.metaitem.01:32520>; // Single Use
val batteryAcidSmall = <gregtech:gt.metaitem.01:32510>; // Single Use
val batteryCadmiumLarge = <gregtech:gt.metaitem.01:32537>; // Reusable
val batteryCadmiumMedium = <gregtech:gt.metaitem.01:32527>; // Reusable
val batteryCadmiumSmall = <gregtech:gt.metaitem.01:32517>; // Reusable
val batteryEnergyOrbCluster = <gregtech:gt.metaitem.01:32599>; // Reusable
val batteryEnergyOrb = <gregtech:gt.metaitem.01:32597>; // Reusable
val batteryHullLarge = <gregtech:gt.metaitem.01:32502>;
val batteryHullMedium = <gregtech:gt.metaitem.01:32501>;
val batteryHullSmall = <gregtech:gt.metaitem.01:32500>;
val batteryLithiumLarge = <gregtech:gt.metaitem.01:32538>; // Reusable
val batteryLithiumMedium = <gregtech:gt.metaitem.01:32528>; // Reusable
val batteryLithiumSmall = <gregtech:gt.metaitem.01:32518>; // Reusable
val batteryMercuryLarge = <gregtech:gt.metaitem.01:32531>; // Single Use
val batteryMercuryMedium = <gregtech:gt.metaitem.01:32521>; // Single Use
val batteryMercurySmall = <gregtech:gt.metaitem.01:32511>; // Single Use
val batterySodiumLarge = <gregtech:gt.metaitem.01:32539>; // Reusable
val batterySodiumMedium = <gregtech:gt.metaitem.01:32529>; // Reusable
val batterySodiumSmall = <gregtech:gt.metaitem.01:32519>; // Reusable
val batteryUltimate = <gregtech:gt.metaitem.01:32605>; // Reusable
val batteryZPM = <gregtech:gt.metaitem.01:32598>; // Single Use
val capacitorTantalum = <gregtech:gt.metaitem.01:32499>; // Reusable
val dustBasalt = <gregtech:gt.metaitem.01:2844>;
val dustBiotite = <gregtech:gt.metaitem.01:2848>;
val dustDacite = <gregtech:gt.metaitem.01:2859>;
val dustInpureBasalt = <gregtech:gt.metaitem.01:3844>;
val dustInpureMarble = <gregtech:gt.metaitem.01:3845>;
val dustMarble = <gregtech:gt.metaitem.01:2845>;
val dustRhyolite = <gregtech:gt.metaitem.01:2875>;
val dustSiliconDioxide = <gregtech:gt.metaitem.01:2837>;
val dustSmallDarkAsh = <gregtech:gt.metaitem.01:1816>;
val dustWood = <gregtech:gt.metaitem.01:2809>;
val foilPlastic = <gregtech:gt.metaitem.01:29874>;
val foilRubber = <gregtech:gt.metaitem.01:29880>;
val foilWood = <gregtech:gt.metaitem.01:29809>;
val foilWoodSealed = <gregtech:gt.metaitem.01:29889>;
val ic4 = <gregtech:gt.integrated_circuit:4> * 0;
val ingotSilicon = <gregtech:gt.metaitem.01:11020>;
val ingotSteel = <gregtech:gt.metaitem.01:11305>;
val machineCasingMotor = <gregtech:gt.blockcasings2:11>;
val plateGlass = <gregtech:gt.metaitem.01:17890>;
val plateWood = <gregtech:gt.metaitem.01:17809>;
val plyWood = plateWood.withTag({display: {Name: "Plywood", Lore: ["Composite plank", "made of 4 wood foils", "glued and pressed"]}});
val plateWoodSealed = <gregtech:gt.metaitem.01:17889>;
val plyWoodMarine = plateWoodSealed.withTag({display: {Name: "Sealed Plywood (Marine Grade)", Lore: ["Composite plank", "made of 4 sealed-wood foils", "glued and pressed"]}});
val ringWood = <gregtech:gt.metaitem.01:28809>;
val salt = <gregtech:gt.metaitem.01:2817>;
val shutterModule = <gregtech:gt.metaitem.01:32749>;
val upgradeMuffler = <gregtech:gt.metaitem.01:32727>;

# Tweaks

// Fixing JABBA unification exploits credits to [JasonMcRay for InfiniTech](https://github.com/JasonMcRay)
// Iron/PigIron/WroughtIron
<ore:ingotAnyIron>.remove(<gregtech:gt.metaitem.01:11304>);             // Wrought Iron Ingot
<ore:ingotAnyIron>.remove(<gregtech:gt.metaitem.01:11307>);             // Pig Iron Ingot
<ore:ingotDoubleAnyIron>.remove(<gregtech:gt.metaitem.01:13304>);       // Wrought Iron Ingot (Double)
<ore:ingotDoubleAnyIron>.remove(<gregtech:gt.metaitem.01:13307>);       // Pig Iron Ingot (Double)
<ore:ingotTripleAnyIron>.remove(<gregtech:gt.metaitem.01:14304>);       // Wrought Iron Ingot (Triple)
<ore:ingotTripleAnyIron>.remove(<gregtech:gt.metaitem.01:14307>);       // Pig Iron Ingot (Triple)
<ore:ingotQuadrupleAnyIron>.remove(<gregtech:gt.metaitem.01:15304>);    // Wrought Iron Ingot (Quadruple)
<ore:ingotQuadrupleAnyIron>.remove(<gregtech:gt.metaitem.01:15307>);    // Pig Iron Ingot (Quadruple)
<ore:ingotQuintupleAnyIron>.remove(<gregtech:gt.metaitem.01:16304>);    // Wrought Iron Ingot (Quintuple)
<ore:ingotQuintupleAnyIron>.remove(<gregtech:gt.metaitem.01:16307>);    // Pig Iron Ingot (Quintuple)
<ore:oreAnyIron>.remove(<gregtech:gt.blockores:307>);                   // Pig Iron Ore
<ore:dustAnyIron>.remove(<gregtech:gt.metaitem.01:2304>);               // Wrought Iron Dust
<ore:dustAnyIron>.remove(<gregtech:gt.metaitem.01:2307>);               // Pig Iron Dust
<ore:dustPureAnyIron>.remove(<gregtech:gt.metaitem.01:4307>);           // Pig Iron Dust (Pure)
<ore:dustPureAnyIron>.remove(<gregtech:gt.metaitem.01:3307>);           // Pig Iron Dust (Inpure)
<ore:dustSmallAnyIron>.remove(<gregtech:gt.metaitem.01:1304>);          // Wrought Iron Dust (Small)
<ore:dustSmallAnyIron>.remove(<gregtech:gt.metaitem.01:1307>);          // Pig Iron Dust (Small)
<ore:dustTinyAnyIron>.remove(<gregtech:gt.metaitem.01:304>);            // Wrought Iron Dust (Tiny)
<ore:dustTinyAnyIron>.remove(<gregtech:gt.metaitem.01:307>);            // Pig Iron Dust (Tiny)
<ore:nuggetAnyIron>.remove(<gregtech:gt.metaitem.01:9304>);             // Wrought Iron Nugget
<ore:nuggetAnyIron>.remove(<gregtech:gt.metaitem.01:9307>);             // Pig Iron Nugget
// Copper/AnnealedCopper
<ore:ingotAnyCopper>.remove(<gregtech:gt.metaitem.01:11345>);           // Annealed Copper Ingot
<ore:ingotDoubleAnyCopper>.remove(<gregtech:gt.metaitem.01:13345>);     // Annealed Copper Ingot (Double)
<ore:ingotTripleAnyCopper>.remove(<gregtech:gt.metaitem.01:14345>);     // Annealed Copper Ingot (Triple)
<ore:ingotQuadrupleAnyCopper>.remove(<gregtech:gt.metaitem.01:15345>);  // Annealed Copper Ingot (Quadruple)
<ore:ingotQuintupleAnyCopper>.remove(<gregtech:gt.metaitem.01:16345>);  // Annealed Copper Ingot (Quintuple)
<ore:dustAnyCopper>.remove(<gregtech:gt.metaitem.01:2345>);             // Annealed Copper Dust
<ore:dustSmallAnyCopper>.remove(<gregtech:gt.metaitem.01:1345>);        // Annealed Copper Dust (Small)
<ore:dustTinyAnyCopper>.remove(<gregtech:gt.metaitem.01:345>);          // Annealed Copper Dust (Tiny)
<ore:nuggetAnyCopper>.remove(<gregtech:gt.metaitem.01:9345>); // Annealed Copper Nugget

// Easier Compression Recipes for soft material plates from dusts
val platesFromDusts = {
  <gregtech:gt.metaitem.01:17010> : <ore:dustCarbon>,
  <gregtech:gt.metaitem.01:17501> : <ore:dustEmerald>,
  <gregtech:gt.metaitem.01:17502> : <ore:dustRuby>,
  <gregtech:gt.metaitem.01:17503> : <ore:dustSapphire>,
  <gregtech:gt.metaitem.01:17504> : <ore:dustGreenSapphire>,
  <gregtech:gt.metaitem.01:17505> : <ore:dustOlivine>,
  <gregtech:gt.metaitem.01:17507> : <ore:dustTopaz>,
  <gregtech:gt.metaitem.01:17508> : <ore:dustTanzanite>,
  <gregtech:gt.metaitem.01:17509> : <ore:dustAmethyst>,
  <gregtech:gt.metaitem.01:17510> : <ore:dustOpal>,
  <gregtech:gt.metaitem.01:17511> : <ore:dustJasper>,
  <gregtech:gt.metaitem.01:17512> : <ore:dustFoolsRuby>,
  <gregtech:gt.metaitem.01:17513> : <ore:dustBlueTopaz>,
  <gregtech:gt.metaitem.01:17514> : <ore:dustAmber>,
  <gregtech:gt.metaitem.01:17518> : <ore:dustForcicium>,
  <gregtech:gt.metaitem.01:17519> : <ore:dustForcillium>,
  <gregtech:gt.metaitem.01:17520> : <ore:dustMonazite>,
  <gregtech:gt.metaitem.01:17523> : <ore:dustQuartzite>,
  <gregtech:gt.metaitem.01:17524> : <ore:dustLazurite>,
  <gregtech:gt.metaitem.01:17525> : <ore:dustSodalite>,
  <gregtech:gt.metaitem.01:17526> : <ore:dustLapis>,
  <gregtech:gt.metaitem.01:17527> : <ore:dustGarnetRed>,
  <gregtech:gt.metaitem.01:17528> : <ore:dustGarnetYellow>,
  <gregtech:gt.metaitem.01:17529> : <ore:dustVinteum>,
  <gregtech:gt.metaitem.01:17530> : <ore:dustApatite>,
  <gregtech:gt.metaitem.01:17531> : <ore:dustNiter>,
  <gregtech:gt.metaitem.01:17532> : <ore:dustEnderPearl>,
  <gregtech:gt.metaitem.01:17533> : <ore:dustEnderEye>,
  <gregtech:gt.metaitem.01:17534> : <ore:dustPhosphorus>,
  <gregtech:gt.metaitem.01:17535> : <ore:dustCoal>,
  <gregtech:gt.metaitem.01:17536> : <ore:dustCharcoal>,
  <gregtech:gt.metaitem.01:17538> : <ore:dustLignite>,
  <gregtech:gt.metaitem.01:17540> : <ore:dustInfusedAir>,
  <gregtech:gt.metaitem.01:17541> : <ore:dustInfusedFire>,
  <gregtech:gt.metaitem.01:17542> : <ore:dustInfusedEarth>,
  <gregtech:gt.metaitem.01:17543> : <ore:dustInfusedWater>,
  <gregtech:gt.metaitem.01:17544> : <ore:dustInfusedEntropy>,
  <gregtech:gt.metaitem.01:17545> : <ore:dustInfusedOrder>,
  <gregtech:gt.metaitem.01:17810> : <ore:dustRedstone>,
  <gregtech:gt.metaitem.01:17811> : <ore:dustGlowstone>
} as IIngredient[IItemStack];

for plate, dust in platesFromDusts {
  Compressor.addRecipe(plate, dust);
}

// Alternate Block recipes
Compressor.addRecipe(BlockRedstone, plateRedstone * 9);
Compressor.addRecipe(BlockGlowstone, plateGlowstone * 4);

// Workbench recipe for Sound Muffler Upgrade
recipes.addShaped(upgradeMuffler, [
  [plateIron, StickyResin, blockWool]
]);

// Missing Wood Ring recipe
recipes.addShaped(ringWood ,[
  [craftingToolHardHammer, null, null],
  [null, stickWood, null],
  [null, null, null]
]);

// EnderIO Electrical Steel
BlastFurnace.addRecipe([IngotElectricalSteel * 4, dustSmallDarkAsh * 2], null,  [ingotSteel * 3, ingotSilicon * 1], 2000, 120, 1000);

// Pulbirezer recipes for Wood Logs
for logWood in <ore:logWood>.items
{
  Pulverizer.addRecipe([dustWood * 6, <gregtech:gt.metaitem.01:2809>], logWood, [10000, 8000], 400, 2);
}

for stoneMarble in <ore:stoneMarble>.items {
  Pulverizer.addRecipe([dustInpureMarble, dustMarble], stoneMarble, [10000, 1000], 400, 2);
}

for stoneBasalt in <ore:stoneBasalt>.items {
  Pulverizer.addRecipe([dustInpureBasalt, dustBasalt], stoneBasalt, [10000, 1000], 400, 2);
}


# --- OreDictionary registrations ---

// Marble

<ore:stoneMarble>.addAll(<ore:blockMarble>);

// Plate Glass

<ore:paneGlass>.add(plateGlass);

// Salt

<ore:foodSalt>.add(salt);

// Battery Hulls

// Small

<ore:batteryHullSmall>.add(batteryHullSmall);
<ore:batteryHull>.add(batteryHullSmall);

// Medium

<ore:batteryHullMedium>.add(batteryHullMedium);
<ore:batteryHull>.add(batteryHullMedium);

// Large

<ore:batteryHullLarge>.add(batteryHullLarge);
<ore:batteryHull>.add(batteryHullLarge);

// Batteries

// ULV

// Reusable

// Tantalum

<ore:battery>.add(capacitorTantalum);
<ore:batteryReusable>.add(capacitorTantalum);
<ore:batteryTiny>.add(capacitorTantalum);
<ore:batteryReusableTiny>.add(capacitorTantalum);
<ore:batteryULV>.add(capacitorTantalum);
<ore:batteryReusableULV>.add(capacitorTantalum);
<ore:batteryTantalum>.add(capacitorTantalum);
<ore:capacitorTantalum>.add(capacitorTantalum);

// LV

// Single Use

// Acid
<ore:battery>.add(batteryAcidSmall);
<ore:batterySingleUse>.add(batteryAcidSmall);
<ore:batterySmall>.add(batteryAcidSmall);
<ore:batterySingleUseSmall>.add(batteryAcidSmall);
<ore:batteryLV>.add(batteryAcidSmall);
<ore:batterySingleUseLV>.add(batteryAcidSmall);
<ore:batteryAcid>.add(batteryAcidSmall);

// Mercury
<ore:battery>.add(batteryMercurySmall);
<ore:batterySingleUse>.add(batteryMercurySmall);
<ore:batterySmall>.add(batteryMercurySmall);
<ore:batterySingleUseSmall>.add(batteryMercurySmall);
<ore:batteryLV>.add(batteryMercurySmall);
<ore:batterySingleUseLV>.add(batteryMercurySmall);
<ore:batteryMercury>.add(batteryMercurySmall);

// Reusable

// Cadmium
<ore:batteryBasic>.add(batteryCadmiumSmall);
<ore:battery>.add(batteryCadmiumSmall);
<ore:batteryReusable>.add(batteryCadmiumSmall);
<ore:batterySmall>.add(batteryCadmiumSmall);
<ore:batteryReusableSmall>.add(batteryCadmiumSmall);
<ore:batteryLV>.add(batteryCadmiumSmall);
<ore:batteryReusableLV>.add(batteryCadmiumSmall);
<ore:batteryCadmium>.add(batteryCadmiumSmall);

// Lithium
<ore:batteryBasic>.add(batteryLithiumSmall);
<ore:battery>.add(batteryLithiumSmall);
<ore:batteryReusable>.add(batteryLithiumSmall);
<ore:batterySmall>.add(batteryLithiumSmall);
<ore:batteryReusableSmall>.add(batteryLithiumSmall);
<ore:batteryLV>.add(batteryLithiumSmall);
<ore:batteryReusableLV>.add(batteryLithiumSmall);
<ore:batteryLithium>.add(batteryLithiumSmall);

// Sodium
<ore:batteryBasic>.add(batterySodiumSmall);
<ore:battery>.add(batterySodiumSmall);
<ore:batteryReusable>.add(batterySodiumSmall);
<ore:batterySmall>.add(batterySodiumSmall);
<ore:batteryReusableSmall>.add(batterySodiumSmall);
<ore:batteryLV>.add(batterySodiumSmall);
<ore:batteryReusableLV>.add(batterySodiumSmall);
<ore:batterySodium>.add(batterySodiumSmall);

// IC2 Basic
for batteryRE in [<IC2:itemBatREDischarged>, <IC2:itemBatRE:*>] as IItemStack[] {
  <ore:battery>.add(batteryRE);
  <ore:batteryReusable>.add(batteryRE);
  <ore:batterySmall>.add(batteryRE);
  <ore:batteryReusableSmall>.add(batteryRE);
  <ore:batteryLV>.add(batteryRE);
  <ore:batteryReusableLV>.add(batteryRE);
  <ore:batteryRE>.add(batteryRE);
}

// MV

// Single Use

// Acid
<ore:battery>.add(batteryAcidMedium);
<ore:batterySingleUse>.add(batteryAcidMedium);
<ore:batteryMedium>.add(batteryAcidMedium);
<ore:batterySingleUseMedium>.add(batteryAcidMedium);
<ore:batteryMV>.add(batteryAcidMedium);
<ore:batterySingleUseMV>.add(batteryAcidMedium);
<ore:batteryAcid>.add(batteryAcidMedium);

// Mercury
<ore:battery>.add(batteryMercuryMedium);
<ore:batterySingleUse>.add(batteryMercuryMedium);
<ore:batteryMedium>.add(batteryMercuryMedium);
<ore:batterySingleUseMedium>.add(batteryMercuryMedium);
<ore:batteryMV>.add(batteryMercuryMedium);
<ore:batterySingleUseMV>.add(batteryMercuryMedium);
<ore:batteryMercury>.add(batteryMercuryMedium);

// Reusable

// Cadmium
<ore:battery>.add(batteryCadmiumMedium);
<ore:batteryReusable>.add(batteryCadmiumMedium);
<ore:batteryMedium>.add(batteryCadmiumMedium);
<ore:batteryReusableMedium>.add(batteryCadmiumMedium);
<ore:batteryMV>.add(batteryCadmiumMedium);
<ore:batteryReusableMV>.add(batteryCadmiumMedium);
<ore:batteryCadmium>.add(batteryCadmiumMedium);

// Lithium
<ore:battery>.add(batteryLithiumMedium);
<ore:batteryReusable>.add(batteryLithiumMedium);
<ore:batteryMedium>.add(batteryLithiumMedium);
<ore:batteryReusableMedium>.add(batteryLithiumMedium);
<ore:batteryMV>.add(batteryLithiumMedium);
<ore:batteryReusableMV>.add(batteryLithiumMedium);
<ore:batteryLithium>.add(batteryLithiumMedium);

// Sodium
<ore:battery>.add(batterySodiumMedium);
<ore:batteryReusable>.add(batterySodiumMedium);
<ore:batteryMedium>.add(batterySodiumMedium);
<ore:batteryReusableMedium>.add(batterySodiumMedium);
<ore:batteryMV>.add(batterySodiumMedium);
<ore:batteryReusableMV>.add(batterySodiumMedium);
<ore:batterySodium>.add(batterySodiumMedium);

// HV

// Single Use

// Acid
<ore:battery>.add(batteryAcidLarge);
<ore:batterySingleUse>.add(batteryAcidLarge);
<ore:batteryLarge>.add(batteryAcidLarge);
<ore:batterySingleUseLarge>.add(batteryAcidLarge);
<ore:batteryHV>.add(batteryAcidLarge);
<ore:batterySingleUseHV>.add(batteryAcidLarge);
<ore:batteryAcid>.add(batteryAcidLarge);

// Mercury
<ore:battery>.add(batteryMercuryLarge);
<ore:batterySingleUse>.add(batteryMercuryLarge);
<ore:batteryLarge>.add(batteryMercuryLarge);
<ore:batterySingleUseLarge>.add(batteryMercuryLarge);
<ore:batteryHV>.add(batteryMercuryLarge);
<ore:batterySingleUseHV>.add(batteryMercuryLarge);
<ore:batteryMercury>.add(batteryMercuryLarge);

// Reusable

// Cadmium
<ore:battery>.add(batteryCadmiumLarge);
<ore:batteryReusable>.add(batteryCadmiumLarge);
<ore:batteryLarge>.add(batteryCadmiumLarge);
<ore:batteryReusableLarge>.add(batteryCadmiumLarge);
<ore:batteryHV>.add(batteryCadmiumLarge);
<ore:batteryReusableHV>.add(batteryCadmiumLarge);
<ore:batteryCadmium>.add(batteryCadmiumLarge);

// Lithium
<ore:battery>.add(batteryLithiumLarge);
<ore:batteryReusable>.add(batteryLithiumLarge);
<ore:batteryLarge>.add(batteryLithiumLarge);
<ore:batteryReusableLarge>.add(batteryLithiumLarge);
<ore:batteryHV>.add(batteryLithiumLarge);
<ore:batteryReusableHV>.add(batteryLithiumLarge);
<ore:batteryLithium>.add(batteryLithiumLarge);

// Sodium
<ore:battery>.add(batterySodiumLarge);
<ore:batteryReusable>.add(batterySodiumLarge);
<ore:batteryLarge>.add(batterySodiumLarge);
<ore:batteryReusableLarge>.add(batterySodiumLarge);
<ore:batteryHV>.add(batterySodiumLarge);
<ore:batteryReusableHV>.add(batterySodiumLarge);
<ore:batterySodium>.add(batterySodiumLarge);

// IV

<ore:batteryUltimate>.remove(batteryEnergyOrb); // Why was it here?
<ore:battery>.add(batteryEnergyOrb);
<ore:batteryReusable>.add(batteryEnergyOrb);
<ore:batteryIV>.add(batteryEnergyOrb);
<ore:batteryReusableIV>.add(batteryEnergyOrb);

// LuV

<ore:batteryUltimate>.remove(batteryEnergyOrbCluster); // Why was it here?
<ore:battery>.add(batteryEnergyOrbCluster);
<ore:batteryReusable>.add(batteryEnergyOrbCluster);
<ore:batteryLuV>.add(batteryEnergyOrbCluster);
<ore:batteryReusableLuV>.add(batteryEnergyOrbCluster);

// ZPM

<ore:battery>.add(batteryZPM);
<ore:batterySingleUse>.add(batteryZPM);
<ore:batteryZPM>.add(batteryZPM);
<ore:batterySingleUseZPM>.add(batteryZPM);

// Ultimate

<ore:battery>.add(batteryUltimate);
<ore:batteryReusable>.add(batteryUltimate);
<ore:batteryUltimate>.add(batteryUltimate);
<ore:batteryReusableUltimate>.add(batteryUltimate);
<ore:batteryUV>.add(batteryUltimate);
<ore:batteryReusableUV>.add(batteryUltimate);

# Add recipes for missing material forms

// Rubber Foil
<ore:foilRubber>.add(foilRubber);
for plateRubber in <ore:plateRubber>.items {
  PlateBender.addRecipe(foilRubber * 4, plateRubber, 40, 24);
}

// Polyethylene Foil
<ore:foilPolyethylene>.add(<gregtech:gt.metaitem.01:29874>);
for platePlastic in <ore:platePlastic>.items {
  PlateBender.addRecipe(foilPlastic * 4, platePlastic, 40, 24);
}

// Wood Foil
CuttingSaw.addRecipe([foilWood * 4], plateWood, water, 40, 4);
CuttingSaw.addRecipe([foilWood * 4], plateWood, distilledWater, 40, 4);
CuttingSaw.addRecipe([foilWood * 4], plateWood, lubricant, 20, 4);

// Sealed-Wood Foil
CuttingSaw.addRecipe([foilWoodSealed * 4], plateWoodSealed, water, 40, 4);
CuttingSaw.addRecipe([foilWoodSealed * 4], plateWoodSealed, distilledWater, 40, 4);
CuttingSaw.addRecipe([foilWoodSealed * 4], plateWoodSealed, lubricant, 20, 4);

// Plywoods
Assembler.addRecipe(plyWood, foilWood * 4, ic4, glue * 30, 120, 16);
Assembler.addRecipe(plyWoodMarine, foilWoodSealed * 4, ic4, glue * 30, 120, 16);

// Alternate LV Cables with Rubber

val moltenRubber = <liquid:molten.rubber>;
val ic24 = <gregtech:gt.integrated_circuit:24> * 0;

val cablesFromWires = {

// Cobalt (LV)
  <gregtech:gt.blockmachines:1206> : <gregtech:gt.blockmachines:1200>,
  <gregtech:gt.blockmachines:1207> : <gregtech:gt.blockmachines:1201>,
  <gregtech:gt.blockmachines:1208> : <gregtech:gt.blockmachines:1202>,
  <gregtech:gt.blockmachines:1209> : <gregtech:gt.blockmachines:1203>,
  <gregtech:gt.blockmachines:1210> : <gregtech:gt.blockmachines:1204>,

// Lead (LV)
  <gregtech:gt.blockmachines:1226> : <gregtech:gt.blockmachines:1220>,
  <gregtech:gt.blockmachines:1227> : <gregtech:gt.blockmachines:1221>,
  <gregtech:gt.blockmachines:1228> : <gregtech:gt.blockmachines:1222>,
  <gregtech:gt.blockmachines:1229> : <gregtech:gt.blockmachines:1223>,
  <gregtech:gt.blockmachines:1230> : <gregtech:gt.blockmachines:1224>,

// Tin (LV)
  <gregtech:gt.blockmachines:1246> : <gregtech:gt.blockmachines:1240>,
  <gregtech:gt.blockmachines:1247> : <gregtech:gt.blockmachines:1241>,
  <gregtech:gt.blockmachines:1248> : <gregtech:gt.blockmachines:1242>,
  <gregtech:gt.blockmachines:1249> : <gregtech:gt.blockmachines:1243>,
  <gregtech:gt.blockmachines:1250> : <gregtech:gt.blockmachines:1244>,

// Zinc (LV)
  <gregtech:gt.blockmachines:1266> : <gregtech:gt.blockmachines:1260>,
  <gregtech:gt.blockmachines:1267> : <gregtech:gt.blockmachines:1261>,
  <gregtech:gt.blockmachines:1268> : <gregtech:gt.blockmachines:1262>,
  <gregtech:gt.blockmachines:1269> : <gregtech:gt.blockmachines:1263>,
  <gregtech:gt.blockmachines:1270> : <gregtech:gt.blockmachines:1264>,

// Soldering Alloy (LV)
  <gregtech:gt.blockmachines:1286> : <gregtech:gt.blockmachines:1280>,
  <gregtech:gt.blockmachines:1287> : <gregtech:gt.blockmachines:1281>,
  <gregtech:gt.blockmachines:1288> : <gregtech:gt.blockmachines:1282>,
  <gregtech:gt.blockmachines:1289> : <gregtech:gt.blockmachines:1283>,
  <gregtech:gt.blockmachines:1290> : <gregtech:gt.blockmachines:1284>,

// Red Alloy (ULV)
  <gregtech:gt.blockmachines:2006> : <gregtech:gt.blockmachines:2000>,
  <gregtech:gt.blockmachines:2007> : <gregtech:gt.blockmachines:2001>,
  <gregtech:gt.blockmachines:2008> : <gregtech:gt.blockmachines:2002>,
  <gregtech:gt.blockmachines:2009> : <gregtech:gt.blockmachines:2003>,
  <gregtech:gt.blockmachines:2010> : <gregtech:gt.blockmachines:2004>

} as IItemStack[IItemStack];

val fluidForCables = {

// Cobalt (LV)
  <gregtech:gt.blockmachines:1206> : moltenRubber * 144,
  <gregtech:gt.blockmachines:1207> : moltenRubber * 144,
  <gregtech:gt.blockmachines:1208> : moltenRubber * 288,
  <gregtech:gt.blockmachines:1209> : moltenRubber * 432,
  <gregtech:gt.blockmachines:1210> : moltenRubber * 576,

// Lead (LV)
  <gregtech:gt.blockmachines:1226> : moltenRubber * 144,
  <gregtech:gt.blockmachines:1227> : moltenRubber * 144,
  <gregtech:gt.blockmachines:1228> : moltenRubber * 288,
  <gregtech:gt.blockmachines:1229> : moltenRubber * 432,
  <gregtech:gt.blockmachines:1230> : moltenRubber * 576,

// Tin (LV)
  <gregtech:gt.blockmachines:1246> : moltenRubber * 144,
  <gregtech:gt.blockmachines:1247> : moltenRubber * 144,
  <gregtech:gt.blockmachines:1248> : moltenRubber * 288,
  <gregtech:gt.blockmachines:1249> : moltenRubber * 432,
  <gregtech:gt.blockmachines:1250> : moltenRubber * 576,

// Zinc (LV)
  <gregtech:gt.blockmachines:1266> : moltenRubber * 144,
  <gregtech:gt.blockmachines:1267> : moltenRubber * 144,
  <gregtech:gt.blockmachines:1268> : moltenRubber * 288,
  <gregtech:gt.blockmachines:1269> : moltenRubber * 432,
  <gregtech:gt.blockmachines:1270> : moltenRubber * 576,

// Soldering Alloy (LV)
  <gregtech:gt.blockmachines:1286> : moltenRubber * 144,
  <gregtech:gt.blockmachines:1287> : moltenRubber * 144,
  <gregtech:gt.blockmachines:1288> : moltenRubber * 288,
  <gregtech:gt.blockmachines:1289> : moltenRubber * 432,
  <gregtech:gt.blockmachines:1290> : moltenRubber * 576,

// Red Alloy (ULV)
  <gregtech:gt.blockmachines:2006> : moltenRubber * 144,
  <gregtech:gt.blockmachines:2007> : moltenRubber * 144,
  <gregtech:gt.blockmachines:2008> : moltenRubber * 288,
  <gregtech:gt.blockmachines:2009> : moltenRubber * 432,
  <gregtech:gt.blockmachines:2010> : moltenRubber * 576

} as ILiquidStack[IItemStack];

for cable, wire in cablesFromWires {
  var fluid = fluidForCables[cable];
  Assembler.addRecipe(cable, wire, ic24, fluid, 100, 8);
}

// --- Chisel blocks processing ---

// DACITE

//  public static void addRecipe(IItemStack[] outputs, ILiquidStack fluidOutput, IItemStack input, IItemStack cells, ILiquidStack fluidInput, int[] chances, int durationTicks, int euPerTick) {
Centrifuge.addRecipe(
  // IItemStack[] outputs,
  [
    dustBiotite,
    dustRhyolite
  ],

  // ILiquidStack fluidOutput, IItemStack input,
  null,
  dustDacite * 2,

  // IItemStack cells, ILiquidStack fluidInput,
  null, null,

  // int[] chances,
  [10000, 10000],

  // int durationTicks, int euPerTick
  400, 16
);


// RHYOLITE

Centrifuge.addRecipe(
  // IItemStack[] outputs,
  [
    dustBiotite,
    dustSiliconDioxide * 3,
  ],
  // ILiquidStack fluidOutput, IItemStack input,
  null,
  dustRhyolite * 4,

  // IItemStack cells, ILiquidStack fluidInput,
  null, null,

  // int[] chances,
  [10000, 10000],

  // int durationTicks, int euPerTick
  256, 16
);

recipes.addShaped(machineCasingMotor * 4, [
  [boltIron, plateSteel, boltIron],
  [plateSteel, craftingToolWrench ,plateSteel],
  [boltIron, plateSteel, boltIron]
]);

for craftingDuctTape in <ore:craftingDuctTape>.items {
  recipes.addShaped(craftingDuctTape, [
    [plateRubber, plateRubber, plateRubber],
    [StickyResin, crateGtDustRubber, StickyResin],
    [rawCarbonMesh, rawCarbonMesh, rawCarbonMesh]
  ]);
}

//Shutter Recipe Fix (caused by Malysis's doors)
for plates in [plateIron, plateAluminium] as IIngredient[] {
  for plate in plates.items {
    Assembler.addRecipe(shutterModule * 2, plate * 2, ironDoor * 1, 800, 16);
  }
}
