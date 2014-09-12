# Tinkers Construct Minetweaker Changes

recipes.remove(<TConstruct:ToolForgeBlock:*>);
recipes.addShaped(<TConstruct:ToolForgeBlock:5>, [[<TConstruct:Smeltery:2>,<TConstruct:Smeltery:2>,<TConstruct:Smeltery:2>],
                                                [<TConstruct:MetalBlock:1>,<TConstruct:ToolStationBlock:0>,<TConstruct:MetalBlock:1>],
                                                [<TConstruct:MetalBlock:1>,null,<TConstruct:MetalBlock:1>]]);
recipes.remove(<TConstruct:CraftingSlab:5>);
recipes.addShaped(<TConstruct:CraftingSlab:5>, [[<TConstruct:Smeltery:2>,<TConstruct:Smeltery:2>,<TConstruct:Smeltery:2>],
                                                [<TConstruct:MetalBlock:1>,<TConstruct:CraftingSlab:1>,<TConstruct:MetalBlock:1>],
                                                [<TConstruct:MetalBlock:1>,null,<TConstruct:MetalBlock:1>]]);
                                                

val alu = <ore:nuggetAluminium>;
alu.remove(<TConstruct:materials:22>);
alu.remove(<TConstruct:oreBerries:4>);
                                                
# Ore Berries and Nuggets
recipes.remove(<gregtech:gt.metaitem.01:11019>);
recipes.addShaped(<TConstruct:materials:11>, [[<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>],
                                                        [<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>],
                                                        [<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>]]);

# Remove Using TiCo Aluminum for Gregtech
recipes.removeShaped(<gregtech:gt.metaitem.01:17019>);
recipes.removeShaped(<gregtech:gt.metaitem.01:23019>);
