# IC2NuclearControl.zs tweaks

// Ingredients
val craftingWireCopper = <ore:craftingWireCopper>;
val craftingWireTin = <ore:craftingWireTin>;
val circuitAdvanced = <ore:circuitAdvanced>;
val circuitBasic = <ore:circuitBasic>;
val plateAlloyCarbon = <ore:plateAlloyCarbon>;
val plateIron = <ore:plateIron>;
val plateLead = <ore:plateLead>;
val platePaper = <ore:platePaper>;
val wireGt01Gold = <ore:wireGt01Gold>;

// Foreign Items
val CellCoolant10k = <IC2:reactorCoolantSimple:1>.anyDamage();
val Clock = <minecraft:clock>;
val FrequencyTransmitter = <IC2:itemFreq>;
val MVTransformer = <IC2:blockElectric:4>;

// Internal Items
val AverageCounter = <IC2NuclearControl:blockNuclearControlMain:7>;
val EnergyCounter = <IC2NuclearControl:blockNuclearControlMain:6>;
val InformationPanelExtender = <IC2NuclearControl:blockNuclearControlMain:5>;
val PortableInformationPanel = <IC2NuclearControl:remoteMonitor:0>;
val RangeUpgrade = <IC2NuclearControl:ItemUpgrade:0>;
val TextCard = <IC2NuclearControl:ItemTextCard:0>;
val TimeCard = <IC2NuclearControl:ItemTimeCard:0>;

// Tweaks

recipes.addShaped(EnergyCounter, [
  [plateIron, circuitAdvanced, plateIron],
  [wireGt01Gold, MVTransformer, wireGt01Gold]
]);

recipes.addShaped(AverageCounter, [
  [plateLead, circuitAdvanced, plateLead],
  [wireGt01Gold, MVTransformer, wireGt01Gold]
]);

recipes.addShaped(TimeCard, [
  [null, Clock, null],
  [platePaper, craftingWireTin, platePaper],
  [null, Clock, null]
]);

recipes.addShaped(RangeUpgrade, [
  [CellCoolant10k, CellCoolant10k, CellCoolant10k],
  [craftingWireCopper, FrequencyTransmitter, craftingWireCopper]
]);

recipes.addShaped(TextCard, [
  [null, circuitBasic, null],
  [platePaper, craftingWireTin, platePaper],
  [null, circuitBasic, null]
]);

recipes.addShaped(PortableInformationPanel, [
  [craftingWireTin],
  [FrequencyTransmitter, InformationPanelExtender, FrequencyTransmitter],
  [RangeUpgrade, plateAlloyCarbon, plateAlloyCarbon]
]);
