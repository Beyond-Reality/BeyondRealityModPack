import mods.gregtech.Assembler;
import mods.gregtech.Centrifuge;
import mods.ic2.Macerator;

import minetweaker.data.IData;
import minetweaker.item.IItemStack;

var dustDacite = <gregtech:gt.metaitem.01:2859>;
var dustBiotite = <gregtech:gt.metaitem.01:2848>;
var dustRhyolite = <gregtech:gt.metaitem.01:2875>;
var dustSiliconDioxide = <gregtech:gt.metaitem.01:2837>;


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

var machineCasing = <gregtech:gt.blockcasings2:11>;
var plateSteel = <ore:plateSteel>;
var boltIron = <ore:boltIron>;

recipes.addShaped(machineCasing * 4, [[boltIron, plateSteel, boltIron],
                                      [plateSteel, <ore:craftingToolWrench>.transformDamage() ,plateSteel],
                                      [boltIron, plateSteel, boltIron]]);

recipes.addShaped(<gregtech:gt.metaitem.01:32764>, [[<gregtech:gt.metaitem.01:17880>,<gregtech:gt.metaitem.01:17880>,<gregtech:gt.metaitem.01:17880>],
																		[<IC2:itemHarz>,<gregtech:gt.metaitem.03:880>,<IC2:itemHarz>],
				[<IC2:itemPartCarbonMesh>,<IC2:itemPartCarbonMesh>,<IC2:itemPartCarbonMesh>]]);

//Shutter Recipe Fix
var plateIron = <Railcraft:part.plate>;
var plateWroughtIron = <gregtech:gt.metaitem.01:17304>;
var plateAluminium = <gregtech:gt.metaitem.01:17019>;
var shutterModule = <gregtech:gt.metaitem.01:32749>;
Assembler.addRecipe(shutterModule * 2, plateIron * 2, <minecraft:iron_door> * 1, 800, 16);
Assembler.addRecipe(shutterModule * 2, plateAluminium * 2, <minecraft:iron_door> * 1, 800, 16);
Assembler.addRecipe(shutterModule * 2, plateWroughtIron * 2, <minecraft:iron_door> * 1, 800, 16);

// Add Mars Tungstate Ore to Oredict
val tungstate = <ore:oreTungstate>;
tungstate.add(<beyondrealitycore:customBlock_23>);
