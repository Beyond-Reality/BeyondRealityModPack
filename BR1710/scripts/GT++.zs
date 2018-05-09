# GT++.zs tweaks

//GT Circuits
val circuitBasic = <gregtech:gt.metaitem.01:32701>;
val circuitAdvanced = <gregtech:gt.metaitem.01:32703>;
val partChip3 = <gregtech:gt.metaitem.01:32715>;
val partWire1 = <gregtech:gt.metaitem.01:32716>;
val partWire2 = <gregtech:gt.metaitem.01:32717>;
val partWire3 = <gregtech:gt.metaitem.01:32718>;

//GT++ Components
val circuitBasic2 = <miscutils:MU-metaitem.01:32201>;
val circuitAdvanced2 = <miscutils:MU-metaitem.01:32203>;
val partChip3x = <miscutils:MU-metaitem.01:32215>;
val partWire1x = <miscutils:MU-metaitem.01:32216>;
val partWire2x = <miscutils:MU-metaitem.01:32217>;
val partWire3x = <miscutils:MU-metaitem.01:32218>;


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
