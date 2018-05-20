# Tweaks for Framez.zs

import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;

# Gregtech Recipes

// Frame Stopper

recipes.remove(<framez:stopper>);
recipes.addShaped(<framez:stopper>, [
  [<ore:plateIron>, null, <ore:plateIron>],
  [null, <framez:metamorphic_stone:0>, null],
  [<ore:plateIron>, null, <ore:plateIron>]
]);

// EU Frames

for frame, core in {
  <framez:motor_eu:0> : <framez:motor_core:1>,
  <framez:motor_eu:1> : <framez:motor_core:2>,
  <framez:motor_eu:2> : <framez:motor_core:3>,
  <framez:motor_eu:3> : <framez:motor_core:4>,
  <framez:motor_eu$rf:0> : <framez:motor_rf:0>,
  <framez:motor_eu$rf:1> : <framez:motor_rf:1>,
  <framez:motor_eu$rf:2> : <framez:motor_rf:2>,
  <framez:motor_eu$rf:3> : <framez:motor_rf:3>
  } as IIngredient[IItemStack] {
  recipes.remove(frame);
  recipes.addShaped(frame, [
    [<ore:plateIron>, <ore:batteryReusableHV>, <ore:plateIron>],
    [<ore:craftingWireGold>, core, <ore:craftingWireGold>],
    [<ore:plateIron>, <gregtech:gt.metaitem.01:32602>, <ore:plateIron>]
  ]);
}

// RF Frames

for frame, core in {
  <framez:motor_rf:0> : <framez:motor_core:1>,
  <framez:motor_rf:1> : <framez:motor_core:2>,
  <framez:motor_rf:2> : <framez:motor_core:3>,
  <framez:motor_rf:3> : <framez:motor_core:4>
  } as IIngredient[IItemStack] {
  recipes.remove(frame);
  recipes.addShaped(frame, [
    [<ore:plateDarkSteel>, <ore:itemVibrantCrystal>, <ore:plateDarkSteel>],
    [<ore:nuggetPulsatingIron>, core, <ore:nuggetPulsatingIron>],
    [<ore:plateDarkSteel>, <ore:ingotEnergeticAlloy>, <ore:plateDarkSteel>]
  ]);
}

// EU-RF Frames

for frame, core in {
  <framez:motor_eu$rf:0> : <framez:motor_eu:0>,
  <framez:motor_eu$rf:1> : <framez:motor_eu:1>,
  <framez:motor_eu$rf:2> : <framez:motor_eu:2>,
  <framez:motor_eu$rf:3> : <framez:motor_eu:3>
  } as IIngredient[IItemStack] {
  recipes.addShaped(frame, [
    [<ore:plateDarkSteel>, <ore:itemVibrantCrystal>, <ore:plateDarkSteel>],
    [<ore:nuggetPulsatingIron>, core, <ore:nuggetPulsatingIron>],
    [<ore:plateDarkSteel>, <ore:ingotEnergeticAlloy>, <ore:plateDarkSteel>]
  ]);
}
