# Compact Solars Tweaks
import mods.nei.NEI;

NEI.addEntry(<CompactSolars:CompactSolarBlock>.withTag({display: {Lore: ["Beyond Reality,", "Balanced"]}}));
recipes.remove(<CompactSolars:CompactSolarBlock>);
recipes.addShaped(<CompactSolars:CompactSolarBlock>, [[<gregtech:gt.metaitem.01:32750>,<gregtech:gt.metaitem.01:32750>,<gregtech:gt.metaitem.01:32750>],
                                                    [<gregtech:gt.metaitem.01:32750>,<IC2:blockElectric:3>,<gregtech:gt.metaitem.01:32750>],
                                                    [<gregtech:gt.metaitem.01:32750>,<gregtech:gt.metaitem.01:32750>,<gregtech:gt.metaitem.01:32750>]]);