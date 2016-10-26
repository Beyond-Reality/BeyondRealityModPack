// BlocksplitNerfs.zs tweaks

# Imports

import minetweaker.item.IIngredient;

# Ingredients

  val blocks = {
  "Amber" : <ore:blockAmber>,
  "Amethyst" : <ore:blockAmethyst>,
  "Apaitte" : <ore:blockApatite>,
  "BlueTopaz" : <ore:blockBlueTopaz>,
  "Charcoal" : <ore:blockCharcoal>,
  "CoalCoke" : <ore:blockCoalCoke>,
  "Coal" : <ore:blockCoal>,
  "Diamond" : <ore:blockDiamond>,
  "Dilithium" : <ore:blockDilithium>,
  "Electrotine" : <ore:blockElectrotine>,
  "Emerald" : <ore:blockEmerald>,
  "EnderEye" : <ore:blockEnderEye>,
  "EnderPearl": <ore:blockEnderPearl>,
  "FoolsRuby" : <ore:blockFoolsRuby>,
  "Force" : <ore:blockForce>,
  "Forcicium" : <ore:blockForcicium>,
  "Forcillium" : <ore:blockForcillium>,
  "GarnetYellow" : <ore:blockGarnetYellow>,
  "GarnetRed" : <ore:blockGarnetRed>,
  "GreenSapphire" : <ore:blockGreenSapphire>,
  "InfusedAir": <ore:blockInfusedAir>,
  "InfussedEarth" : <ore:blockInfusedEarth>,
  "InfusedEntropy" : <ore:blockInfusedEntropy>,
  "InfusedFire": <ore:blockInfusedFire>,
  "InfusedOrder" : <ore:blockInfusedOrder>,
  "InfusedWater" : <ore:blockInfusedWater>,
  "Jasper" : <ore:blockJasper>,
  "Lapis" : <ore:blockLapis>,
  "Lazurite" : <ore:blockLazurite>,
  "Lignite" : <ore:blockLignite>,
  "Monazite" : <ore:blockMonazite>,
  "NetherStar" : <ore:blockNetherStar>,
  "Niter" : <ore:blockNiter>,
  "Olivine" : <ore:blockOlivine>,
  "Opal" : <ore:blockOpal>,
  "Phosphorus" : <ore:blockPhosphorus>,
  "Quartzite" : <ore:blockQuartzite>,
  "ReinforcedMetal" : <ore:blockReinforcedMetal>,
  "Ruby" : <ore:blockRuby>,
  "Sapphire" : <ore:blockSapphire>,
  "Sodalite" : <ore:blockSodalite>,
  "Tanzanite" : <ore:blockTanzanite>,
  "Topaz" : <ore:blockTopaz>,
  "Vinteum" : <ore:blockVinteum>
} as IIngredient[string];

val dusts = {
  "Amber" : <ore:dustAmber>,
  "Amethyst" : <ore:dustAmethyst>,
  "Apaitte" : <ore:dustApatite>,
  "BlueTopaz" : <ore:dustBlueTopaz>,
  "Charcoal" : <ore:dustCharcoal>,
  "CoalCoke" : <ore:dustkCoalCoke>,
  "Coal" : <ore:dustCoal>,
  "Diamond" : <ore:dustDiamond>,
  "Dilithium" : <ore:dustDilithium>,
  "Electrotine" : <ore:dustElectrotine>,
  "Emerald" : <ore:dustEmerald>,
  "EnderEye" : <ore:dustEnderEye>,
  "EnderPearl": <ore:dustEnderPearl>,
  "FoolsRuby" : <ore:dustFoolsRuby>,
  "Force" : <ore:dustForce>,
  "Forcicium" : <ore:dustForcicium>,
  "Forcillium" : <ore:dustForcillium>,
  "GarnetYellow" : <ore:dustGarnetYellow>,
  "GarnetRed" : <ore:dustGarnetRed>,
  "GreenSapphire" : <ore:dustGreenSapphire>,
  "InfusedAir": <ore:dustInfusedAir>,
  "InfussedEarth" : <ore:dustInfusedEarth>,
  "InfusedEntropy" : <ore:dustInfusedEntropy>,
  "InfusedFire": <ore:dustInfusedFire>,
  "InfusedOrder" : <ore:dustInfusedOrder>,
  "InfusedWater" : <ore:dustInfusedWater>,
  "Jasper" : <ore:dustJasper>,
  "Lapis" : <ore:dustLapis>,
  "Lazurite" : <ore:dustLazurite>,
  "Lignite" : <ore:dustLignite>,
  "Monazite" : <ore:dustMonazite>,
  "NetherStar" : <ore:dustNetherStar>,
  "Niter" : <ore:dustNiter>,
  "Olivine" : <ore:dustOlivine>,
  "Opal" : <ore:dustOpal>,
  "Phosphorus" : <ore:dustPhosphorus>,
  "Quartzite" : <ore:dustQuartzite>,
  "ReinforcedMetal" : <ore:dustReinforcedMetal>,
  "Ruby" : <ore:dustRuby>,
  "Sapphire" : <ore:dustSapphire>,
  "Sodalite" : <ore:dustSodalite>,
  "Tanzanite" : <ore:dustTanzanite>,
  "Topaz" : <ore:dustTopaz>,
  "Vinteum" : <ore:dustVinteum>
} as IIngredient[string];

