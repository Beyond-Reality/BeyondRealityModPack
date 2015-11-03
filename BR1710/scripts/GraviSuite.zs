# GraviSuite.zs Tweaks

# Fix for https://github.com/Beyond-Reality/BeyondRealityModPack/issues/340
//EngineBoost
recipes.remove(<GraviSuite:itemSimpleItem:6>);

//EngineBoost
recipes.addShaped(<GraviSuite:itemSimpleItem:6>, [
[<minecraft:glowstone_dust>, <IC2:itemPartAlloy>, <minecraft:glowstone_dust>],
[<ore:circuitAdvanced>, <IC2:upgradeModule>, <ore:circuitAdvanced>],
[<IC2:itemPartAlloy>, <IC2:reactorVentDiamond:1>, <IC2:itemPartAlloy>]]);
