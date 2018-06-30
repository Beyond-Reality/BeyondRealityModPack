// ProjectRed.zs Tweaks

# Imports

import minetweaker.item.IItemStack;

# Ingredients

val stoneBasalt = <ore:stoneBasalt>;

# Foreign Items

# This mod Items
val StoneBasalt = <ProjRed|Exploration:projectred.exploration.stone:3>;
val StoneCobbleBasalt = <ProjRed|Exploration:projectred.exploration.stone:2>;
val StoneBrickBasalt = <ProjRed|Exploration:projectred.exploration.stone:4>;

// Oredict registrations
for item in [
	StoneBasalt,
	StoneCobbleBasalt,
	StoneBrickBasalt
	] as IItemStack[] {
	stoneBasalt.add(item);
}

<ore:stoneMarble>.add(<ProjRed|Exploration:projectred.exploration.stone:1>);
