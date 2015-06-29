recipes.remove(<CompactWaterTurbines:lvwaterturbine> * 1);
recipes.remove(<CompactWaterTurbines:mvwaterturbine> * 1);
recipes.remove(<CompactWaterTurbines:hvwaterturbine> * 1);
recipes.remove(<CompactWaterTurbines:evwaterturbine> * 1);

recipes.addShaped(<CompactWaterTurbines:lvwaterturbine> * 1,[[<ore:plateSteel> ,<gregtech:gt.metaitem.01:32610> ,<ore:plateSteel> ],
[<ore:rotorTin>   ,<gregtech:gt.blockmachines:11> ,<ore:rotorTin>],
[<ore:plateSteel>  ,<ore:circuitBasic> ,<ore:plateSteel> ]]);


recipes.addShaped(<CompactWaterTurbines:mvwaterturbine> * 1,[[<CompactWaterTurbines:lvwaterturbine> ,<gregtech:gt.metaitem.01:32611> ,<CompactWaterTurbines:lvwaterturbine> ],
[<ore:rotorBronze> ,<gregtech:gt.blockmachines:12> ,<ore:rotorBronze>],
[<CompactWaterTurbines:lvwaterturbine>,<ore:circuitAdvanced> ,<CompactWaterTurbines:lvwaterturbine> ]]);

recipes.addShaped(<CompactWaterTurbines:hvwaterturbine> * 1,[[<CompactWaterTurbines:mvwaterturbine> ,<gregtech:gt.metaitem.01:32612> ,<CompactWaterTurbines:mvwaterturbine> ],
[<ore:rotorSteel> ,<gregtech:gt.blockmachines:13> ,<ore:rotorSteel>],
[<CompactWaterTurbines:mvwaterturbine>,<ore:circuitElite>,<CompactWaterTurbines:mvwaterturbine> ]]);

recipes.addShaped(<CompactWaterTurbines:evwaterturbine> * 1,[[<CompactWaterTurbines:hvwaterturbine> ,<gregtech:gt.metaitem.01:32613>,<CompactWaterTurbines:hvwaterturbine> ],
[<ore:rotorStainlessSteel> ,<gregtech:gt.blockmachines:14> ,<ore:rotorStainlessSteel> ],
[<CompactWaterTurbines:hvwaterturbine>,<ore:circuitMaster> ,<CompactWaterTurbines:hvwaterturbine> ]]);