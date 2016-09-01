import mods.nei.NEI;

var rod = <ore:stickIron>;
var framework = <JAKJ_RedstoneInMotion:item.JAKJ_RedstoneInMotion_SimpleItemSet:2>;
var cross = <JAKJ_RedstoneInMotion:item.JAKJ_RedstoneInMotion_SimpleItemSet>;
var panel = <JAKJ_RedstoneInMotion:item.JAKJ_RedstoneInMotion_SimpleItemSet:1>;
var redmotor = <JAKJ_RedstoneInMotion:tile.JAKJ_RedstoneInMotion_CarriageDrive:1>;
val carriagedrive = <JAKJ_RedstoneInMotion:tile.JAKJ_RedstoneInMotion_CarriageDrive:0>;
var motor = <gregtech:gt.metaitem.01:32600>;
var redstone = <ore:blockRedstone>;
var steel = <ore:blockIron>;
var plate = <ore:plateIron>;

recipes.remove(cross);
recipes.addShaped(cross, [
  [rod, null, rod],
  [null, rod, null],
  [rod, null, rod]]);
NEI.addEntry(cross);

recipes.remove(panel);
recipes.addShaped(panel, [
  [rod, rod, rod],
  [rod, cross, rod],
  [rod, rod, rod]]);
NEI.addEntry(panel);

recipes.remove(framework);
recipes.addShaped(framework, [
  [panel, null, panel],
  [null, cross, null],
  [panel, null, panel]]);
NEI.addEntry(framework);

recipes.remove(redmotor);
recipes.addShaped(redmotor.withTag({display: {Name: "Carriage Motor or Engine", Lore: ["You make carriage engines","by placing a carriage motor","and toggling stationary mode", "in the GUI."]}}), [
  [redstone, plate, redstone],
  [plate, steel, plate],
  [redstone, motor, redstone]]);
NEI.addEntry(redmotor);
NEI.overrideName(redmotor, "Carriage Motor or Engine");
