import mods.mfr.AutoSpawner;

import minetweaker.item.IItemStack;

AutoSpawner.addBlacklist("mods.natura.entity.NitroCreeper");

var naturaLogs = [<Natura:tree:0>, <Natura:tree:1>, <Natura:tree:2>, <Natura:redwood:1>, <Natura:bloodwood:*>, <Natura:tree:3>, <Natura:Rare Tree:0>, <Natura:Rare Tree:1>, <Natura:Rare Tree:2>, <Natura:Rare Tree:3>, <Natura:willow>, <Natura:Dark Tree>, <Natura:Dark Tree:12>] as IItemStack[];

//Euc, Sak, Gho, Red, Blo, Hop, Map, Sil, Ama, Tig, Wil, Dar, Fus
var naturaPlanks = [<Natura:planks:0>,<Natura:planks:1>,<Natura:planks:2>,<Natura:planks:3>,<Natura:planks:4>,<Natura:planks:5>,<Natura:planks:6>,<Natura:planks:7>,<Natura:planks:8>,<Natura:planks:9>,<Natura:planks:10>,<Natura:planks:11>,<Natura:planks:12>] as IItemStack[];

var naturaSticks = [<Natura:natura.stick:0>, <Natura:natura.stick:1>, <Natura:natura.stick:2>, <Natura:natura.stick:3>, <Natura:natura.stick:4>, <Natura:natura.stick:5>, <Natura:natura.stick:6>, <Natura:natura.stick:7>, <Natura:natura.stick:8>, <Natura:natura.stick:9>, <Natura:natura.stick:10>, <Natura:natura.stick:11>, <Natura:natura.stick:12>] as IItemStack[];

var naturaSlabs = [<Natura:plankSlab1:0>,<Natura:plankSlab1:1>,<Natura:plankSlab1:2>,<Natura:plankSlab1:3>,<Natura:plankSlab1:4>,<Natura:plankSlab1:5>,<Natura:plankSlab1:6>,<Natura:plankSlab1:7>,<Natura:plankSlab2:0>,<Natura:plankSlab2:1>,<Natura:plankSlab2:2>,<Natura:plankSlab2:3>,<Natura:plankSlab2:4>] as IItemStack[];

var oreWood = <ore:oreWood>;

for i,v in naturaPlanks
{
	recipes.remove(v);
	recipes.remove(naturaSticks[i]);
	recipes.remove(naturaSlabs[i]);
}

for i,v in naturaPlanks
{
	//Sawless Recipe for planks
	recipes.addShapeless(v * 2,[naturaLogs[i]]);
	//Saw Recipe for planks
	recipes.addShapeless(v * 4,[<gregtech:gt.metatool.01:10>, naturaLogs[i]]);

	var stick = naturaSticks[i];
	//Begin Block -- This block could be removed if you don't want natura sticks to be craftable, or the recipes could be made shapeless
	//Sawless Recipe for natura sticks
	recipes.addShaped(stick * 2,[[v], [null], [v]]);  //Needs a gap or it will produce vanila sticks
	//Saw Recipe for natura sticks
	recipes.addShaped(stick * 4,[[<gregtech:gt.metatool.01:10>, v, v]]); //Horizontal or it will produce vanila sticks
	//End Block

	var slab = naturaSlabs[i];
	//Slab Recipe -- Requires saw
	recipes.addShapeless(slab * 2,[<gregtech:gt.metatool.01:10>, v]);
	
	recipes.addShapeless(v,[slab,slab]);
}
