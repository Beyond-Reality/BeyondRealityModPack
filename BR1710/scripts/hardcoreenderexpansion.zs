import mods.mfr.AutoSpawner;
import mods.ic2.Compressor;

AutoSpawner.addBlacklist("chylex.hee.entity.boss.EntityBossDragon");
AutoSpawner.addBlacklist("chylex.hee.entity.boss.EntityMiniBossEnderEye");
AutoSpawner.addBlacklist("chylex.hee.entity.boss.EntityMiniBossFireFiend");

recipes.remove(<HardcoreEnderExpansion:decomposition_table>);

// Endium Block require compressor
recipes.remove(<HardcoreEnderExpansion:endium_block>);
Compressor.addRecipe(<HardcoreEnderExpansion:endium_block>, <HardcoreEnderExpansion:endium_ingot> * 9);
