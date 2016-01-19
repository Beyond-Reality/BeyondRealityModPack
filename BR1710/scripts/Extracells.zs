// Extracells.zs Tweaks

// Ingredients
val gemCertusQuartz = <ore:gemCertusQuartz>;
val dyeBlue = <ore:dyeBlue>;
val ingotIron = <ore:ingotIron>;
val logicProcessor = <appliedenergistics2:item.ItemMultiMaterial:22>;

// Recipes outputs
val componentFluidStorage1k = <extracells:storage.component:4>;
val fluidAnnihilationPlane = <extracells:part.base:5>;
val fluidFormationPlane = <extracells:part.base:6>;
val fluidStorageBus = <extracells:part.base:2>;

// These devices can duplicate fluids
// See Bug Infinite liquid and hearth Beyond-Reality/BeyondRealityModPack/issues#286

// Fluid Storage Bus
recipes.remove(fluidStorageBus);

// Fluid Annihilation Plane
recipes.remove(fluidAnnihilationPlane);

// Fluid Formation Plane
recipes.remove(fluidFormationPlane);

// Fix recipes to not spend Pure/Charged Quartz when not required

// 1k ME Fluid Storage Component
recipes.remove(componentFluidStorage1k);
recipes.addShaped(componentFluidStorage1k, [
  [dyeBlue, gemCertusQuartz, dyeBlue],
  [gemCertusQuartz, logicProcessor, gemCertusQuartz],
  [dyeBlue, gemCertusQuartz, dyeBlue]
]);
