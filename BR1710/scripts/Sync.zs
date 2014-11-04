

//treadmill

recipes.remove(<Sync:Sync_BlockPlacer:2>);
recipes.addShaped(<Sync:Sync_BlockPlacer:2>, [[null,null,<StevesCarts:ModuleComponents:13>],
                                                    [<gregtech:gt.metaitem.01:17880>,<gregtech:gt.metaitem.01:17880>,<minecraft:iron_bars>],
                                                    [<gregtech:gt.blockcasings:2>,<IC2:blockElectric:4>,<gregtech:gt.metaitem.02:31019>]]);

// Sync Core													
recipes.remove(<Sync:Sync_ItemPlaceholder>);
recipes.addShaped(<Sync:Sync_ItemPlaceholder>, [[<appliedenergistics2:item.ItemMultiMaterial:9>,<gregtech:gt.metaitem.01:2526>,<appliedenergistics2:item.ItemMultiMaterial:9>],
                                                    [<gregtech:gt.metaitem.01:2526>,<Railcraft:firestone.refined>,<gregtech:gt.metaitem.01:2526>],
              [<appliedenergistics2:item.ItemMultiMaterial:9>,<gregtech:gt.metaitem.01:2526>,<appliedenergistics2:item.ItemMultiMaterial:9>]]);		
											
// Shell Storage

recipes.remove(<Sync:Sync_BlockPlacer:1>);
recipes.addShaped(<Sync:Sync_BlockPlacer:1>, [[<IC2:blockAlloyGlass>,<gregtech:gt.metaitem.01:17804>,<IC2:blockAlloyGlass>],
                                                    [<IC2:blockAlloyGlass>,<Sync:Sync_ItemPlaceholder>,<IC2:blockAlloyGlass>],
              [<IC2:blockAlloyGlass>,<minecraft:heavy_weighted_pressure_plate>,<IC2:blockAlloyGlass>]]);		
			  
// Shell Constructor

recipes.remove(<Sync:Sync_BlockPlacer>);
recipes.addShaped(<Sync:Sync_BlockPlacer>, [[<IC2:blockAlloyGlass>,<gregtech:gt.metaitem.01:17804>,<IC2:blockAlloyGlass>],
                                                    [<IC2:blockAlloyGlass>,<Sync:Sync_ItemPlaceholder>,<IC2:blockAlloyGlass>],
              [<IC2:blockAlloyGlass>,<minecraft:light_weighted_pressure_plate>,<IC2:blockAlloyGlass>]]);				  