val gems = {
  "Amber" : <ore:gemAmber>,
  "Amethyst" : <ore:gemAmethyst>,
  "Apaitte" : <ore:gemApatite>,
  "BlueTopaz" : <ore:gemBlueTopaz>,
  "Charcoal" : <ore:gemCharcoal>,
  "CoalCoke" : <ore:fuelCoke>,
  "Coal" : <ore:gemCoal>,
  "Diamond" : <ore:gemDiamond>,
  "Dilithium" : <ore:gemDilithium>,
  "Electrotine" : <ore:gemElectrotine>,
  "Emerald" : <ore:gemEmerald>,
  "EnderEye" : <ore:gemEnderEye>,
  "EnderPearl": <ore:gemEnderPearl>,
  "FoolsRuby" : <ore:gemFoolsRuby>,
  "Force" : <ore:gemForce>,
  "Forcicium" : <ore:gemForcicium>,
  "Forcillium" : <ore:gemForcillium>,
  "GarnetRed" : <ore:gemGarnetRed>,
  "GarnetYellow" : <ore:gemGarnetYellow>,
  "GreenSapphire" : <ore:gemGreenSapphire>,
  "InfusedAir": <ore:gemInfusedAir>,
  "InfussedEarth" : <ore:gemInfusedEarth>,
  "InfusedEntropy" : <ore:gemInfusedEntropy>,
  "InfusedFire": <ore:gemInfusedFire>,
  "InfusedOrder" : <ore:gemInfusedOrder>,
  "InfusedWater" : <ore:gemInfusedWater>,
  "Jasper" : <ore:gemJasper>,
  "Lapis" : <ore:gemkLapis>,
  "Lazurite" : <ore:gemLazurite>,
  "Lignite" : <ore:gemLignite>,
  "Monazite" : <ore:gemMonazite>,
  "NetherStar" : <ore:gemNetherStar>,
  "Niter" : <ore:gemNiter>,
  "Olivine" : <ore:gemOlivine>,
  "Opal" : <ore:gemOpal>,
  "Phosphorus" : <ore:gemPhosphorus>,
  "Quartzite" : <ore:gemQuartzite>,
  "ReinforcedMetal" : <ore:gemReinforcedMetal>,
  "Ruby" : <ore:gemRuby>,
  "Sapphire" : <ore:gemSapphire>,
  "Sodalite" : <ore:gemSodalite>,
  "Tanzanite" : <ore:gemTanzanite>,
  "Topaz" : <ore:gemTopaz>,
  "Vinteum" : <ore:gemVinteum>
} as IIngredient[string];

# Tweaks

/* Fix Issue #403 https://github.com/Beyond-Reality/BeyondRealityModPack/issues/403
 * Diamond block should not pulverize or split without machine
 */

for material, block in blocks {
  for dust in dusts[material].items {
    recipes.removeShapeless(dust * 9, [block]);
  }
  for gem in gems[material].items {
    recipes.removeShapeless(gem * 9, [block]);
  }
}
