import mods.gregtech.Assembler;
import mods.buildcraft.Refinery;
# Buildcraft Minetweaker Changes

var gear = <gregtech:gt.metaitem.02:31500>;
var arm = <gregtech:gt.metaitem.01:32650>;



#BC Quarry
recipes.remove(<BuildCraft|Builders:machineBlock>);
Assembler.addRecipe(<BuildCraft|Builders:machineBlock>, gear *4, <gregtech:gt.metaitem.01:32650>, 1600, 2);

# BC Pump
recipes.remove(<BuildCraft|Factory:miningWellBlock>);
recipes.addShaped(<BuildCraft|Factory:miningWellBlock>, [[<ore:plateSteel>,<ore:blockGlass>,<ore:plateSteel>],
                                                        [<BuildCraft|Silicon:redstoneChipset>,<minecraft:iron_pickaxe>,<BuildCraft|Silicon:redstoneChipset>],
                                                        [<ore:plateSteel>,<gregtech:gt.metaitem.02:31057>,<ore:plateSteel>]]);

#Refinery.addRecipe(<liquid:fuel>*2, 120, 2, <liquid:oilgc>,<liquid:oilgc>);

// Combustion Engine
recipes.remove(<BuildCraft|Core:engineBlock:2>);
recipes.addShaped(<BuildCraft|Core:engineBlock:2>,[
  [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
  [<ore:craftingToolHardHammer>,<ore:craftingTank>,<ore:craftingToolWrench>],
  [<ore:gearIron>,<ore:craftingPiston>,<ore:gearIron>]
]);

// Zone Planner
recipes.remove(<BuildCraft|Robotics:zonePlan:0>);
recipes.addShaped(<BuildCraft|Robotics:zonePlan:0>, [
  [<ore:ingotIron>,<ore:dustRedstone>,<ore:ingotIron>],
  [<ore:gearGold>,<ore:paperMap>,<ore:gearGold>],
  [<ore:ingotIron>,<ore:gearSteel>,<ore:ingotIron>]
]);

// Assembly Table
recipes.remove(<BuildCraft|Silicon:laserTableBlock:0>);
recipes.addShaped(<BuildCraft|Silicon:laserTableBlock:0>, [
  [<ore:stoneObsidian>,<ore:gemDiamond>,<ore:stoneObsidian>],
  [<ore:stoneObsidian>,<ore:dustRedstone>,<ore:stoneObsidian>],
  [<ore:stoneObsidian>,<ore:gearSteel>,<ore:stoneObsidian>]
]);

// Integration Table
recipes.remove(<BuildCraft|Silicon:laserTableBlock:2>);
recipes.addShaped(<BuildCraft|Silicon:laserTableBlock:2>, [
  [<ore:stoneObsidian>,<ore:ingotGold>,<ore:stoneObsidian>],
  [<ore:stoneObsidian>,<ore:chipsetRed>,<ore:stoneObsidian>],
  [<ore:stoneObsidian>,<ore:gearSteel>,<ore:stoneObsidian>]
]);

// Programming Table
recipes.remove(<BuildCraft|Silicon:laserTableBlock:4>);
recipes.addShaped(<BuildCraft|Silicon:laserTableBlock:4>, [
  [<ore:stoneObsidian>,<ore:gemEmerald>,<ore:stoneObsidian>],
  [<ore:stoneObsidian>,<ore:chipsetRed>,<ore:stoneObsidian>],
  [<ore:stoneObsidian>,<ore:gearSteel>,<ore:stoneObsidian>]
]);

// Builder
recipes.remove(<BuildCraft|Builders:builderBlock:0>);
recipes.addShaped(<BuildCraft|Builders:builderBlock:0>, [
  [<ore:dyeBlack>,<BuildCraft|Core:markerBlock:0>,<ore:dyeBlack>],
  [<ore:dyeYellow>,<ore:craftingWorkBench>,<ore:dyeYellow>],
  [<ore:gearSteel>,<ore:craftingChest>,<ore:gearSteel>]
]);

// Architect Table
recipes.remove(<BuildCraft|Builders:architectBlock:0>);
recipes.addShaped(<BuildCraft|Builders:architectBlock:0>, [
  [<ore:dyeBlack>,<BuildCraft|Core:markerBlock:0>,<ore:dyeBlack>],
  [<ore:dyeYellow>,<ore:craftingWorkBench>,<ore:dyeYellow>],
  [<ore:gearSteel>,<ore:paperBlueprint>,<ore:gearSteel>]
]);

// Refinery
recipes.remove(<BuildCraft|Factory:refineryBlock:0>);
recipes.addShaped(<BuildCraft|Factory:refineryBlock:0>, [
  [<ore:craftingRedstoneTorch>,<ore:craftingTank>,<ore:craftingRedstoneTorch>],
  [<ore:craftingTank>,<ore:gearStainleSteel>,<ore:craftingTank>]
]);
