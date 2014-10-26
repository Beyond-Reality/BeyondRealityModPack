import mods.botania.ManaInfusion;

val steel = <ore:ingotSteel>;
val mana = <ore:ingotManaSteel>; 
val manasteel = <Botania:manaResource>; 

// Botania Nerf
mods.botania.ManaInfusion.removeRecipe(<Botania:manaResource>);
mods.botania.ManaInfusion.addInfusion(<Botania:manaResource>, steel, 1000);
