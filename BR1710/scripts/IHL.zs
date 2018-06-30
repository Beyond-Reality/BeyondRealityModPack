# IHL.zs IHL Tools And Machines tweaks

import mods.ic2.Macerator;


val salt = <ihl:item.ihlSimpleItem:91>;
<ore:foodSalt>.add(salt);

// Fix macerating bricks
val BrickDust = <ihl:item.ihlSimpleItem:28>;
val Brick = <minecraft:brick>;
val DustSmalBrick = <gregtech:gt.metaitem.01:1625>;
<ore:dustBrick>.remove(BrickDust);
Macerator.addRecipe(<minecraft:brick>, DustSmalBrick);



