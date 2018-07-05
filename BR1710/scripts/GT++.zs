# GT++.zs tweaks
import minetweaker.liquid.ILiquidStack;
import mods.gregtech.Centrifuge;

//GT Circuits
val circuitBasic = <gregtech:gt.metaitem.01:32701>;
val circuitAdvanced = <gregtech:gt.metaitem.01:32703>;
val partChip3 = <gregtech:gt.metaitem.01:32715>;
val partWire1 = <gregtech:gt.metaitem.01:32716>;
val partWire2 = <gregtech:gt.metaitem.01:32717>;
val partWire3 = <gregtech:gt.metaitem.01:32718>;
val NanoprocessorMainframe = <gregtech:gt.metaitem.01:32706>;

//GT++ Components
val circuitBasic2 = <miscutils:MU-metaitem.01:32201>;
val circuitAdvanced2 = <miscutils:MU-metaitem.01:32203>;
val partChip3x = <miscutils:MU-metaitem.01:32215>;
val partWire1x = <miscutils:MU-metaitem.01:32216>;
val partWire2x = <miscutils:MU-metaitem.01:32217>;
val partWire3x = <miscutils:MU-metaitem.01:32218>;
val EnergyFlowCircuit = <miscutils:MU-metaitem.01:32206>;

recipes.addShapeless(NanoprocessorMainframe, [EnergyFlowCircuit  ]);


//Shapeless conversion Recipes
recipes.addShapeless(circuitBasic2, [circuitBasic]);
recipes.addShapeless(circuitAdvanced2, [circuitAdvanced]);
recipes.addShapeless(partChip3x, [partChip3]);
recipes.addShapeless(partWire1x, [partWire1]);
recipes.addShapeless(partWire2x, [partWire2]);
recipes.addShapeless(partWire3x, [partWire3]);

// Remove until crash issue fixed
recipes.remove(<miscutils:blockWorkbenchGT>);

//Fuels
mods.gregtech.Fuels.addGasTurbineFuel(<minecraft:bucket>, <PneumaticCraft:lpgBucket>, 250);

// Restore Centrifugation of Compressed Air

// Gregtech Items
val CellNitrogen = <gregtech:gt.metaitem.01:30012>;
val CellOxygen = <gregtech:gt.metaitem.01:30013>;
val CellArgon = <gregtech:gt.metaitem.01:30024>;
val CellNobleGases = <gregtech:gt.metaitem.01:30496>;
val cellAir = <ore:cellAir>;

Centrifuge.addRecipe(
  // IItemStack[] outputs,
  [
    CellNitrogen * 40,
    CellOxygen * 11,
    CellArgon * 1,
    CellNobleGases * 1
  ],
  // ILiquidStack fluidOutput,
  null,

  // IIngredient input1, IIngredient input2,
  cellAir * 53,
  null,

  // ILiquidStack fluidInput,
  null,

  // int[] chances,
  [10000, 10000, 10000, 10000],

  //  int durationTicks, int euPerTick
  1484, 5
);
