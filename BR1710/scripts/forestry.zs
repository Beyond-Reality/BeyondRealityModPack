import mods.mfr.AutoSpawner;

AutoSpawner.addBlacklist("forestry.lepidopterology.entities.EntityButterfly");
recipes.remove(<Forestry:stamps> );
recipes.addShaped(<Forestry:stamps>,[[<ore:gemApatite>,<ore:gemApatite>,<ore:gemApatite>],
									[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
									[<Forestry:honeyDrop> ,<Forestry:honeyDrop> ,<Forestry:honeyDrop> ]]);
