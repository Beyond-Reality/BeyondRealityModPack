# Vanilla / Misc Minetweaker Changes

# Remove ability to smelt iron nuggets into steel
furnace.remove(<Railcraft:nugget:1>, <ore:nuggetAnyIron>);

# chisel
recipes.addShapeless(<chisel:chisel>, [<ore:stickWood>,<ore:ingotAnyIron>]);

# Red Alloy Wire
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire>);
recipes.addShaped(<ProjRed|Transmission:projectred.transmission.wire> * 12, [[null,<ore:ingotRedAlloy>,null],
																		[null,<ore:ingotRedAlloy>,null],
																		[null,<ore:ingotRedAlloy>,null]]);

recipes.removeShaped(<minecraft:wooden_slab>);
recipes.addShaped(<minecraft:wooden_slab> * 2, [
	[<ore:toolSaw>, <minecraft:planks>, null],
	[null, null, null],
	[null, null, null]]);

//Gold Exploit
recipes.remove(<minecraft:speckled_melon>);
recipes.addShaped(<minecraft:speckled_melon>*1,
	[[<ore:nuggetGold>,<ore:nuggetGold>,<ore:nuggetGold>],[
	<ore:nuggetGold>,<minecraft:melon>,<ore:nuggetGold>],
	[<ore:nuggetGold>,<ore:nuggetGold>,<ore:nuggetGold>],]);

recipes.remove(<malisisdoors:item.curtain_purple>);
recipes.addShaped(<malisisdoors:item.curtain_purple> * 1,[[<ore:blockWoolPurple>,<ore:woodStick>,<ore:blockWoolPurple>],
	[<ore:blockWoolPurple>,null,<ore:blockWoolPurple>],
	[<ore:blockWoolPurple>,null,<ore:blockWoolPurple>]]);

recipes.remove(<malisisdoors:item.curtain_yellow>);
recipes.addShaped(<malisisdoors:item.curtain_yellow> * 1,[[<ore:blockWoolYellow>,<ore:woodStick>,<ore:blockWoolYellow>],
	[<ore:blockWoolYellow>,null,<ore:blockWoolYellow>],
	[<ore:blockWoolYellow>,null,<ore:blockWoolYellow>]]);

recipes.remove(<malisisdoors:item.curtain_magenta>);
recipes.addShaped(<malisisdoors:item.curtain_magenta> * 1,[[<ore:blockWoolMagenta>,<ore:woodStick>,<ore:blockWoolMagenta>],
	[<ore:blockWoolMagenta>,null,<ore:blockWoolMagenta>],
	[<ore:blockWoolMagenta>,null,<ore:blockWoolMagenta>]]);

recipes.remove(<malisisdoors:item.curtain_pink>);
recipes.addShaped(<malisisdoors:item.curtain_pink> * 1,[[<ore:blockWoolPink>,<ore:woodStick>,<ore:blockWoolPink>],
	[<ore:blockWoolPink>,null,<ore:blockWoolPink>],
	[<ore:blockWoolPink>,null,<ore:blockWoolPink>]]);

recipes.remove(<malisisdoors:item.curtain_white>);
recipes.addShaped(<malisisdoors:item.curtain_white> * 1,[[<ore:blockWoolWhite>,<ore:woodStick>,<ore:blockWoolWhite>],
	[<ore:blockWoolWhite>,null,<ore:blockWoolWhite>],
	[<ore:blockWoolWhite>,null,<ore:blockWoolWhite>]]);

recipes.remove(<malisisdoors:item.curtain_blue>);
recipes.addShaped(<malisisdoors:item.curtain_blue> * 1,[[<ore:blockWoolBlue>,<ore:woodStick>,<ore:blockWoolBlue>],
	[<ore:blockWoolBlue>,null,<ore:blockWoolBlue>],
	[<ore:blockWoolBlue>,null,<ore:blockWoolBlue>]]);

