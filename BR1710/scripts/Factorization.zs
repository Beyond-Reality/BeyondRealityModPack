import mods.gregtech.ImplosionCompressor;

var tinyPileDarkAshes = <gregtech:gt.metaitem.01:816>;

# Recipe for Diamond Shards
recipes.addShapeless(<factorization:diamond_shard> * 9, [<minecraft:diamond_block>,<minecraft:tnt>]);

ImplosionCompressor.addRecipe([<factorization:diamond_shard> * 18, tinyPileDarkAshes], <minecraft:diamond_block> * 1, 1);

# Caliometric Burner
recipes.remove(<factorization:FzBlock:31>);