var specingot = <RandomThings:ingredient:4>;
var rod = <gregtech:gt.metaitem.01:23341>;
var plate = <GalacticraftCore:item.meteoricIronIngot:1>;
var sword = <RandomThings:spectreSword>;
var helm = <RandomThings:spectreHelmet>;
var chest = <RandomThings:spectreChestplate>;
var legs = <RandomThings:spectreLeggings>;
var boots = <RandomThings:spectreBoots>;
var ecto = <RandomThings:ingredient:3>;
var steel = <ore:steelPlate>;
var green = <gregtech:gt.metaitem.02:29501>;
var blue = <gregtech:gt.metaitem.02:29500>;
var red = <gregtech:gt.metaitem.02:29502>;
var core = <RandomThings:ingredient>;
var trans = <RandomThings:ingredient:5>;
var star = <minecraft:nether_star>;
var craftingToolHardHammer = <ore:craftingToolHardHammer>;
var craftingToolFile = <ore:craftingToolFile>;

recipes.remove(specingot);
recipes.remove(sword);
recipes.remove(helm);
recipes.remove(chest);
recipes.remove(boots);
recipes.remove(legs);
recipes.remove(core);


recipes.addShaped(specingot, [
	[ecto, ecto, ecto],
	[plate, craftingToolHardHammer, plate],
	[null, null, null]]);

recipes.addShaped(sword, [
	[craftingToolHardHammer, specingot, craftingToolFile],
	[ecto, <gregtech:gt.metaitem.02:305>, ecto],
	[null, rod, null]]);

recipes.addShaped(helm, [
	[specingot, specingot, specingot],
	[specingot, craftingToolHardHammer, specingot],
	[null, null, null]]);

recipes.addShaped(chest, [
	[specingot, craftingToolHardHammer, specingot],
	[specingot, specingot, specingot],
	[specingot, specingot, specingot]]);

recipes.addShaped(boots, [
	[null, null, null],
	[specingot, craftingToolHardHammer, specingot],
	[specingot, null, specingot]]);

recipes.addShaped(legs, [
	[specingot, specingot, specingot],
	[specingot, craftingToolHardHammer, specingot],
	[specingot, null, specingot]]);

recipes.addShaped(core, [
	[null, green, null],
	[red, trans, blue],
	[null, star, null]]);
