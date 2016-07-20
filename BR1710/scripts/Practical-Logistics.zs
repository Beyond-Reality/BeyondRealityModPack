# Practical-Logistics.zs tweaks

import mods.nei.NEI;

// Ingredients

val craftingLensBlue = <ore:craftingLensBlue>;
val craftingRedstoneTorch = <ore:craftingRedstoneTorch>;
val pearlEnder = <ore:pearlEnder>;
val plateIron = <ore:plateIron>;
val plateRubber = <ore:plateRubber>;
val wireGt01Aluminium = <ore:wireGt01Aluminium>;
val wireGt01RedAlloy = <ore:wireGt01RedAlloy>;

// Foreign Items

val MCClock = <minecraft:clock>;

// This Mod Items

val ChannelSelector = <PracticalLogistics:ChannelSelector>;
val Clock = <PracticalLogistics:Clock>;
val DataCable = <PracticalLogistics:DataCable>;
val DataModifier = <PracticalLogistics:DataModifier>;
val DataReceiver = <PracticalLogistics:DataReceiver>;
val DataEmitter = <PracticalLogistics:DataEmitter>;
val DisplayScreenItem = <PracticalLogistics:DisplayScreenItem>;
val EntityNode = <PracticalLogistics:EntityNode>;
val EnergyReader = <PracticalLogistics:EnergyReader>;
val Hammer = <PracticalLogistics:Hammer>;
val HolographicDisplay = <PracticalLogistics:HolographicDisplay>;
val InfoCreator = <PracticalLogistics:InfoCreator>;
val InfoReader = <PracticalLogistics:InfoReader>;
val InventoryReader = <PracticalLogistics:InventoryReader>;
val ItemRouter = <PracticalLogistics:ItemRouter>;
val LargeDisplayScreen = <PracticalLogistics:LargeDisplayScreen>;
val MultiCable = <PracticalLogistics:MultiCable>;
val Node = <PracticalLogistics:Node>;
val RedstoneSignaller_OFF = <PracticalLogistics:RedstoneSignaller_OFF>;
val Sapphire = <PracticalLogistics:Sapphire>;
val SapphireDust = <PracticalLogistics:SapphireDust>;
val SapphireOre = <PracticalLogistics:SapphireOre>;
val StonePlate = <PracticalLogistics:StonePlate>;
val TransceiverArray = <PracticalLogistics:TransceiverArray>;
val Transceiver = <PracticalLogistics:Transceiver>;

# Teaks

// Remove/Hide unused
NEI.hide(Hammer);
recipes.remove(Hammer);
NEI.hide(SapphireOre);
NEI.hide(Sapphire);
NEI.hide(SapphireDust);
NEI.hide(StonePlate);

// Replace Sapphire with raw Aluminium or Items

recipes.remove(DataCable * 16);
recipes.addShaped(DataCable * 16, [
  [plateRubber, plateRubber, plateRubber],
  [wireGt01Aluminium, wireGt01Aluminium, wireGt01Aluminium],
  [plateRubber, plateRubber, plateRubber]
]);

recipes.remove(MultiCable * 6);
recipes.addShapeless(MultiCable * 6, [
  plateRubber, DataCable, DataCable,
  plateRubber, DataCable, DataCable,
  plateRubber, DataCable, DataCable]);

recipes.remove(Node);
recipes.addShaped(Node, [
  [null, DataCable, null],
  [plateRubber, wireGt01Aluminium, plateRubber]
]);

recipes.remove(EntityNode);
recipes.addShaped(EntityNode, [
  [plateRubber, craftingLensBlue],
  [DataCable]
]);

recipes.remove(InfoReader);
recipes.addShaped(InfoReader, [
  [plateRubber, plateIron, plateRubber],
  [wireGt01RedAlloy, DataCable, wireGt01Aluminium],
  [plateRubber, plateIron, plateRubber]
]);

recipes.remove(EnergyReader);
recipes.addShaped(EnergyReader, [
  [InfoReader, craftingLensBlue]
]);

recipes.remove(DataReceiver);
recipes.addShaped(DataReceiver, [
  [plateRubber, wireGt01RedAlloy, plateRubber],
  [wireGt01RedAlloy, InfoReader, wireGt01RedAlloy],
  [plateRubber, plateRubber, plateRubber]
]);

recipes.remove(DataEmitter);
recipes.addShaped(DataEmitter, [
  [plateRubber, wireGt01RedAlloy, plateRubber],
  [wireGt01RedAlloy, pearlEnder, wireGt01RedAlloy],
  [plateRubber, plateRubber, plateRubber]
]);

recipes.remove(RedstoneSignaller_OFF);
recipes.addShaped(RedstoneSignaller_OFF, [
  [plateRubber],
  [DataCable, craftingRedstoneTorch],
  [plateRubber, plateRubber, plateRubber]
]);

recipes.remove(Clock);
recipes.addShaped(Clock, [
  [wireGt01RedAlloy, MCClock, wireGt01RedAlloy],
  [plateRubber, plateRubber, plateRubber]
]);

recipes.remove(DataModifier);
recipes.addShaped(DataModifier, [
  [wireGt01Aluminium, DataCable, wireGt01Aluminium],
  [plateRubber, wireGt01Aluminium, DataCable],
  [wireGt01Aluminium, DataCable, wireGt01Aluminium]
]);

recipes.remove(InfoCreator);
recipes.addShaped(InfoCreator, [
  [wireGt01Aluminium, plateRubber, wireGt01Aluminium],
  [plateRubber, DataCable, wireGt01Aluminium],
  [wireGt01Aluminium, plateRubber, wireGt01Aluminium]
]);

recipes.remove(ChannelSelector);
recipes.addShaped(ChannelSelector, [
  [MultiCable, wireGt01Aluminium, MultiCable],
  [plateRubber, MultiCable, wireGt01Aluminium],
  [MultiCable, wireGt01Aluminium, MultiCable]
]);

recipes.remove(TransceiverArray);
recipes.addShaped(TransceiverArray, [
  [plateRubber, plateRubber, plateRubber],
  [DataReceiver, MultiCable, DataEmitter]
]);

recipes.remove(HolographicDisplay);
recipes.addShaped(HolographicDisplay, [
  [plateRubber, DisplayScreenItem, plateRubber],
  [null, DataCable]
]);

recipes.remove(LargeDisplayScreen);
recipes.addShaped(LargeDisplayScreen, [
  [plateRubber, wireGt01Aluminium],
  [DisplayScreenItem]
]);

recipes.remove(ItemRouter);
recipes.addShaped(ItemRouter, [
  [craftingLensBlue, InventoryReader, craftingLensBlue],
  [InventoryReader, DataModifier, InventoryReader],
  [craftingLensBlue, InventoryReader, craftingLensBlue]
]);

recipes.remove(DisplayScreenItem);
recipes.addShaped(DisplayScreenItem, [
  [plateRubber, wireGt01Aluminium],
  [DataCable]
]);

recipes.remove(Transceiver);
recipes.addShaped(Transceiver, [
  [wireGt01Aluminium, plateRubber, wireGt01RedAlloy],
  [DataReceiver, pearlEnder, DataEmitter],
  [wireGt01Aluminium, plateRubber, wireGt01RedAlloy]
]);
