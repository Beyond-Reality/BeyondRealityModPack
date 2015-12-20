### VERSION 2.3.7a Hotfix

#### Updated:

* `Botania r1.7-231.jar` ([ChangeLog](http://botaniamod.net/changelog.php#r1.7-231))
* `gendustry-1.6.3.128-mc1.7.10.jar` ([Build against forestry 4.1.1, Fix bdew/gendustry#144](https://github.com/bdew/gendustry/issues/144)
* `malisiscore-1.7.10-0.13.0.jar` (depend)
* `malisisdoors-1.7.10-1.11.0.jar` ([Crashfixes](http://minecraft.curseforge.com/projects/malisisdoors/files/2264113#Changelog))

#### Downgraded:

#### Added:

* `INpureCore-[1.7.10]1.0.0B9-62.jar` (instead of CMIP due to crash in Waila modules)

#### Removed:

* `CMIP-1.7.10-1.0Beta.18.jar` (Cause of crashes accessing internal mods data See #347)

#### Fixes:

* #347 [World load/New World #347](https://github.com/Beyond-Reality/BeyondRealityModPack/issues/347)
* [Fix smelting of iron nugget to wrought iron 1e742c1 ](https://github.com/Beyond-Reality/BeyondRealityModPack/commit/1e742c1778b7bc546a1d8c60d2c6a166eb621b8b)

#### Config:

* `config/Galacticraft/core.conf`
  Disabled legacy oilgc and fuelgc registration.
  Worlds with existing generated Galacticraft `oilgc` pockets will get these changed to air pockets ([See: Removed blocks](#removed-blocks))
* `scripts/Extracells.zs`
  Removed recipes for ExtraCells fluid annihilation/formation planes and storage bus as these can be exploited to duplicate fluids.
  See [Issue #286](https://github.com/Beyond-Reality/BeyondRealityModPack/issues/286)

#### Removed blocks:

```YAML
GalacticraftCore:tile.fuel
GalacticraftCore:tile.crudeOilStill
GalacticraftCore:tile.fuel
GalacticraftCore:tile.crudeOilStill
```