recipes.remove(<malisisdoors:item.curtain_gray>);
recipes.addShaped(<malisisdoors:item.curtain_gray> * 1,[[<ore:blockWoolGray>,<ore:woodStick>,<ore:blockWoolGray>],
	[<ore:blockWoolGray>,null,<ore:blockWoolGray>],
	[<ore:blockWoolGray>,null,<ore:blockWoolGray>]]);

recipes.remove(<malisisdoors:item.curtain_cyan>);
recipes.addShaped(<malisisdoors:item.curtain_cyan> * 1,[[<ore:blockWoolCyan>,<ore:woodStick>,<ore:blockWoolCyan>],
	[<ore:blockWoolCyan>,null,<ore:blockWoolCyan>],
	[<ore:blockWoolCyan>,null,<ore:blockWoolCyan>]]);

recipes.remove(<malisisdoors:item.curtain_red>);
recipes.addShaped(<malisisdoors:item.curtain_red> * 1,[[<ore:blockWoolRed>,<ore:woodStick>,<ore:blockWoolRed>],
	[<ore:blockWoolRed>,null,<ore:blockWoolRed>],
	[<ore:blockWoolRed>,null,<ore:blockWoolRed>]]);

recipes.remove(<malisisdoors:item.curtain_brown>);
recipes.addShaped(<malisisdoors:item.curtain_brown> * 1,[[<ore:blockWoolBrown>,<ore:woodStick>,<ore:blockWoolBrown>],
	[<ore:blockWoolBrown>,null,<ore:blockWoolBrown>],
	[<ore:blockWoolBrown>,null,<ore:blockWoolBrown>]]);

recipes.remove(<malisisdoors:item.curtain_lime>);
recipes.addShaped(<malisisdoors:item.curtain_lime> * 1,[[<ore:blockWoolLime>,<ore:woodStick>,<ore:blockWoolLime>],
	[<ore:blockWoolLime>,null,<ore:blockWoolLime>],
	[<ore:blockWoolLime>,null,<ore:blockWoolLime>]]);

recipes.remove(<malisisdoors:item.curtain_orange>);
recipes.addShaped(<malisisdoors:item.curtain_orange> * 1,[[<ore:blockWoolOrange>,<ore:woodStick>,<ore:blockWoolOrange>],
	[<ore:blockWoolOrange>,null,<ore:blockWoolOrange>],
	[<ore:blockWoolOrange>,null,<ore:blockWoolOrange>]]);

recipes.remove(<malisisdoors:item.curtain_silver>);
recipes.addShaped(<malisisdoors:item.curtain_silver> * 1,[[<ore:blockWoolLightGray>,<ore:woodStick>,<ore:blockWoolLightGray>],
	[<ore:blockWoolLightGray>,null,<ore:blockWoolLightGray>],
	[<ore:blockWoolLightGray>,null,<ore:blockWoolLightGray>]]);

recipes.remove(<malisisdoors:item.curtain_green>);
recipes.addShaped(<malisisdoors:item.curtain_green> * 1,[[<ore:blockWoolGreen>,<ore:woodStick>,<ore:blockWoolGreen>],
	[<ore:blockWoolGreen>,null,<ore:blockWoolGreen>],
	[<ore:blockWoolGreen>,null,<ore:blockWoolGreen>]]);

recipes.remove(<malisisdoors:item.curtain_light_blue>);
recipes.addShaped(<malisisdoors:item.curtain_light_blue> * 1,[[<ore:blockWoolLightBlue>,<ore:woodStick>,<ore:blockWoolLightBlue>],
	[<ore:blockWoolLightBlue>,null,<ore:blockWoolLightBlue>],
	[<ore:blockWoolLightBlue>,null,<ore:blockWoolLightBlue>]]);

recipes.remove(<malisisdoors:item.curtain_black>);
recipes.addShaped(<malisisdoors:item.curtain_black> * 1,[[<ore:blockWoolBlack>,<ore:woodStick>,<ore:blockWoolBlack>],
	[<ore:blockWoolBlack>,null,<ore:blockWoolBlack>],
	[<ore:blockWoolBlack>,null,<ore:blockWoolBlack>]]);

