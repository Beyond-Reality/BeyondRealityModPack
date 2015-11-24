### VERSION 2.3.7b Hotfix

#### Added:

Mods | Description
-----|-------------
 `HelpFixer-1.0.7.jar` | [Fixes the help command from mod derpyness](http://minecraft.curseforge.com/projects/helpfixer#About)

#### Updated:

Mods | Changes / Notes
-----|----------------
 `appliedenergistics2-rv3-alpha-10.jar` | [Changelogs](http://ae-mod.info/#rv3_alpha)
 `Botania r1.7-234.jar` | [Changelogs](http://botaniamod.net/changelog.php#r1.7-234)
 `EnderIO-1.7.10-2.3.0.420_beta.jar` | [:new: OpenComputers Conduits](http://minecraft.curseforge.com/projects/ender-io/files/2266976#Changelog)
 `EnderCore-1.7.10-0.2.0.30_beta.jar` | [Changelogs](http://minecraft.curseforge.com/projects/endercore/files/2263881#Changelog)
 `forge-1.7.10-10.13.4.1566-1.7.10-universal.jar` | [:new: Forge Version ](http://files.minecraftforge.net/maven/net/minecraftforge/forge/1.7.10-10.13.4.1566-1.7.10/forge-1.7.10-10.13.4.1566-1.7.10-changelog.txt)
 `forestry_1.7.10-4.2.1.849-unstable.jar` | [:new: Support for InventoryTweaks. Use itemDamage for wood items instead of NBT.](http://jenkins.ic2.player.to/job/Forestry_Dev/changes)
 `gregtech-5.09.12.jar` | [Changelogs](http://ftb.gamepedia.com/GregTech_5_Unofficial/Experimental_Changelog)
 `journeymap-1.7.10-5.1.1-unlimited.jar` | [Changelogs](http://www.minecraftforum.net/forums/mapping-and-modding/minecraft-mods/1278348-journeymap-5-1-1-realtime-mapping-in-game-or-in-a)
 `logisticspipes-0.9.3.69.jar` | [Improve Storage Drawers](http://minecraft.curseforge.com/projects/logistics-pipes/files/2266340#Changelog)
 `malisisdoors-1.7.10-1.12.2.jar` | [Fixed crash with fence gates on dedicated server](minecraft.curseforge.com/projects/malisisdoors/files/2267187#Changelog)
 `Morpheus-1.7.10-1.6.13.jar` | [Minor adjustments](http://minecraft.curseforge.com/projects/morpheus/files/2267326#Changelog)
 `SkinPort-1.7.10-v5a.jar` | [fixed: crash on player join](http://minecraft.curseforge.com/projects/skinport/files/2267410#Changelog)
 `StorageDrawers-1.7.10-1.6.3.jar` | [Improved compatibility with logistics pipes. Fixed rendering of Gregtech items.](http://minecraft.curseforge.com/projects/storage-drawers/files/2267534#Changelog)

#### Fixes:

Issues | Descriptions
-------|-------------
 [#353](https://github.com/Beyond-Reality/BeyondRealityModPack/issues/353) | BRcore ores lack smelting and macerating recipes.
 [#342](https://github.com/Beyond-Reality/BeyondRealityModPack/issues/342) | Forestry planks don't work with the wand of equal trade

#### Config:

Configurations | Changes
---------------|--------
 `config/BeyondRealityCore/bannedBlocksByDimension.xml` | [Config cleanup, sort, deduplicate entries](https://github.com/Beyond-Reality/BeyondRealityModPack/commit/405e7c573f6ff2793eda8748b36de9d332d68427)
 `config/iChunUtil_Stats.cfg` | [Opt out of iChunutils stats](https://github.com/Beyond-Reality/BeyondRealityModPack/commit/7fb0477001f9a6244015fe8e5afc2f7be46f005d)
 `config/trashslot.cfg` | [Reset trashlot default config](https://github.com/Beyond-Reality/BeyondRealityModPack/commit/91df687d37ade903d19748f989e6d33ae14570f7)
 `scripts/forestry.zs` | [Fixed all Forestry4 wood recipes a la Gregtech sauce.](https://github.com/Beyond-Reality/BeyondRealityModPack/commit/4e07b3814e4184ef741b7cfce59bf7a3a0c32ddc)
 :new: `scripts/beyondrealitycore.zs`| [Register BeyondRealityCore customblock ores to Oredictionary instead of handling recipes for each mod.](https://github.com/Beyond-Reality/BeyondRealityModPack/commit/dfe1e5d82b1235d6953b2c8b717812890488b73c)
 `scripts/Botania.zs` | [Botania woods a la Gregtech sauce.](https://github.com/Beyond-Reality/BeyondRealityModPack/commit/8d91313f46bc935437840437c03123e29dde2f79)
 `scripts/Railcraft.zs` | [Register BeyondRealityCore customblock ores to Oredictionary instead of handling recipes for each mod.](https://github.com/Beyond-Reality/BeyondRealityModPack/commit/dfe1e5d82b1235d6953b2c8b717812890488b73c)

### Block changes:

Missing Blocks/Items:
```YAML
malisisdoors:curtain
malisisdoors:item.curtain
malisisdoors:curtain
```
