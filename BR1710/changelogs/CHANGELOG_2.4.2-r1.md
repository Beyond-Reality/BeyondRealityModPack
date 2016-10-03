### VERSION 2.4.2-r1

#### Updated Mods:

* `Carpenter's Blocks v3.3.8.1 - MC 1.7.10.jar` [:information_source:](https://minecraft.curseforge.com/projects/carpenters-blocks/files/2333195)
* `forestry_1.7.10-4.2.16.64.jar` [:information_source:](https://minecraft.curseforge.com/projects/forestry/files/2333823)
* `gregtech-5.09.24` [:information_source:](http://forum.industrial-craft.net/index.php?page=Thread&threadID=11488)

#### Config Changes:

* Moved ModularPowersuit recipes from MT Script to native JSON config to reduce time syncing client during connexion to a server
* Reduced Gregtech Dungeon Loots to counter-weight the high number of dungeons in BeyondReality.

```YAML
B:IncreaseDungeonLoot=false
```

* Added Redstone and GLowstone plates compression recipes into blocks because there is no gems or ingots of it, and dusts are compressed to plates.

#### Important Changes:

##### Gregtech 5.09.24

Gregtech got a whole refactor of its internal material system:
- Faster load time,
- Allow adding more materials.
- Now will only generate material items if actually used by some recipe.

Machine pollution is real. Watch out for boilers, burning-boxes, multi-block mufflers.
- Lower-tier/tech produces more pollution than higher-tier.
- Pollution dissipate to neighbour chunks
- Pollution produce various effects whil reaching higher levels (see config spoiler below).
- Use a GT Hand-held Scanner to display pollution levels.

```YAML
pollution {
    B:EnablePollution=true
    I:PoisonLimit=750000
    I:SmogLimit=500000
    I:SourRainLimit=2000000
    I:VegetationLimit=1000000
}
```
- Disabled IC2 cables

##### WorldGen

Vanilla ores has been re-enabled and Gregtech Worldgen balanced to account for it.
- GT Small ores for Iron, Gold, Lapis, Redstone are now disabled. GT Small Ores were meant to supply early game vanilla materials.
- GT NetherQuartz veins are entirely disabled ass Vanilla NetherQuartz now generate into the Nether.
- Vanilla NetherQuartz has been added to Pigmens anger.

Gregtech Ores of vanilla materials could not be used by some features like a Stable Sigil Ritual.
Gregtech NetherQuartz is inappropriate for most of AppliedEnergistics and other mods crafting unless using lengthy process.
It is also not appropriate as a decorative material.

#### Removed items/blocks:

```yaml
```
