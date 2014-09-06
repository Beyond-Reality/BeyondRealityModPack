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
alu.remove(<Mariculture:materials:34>);
                                                
# Ore Berries and Nuggets
recipes.remove(<gregtech:gt.metaitem.01:11019>);
recipes.remove(<Mariculture:materials:0>);
recipes.addShaped(<TConstruct:materials:11>, [[<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>],
                                                        [<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>],
                                                        [<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>,<TConstruct:oreBerries:4>]]);
