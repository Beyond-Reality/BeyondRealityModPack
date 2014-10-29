import mods.botania.ManaInfusion;

val steel = <ore:ingotSteel>;
val mana = <ore:ingotManaSteel>; 
val manasteel = <Botania:manaResource>; 
val blocksteel = <ore:blockSteel>;

// Botania Nerf
mods.botania.ManaInfusion.removeRecipe(<Botania:manaResource>);
mods.botania.ManaInfusion.addInfusion(<Botania:manaResource>, steel, 1000);

mods.botania.ManaInfusion.removeRecipe(<Botania:storage>);
mods.botania.ManaInfusion.addInfusion(<Botania:storage>, blocksteel, 5000);
