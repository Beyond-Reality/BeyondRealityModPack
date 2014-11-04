

val steelplate = <ore:plateSteel>; 
val steel = <ore:ingotSteel>;
var rod = <gregtech:gt.metaitem.01:23032>;
val basic = <EnderIO:itemBasicCapacitor>;
val bars = <minecraft:iron_bars>;
val ring = <ore:ringIron>;




recipes.remove(<EnderIO:itemMachinePart:1>);
recipes.addShaped(<EnderIO:itemMachinePart:1>, [[rod, steel, rod],
                                                    [steel, ring, steel],
                                                    [rod, steel, rod]]);
			
recipes.remove(<EnderIO:itemMachinePart>);
recipes.addShaped(<EnderIO:itemMachinePart>, [[bars, steelplate, bars],
                                                    [steelplate, basic, steelplate],
                                                    [bars, steelplate, bars]]);			