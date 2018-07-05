### VERSION 2.5.1-r1

#### Mod updates:

- `thaumicenergistics-1.1.3.0.jar` [:information_source:](https://minecraft.curseforge.com/projects/thaumic-energistics/files/2563527)  
Rewrote how item extraction is performed for the arcane terminal to add further protection for duping.
- `GT-PlusPlus-1.7.1.jar` [:information_source:](https://minecraft.curseforge.com/projects/gregtech-gt-gtplusplus/files/2566787)

```TXT
^ Version bump to v1.7.1.
^ Updated Recommended.txt to v1.7.1.
$ Fixed not all Multiblock recipes generating. There's < 10 missing per machine. Adding some logging to fine tooth which ones break and why.  
- Removed Gradle files.
+ Added Discord to Git README.md.
% Logging enabled for Large Multiblock recipe generation.
+ Added support for IC2C. (Support means that the game will load if this mod exists.. maybe? Should fix #287, I guess.)
+ Added tooltips to turbines if the animated textures are on, if user holds shift full tooltip will be shown.
- Removed some Thaumcraft logging.
% More changes to fix NEI handler for Multiblocks.
% Moved Tooltip handling for a few things from the EIO handler to a generic handler.
$ Fixed %'s not showing (third time lucky) on NEI pages.
% Tweaked Trinium again in GTNH.
$ Tried to fix console spam for invalid tooltip handling.
$ Fixed NEI handler not showing % chances for recipes. (maybe?)
$ Fixed Trinium not working correctly in GTNH.
$ Fixed invalid cape lookups.
% Tweaked recipe for Max tier Redox cells.
% Tweaked name of Control Circuit.
```

#### Mod additions

- `roguelike-1.7.10-1.5.0b.jar` [:information_source:](https://github.com/Greymerk/minecraft-roguelike)

#### Config changes:

##### BeyondRealityCore

- Portals and inter-dimensional transportation devices are now allowed on Galacticraft Planets.
- Default servers list cleaned.

##### GTplusplus

- Custom circuits disabled.
- Old Nitro-Diesel recipe patch disabled.
- Old Gregtech Circuits recipes patches disabled.

##### GregTech

- Old Chemical recipes disabled.
- Cleanroom enabled.
- Magneticraft support disabled.
- Low gravity processing enabled.
- Vanilla ores re-enabled.
