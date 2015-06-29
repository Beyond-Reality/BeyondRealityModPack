recipes.remove(<CompactWaterTurbines:lvwaterturbine> * 1);
recipes.remove(<CompactWaterTurbines:mvwaterturbine> * 1);
recipes.remove(<CompactWaterTurbines:hvwaterturbine> * 1);
recipes.remove(<CompactWaterTurbines:evwaterturbine> * 1);

recipes.addShaped(<CompactWaterTurbines:lvwaterturbine> * 1,[[<gregtech:gt.metaitem.01:32610> ,<gregtech:gt.metaitem.01:32610> ,<gregtech:gt.metaitem.01:32610> ],
[<gregtech:gt.metaitem.01:32610> ,<gregtech:gt.blockmachines:11> ,<gregtech:gt.metaitem.01:32610> ],
[<gregtech:gt.metaitem.01:32610> ,<gregtech:gt.metaitem.01:32610> ,<gregtech:gt.metaitem.01:32610> ]]);


recipes.addShaped(<CompactWaterTurbines:mvwaterturbine> * 1,[[<CompactWaterTurbines:lvwaterturbine> ,<CompactWaterTurbines:lvwaterturbine>,<CompactWaterTurbines:lvwaterturbine> ],
[<CompactWaterTurbines:lvwaterturbine> ,<gregtech:gt.blockmachines:12> ,<CompactWaterTurbines:lvwaterturbine>],
[<CompactWaterTurbines:lvwaterturbine>,<CompactWaterTurbines:lvwaterturbine> ,<CompactWaterTurbines:lvwaterturbine> ]]);

recipes.addShaped(<CompactWaterTurbines:hvwaterturbine> * 1,[[<CompactWaterTurbines:mvwaterturbine> ,<CompactWaterTurbines:mvwaterturbine>,<CompactWaterTurbines:mvwaterturbine> ],
[<CompactWaterTurbines:mvwaterturbine> ,<gregtech:gt.blockmachines:13> ,<CompactWaterTurbines:mvwaterturbine>],
[<CompactWaterTurbines:mvwaterturbine>,<CompactWaterTurbines:mvwaterturbine> ,<CompactWaterTurbines:mvwaterturbine> ]]);

recipes.addShaped(<CompactWaterTurbines:evwaterturbine> * 1,[[<CompactWaterTurbines:hvwaterturbine> ,<CompactWaterTurbines:hvwaterturbine>,<CompactWaterTurbines:hvwaterturbine> ],
[<CompactWaterTurbines:hvwaterturbine> ,<gregtech:gt.blockmachines:14> ,<CompactWaterTurbines:hvwaterturbine>],
[<CompactWaterTurbines:hvwaterturbine>,<CompactWaterTurbines:hvwaterturbine> ,<CompactWaterTurbines:hvwaterturbine> ]]);