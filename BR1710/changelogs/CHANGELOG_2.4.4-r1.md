### VERSION 2.4.4-r1

#### Updated Mods:

* `AppleCore-mc1.7.10-1.3.9.jar`

    Improve startup time by ~67% (thanks @asiekierka [squeek502/ASMHelper#13])  
    Fix sending way too many saturation/exhaustion sync packets on multiplayer servers  
    Add exhaustion.sync.threshold config option to control the frequency of exhaustion sync packets  
    Sync difficulty to each player on login (instead of only on server startup)

* `buildcraft-7.1.20.jar` [:information_source:](http://www.mod-buildcraft.com/)

    https://github.com/BuildCraft/BuildCraft/issues/3492 Remove wasted space in packets (asie)  
    https://github.com/BuildCraft/BuildCraft/issues/3488 Fix Zone Planner crash in fullscreen mode (asie)  
    https://github.com/BuildCraft/BuildCraft/issues/3429 Fix robots sinking through bedrock if the docking station is broken (asie)  
    https://github.com/BuildCraft/BuildCraft/issues/3341 Fix builder not handling flowing liquid correctly in survival mode (asie)

  `buildcraft-compat-7.1.6.jar`

    Fix robots ignoring very mature AgriCraft crops (codewarrior0)

* :sparkles: `GT-PlusPlus-1.4.9.86-Beta.jar` [:information_source:](https://github.com/draknyte1/GTplusplus/compare/v1.4.9.22-alpha...v1.4.9.86-Beta)

* `MineFactoryReloaded-[1.7.10]2.8.2B1-201.jar`

    No changelog provided

  `CoFHCore-[1.7.10]3.1.4-329.jar`

    Improved mod compatibility for mods which didn't understand flat bedrock.  
    Minor backend adjustments.  
    Includes new CoFHLib

* `ModularPowersuits-0.11.1.111.jar`

    Fix: forced chunk load in tanks  
    Fix: misnamed enums in GeometryUtils  
    Tweak: improve RGB::distance function  
    Tweak: automatically add repositories to all including projects

  `Numina-0.4.1.105.jar`

    Fix broken stuff from proxy refactoring in previous build.  
    Probably final release for 1.7.10

* `OpenBlocks-1.7.10-1.6.jar`

    Feature: improve bulding guide rendering performance  
    Feature: new behaviour of hang-gliders, based on real world  
    Feature: variometer (acoustic indication of vertical speed) for hang-glider (activated with V by default)  
    Feature: optional mode that places grave only when grave item is present in inventory  
    Feature: make Last Stand xp cost fully configurable  
    Feature: make trophy drop rate fully configurable, allow drops without looting sword  
    Feature: limit grave spawn height (excludes bedrock layer by default)  
    Feature: option for minimal tank balance threshold (for performance tuning)  
    Fix: Last Stand now properly uses value of damage after armor reductions  
    Fix: block placed with placer are now facing the same direction as placer  
    Fix: resize vacuum hopper hitbox  
    Fix: limit cursor range to 64 blocks  
    Fix: sprinkler item duplication  
    Fix: rare crash during tank rendering  
    Fix: luggage taking damage from weird sources

    `OpenModsLib-1.7.10-0.10.jar`

    Feature: massive expansion of calculator (I think it's Turing-complete right now... whoops)  
    Feature: logging of fields and methods accessed via reflections  
    Feature: shaders helper functions  
    Feature: PlayerDamageEvent for damage after armor reductions  
    Feature: TE hook for neighbour TE change  
    Fix: fix possible item duplication with ItemInventory  
    Fix: tank side filtering  
    Fix: configs not saved after modification with GUI  
    Fix: possible state leak in network pipeline  
    Fix: forced chunk load in tanks  
    Fix: misnamed enums in GeometryUtils  
    Tweak: improve RGB::distance function  
    Tweak: automatically add repositories to all including projects  
    > Note: this is (hopefully) last 1.7.10 release. Next version should be

* `OpenComputers-MC1.7.10-1.6.2.12-universal.jar`

    Added: Allow addons to register their floppies for loot disk cycling. (Vexatos)  
    Added: Allow debug cards to send messages to one another and text to a debug card. (Vexatos)  
    Added: Fire item toss event when agents try to drop items into the world. (Sangar)  
    Added: MFU. (Vexatos)  
    Fixed: Card container in tablets not working. (Vexatos)  
    Fixed: pastebin get, low mem loadfile. (payonel)  
    Fixed: screens stopping to respond *in some configurations* when their chunk is loaded. (Sangar)  
    Fixed: Several drones are dropped if screnched quickly. (Vexatos)  
    Fixed: Waila's issue. (Sangar)  
    Update: German localization. (Vexatos)  
    Update: LuaJ and JNLua for better UTF-8 handling. (gamax92, Sangar)  
    Update: OpenOS 1.6.1. memory, performance, devfs, relative links, term safe slow write. (payonel)  
    Update: OPPM floppy to use new install features. Also updated OPPM. (Vexatos)  
    Update: Plan9k. (magik6k)

#### Removed mods:

* Galactirgreg as it is now integrated in Gregtech 5.09

#### Fixed Issues:

* [#447 All Meat (Pork, Beef, etc) smelts into meat ingots](https://github.com/Beyond-Reality/BeyondRealityModPack/issues/447) thank to @silverphoenix300
* [#448 BC assembly balancing suggestion](https://github.com/Beyond-Reality/BeyondRealityModPack/issues/448) thank to @Manj4ppa for suggestion
