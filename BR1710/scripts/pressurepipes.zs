var pipe = <pressure:Pipe>;
var pump = <pressure:Pump>;
var output = <pressure:Output>;
var input = <pressure:Input>;
var drain = <pressure:Drain>;
var tankblock = <pressure:TankBlock>;
var canister = <pressure:Canister>;
var poweredoutput = <pressure:TankFluidAutoOutput>;
var intake = <pressure:TankFluidInput>;
var tankwall = <pressure:TankWall>;
var outlet = <pressure:TankFluidOutput>;
var pressureoutlet = <pressure:TankPressureOutput>;
var pressureintake = <pressure:TankPressureInput>;
var interface = <pressure:TankInterface>;
var filter = <pressure:TankFilter>;
var controller = <pressure:TankController>;
var indicator = <pressure:TankIndicator>;
var fluidinterface = <pressure:FluidInterface>;
var pressureinterface = <pressure:Interface>;

var iron = <minecraft:iron_ingot>;
var piston = <minecraft:piston>;
var tincanister = <GalacticraftCore:item.canister>;
var steelplate = <ore:plateSteel>;
var ironplate = <ore:plateIron>;
var bolt = <ore:boltSteel>;
var boltIron = <ore:boltIron>;
var ring = <ore:ringIron>;
var hopper = <PneumaticCraft:liquidHopper>;
var bars = <minecraft:iron_bars>;
var craftingToolWrench = <ore:craftingToolWrench>;

// Recipe tweaks

#Canister
recipes.remove(canister);
recipes.addShaped(canister, [[boltIron,craftingToolWrench,boltIron],
                                                        [ironplate,ring,ironplate],
                                                        [boltIron,tincanister,boltIron]]);

#Tank Wall
recipes.remove(tankwall);
recipes.addShaped(tankwall * 16, [[steelplate,bolt,steelplate],
                                                        [steelplate,craftingToolWrench,steelplate],
                                                        [steelplate,bolt,steelplate]]);

#Fluid Interface
recipes.remove(fluidinterface);
recipes.addShaped(fluidinterface * 8, [[boltIron,craftingToolWrench,boltIron],
                                                        [iron,<minecraft:bucket>,iron],
                                                        [boltIron,iron,boltIron]]);

#Tank Block
recipes.remove(tankblock);
recipes.addShaped(tankblock, [[bolt,tankwall,bolt],
                                                        [tankwall,craftingToolWrench,tankwall],
                                                        [bolt,tankwall,bolt]]);

#Powered Output
recipes.remove(poweredoutput);
recipes.addShaped(poweredoutput, [[bolt,piston,bolt],
                                                        [tankwall,craftingToolWrench,tankwall],
                                                        [tankwall,fluidinterface,tankwall]]);

#Fluid Input
recipes.remove(intake);
recipes.addShaped(intake, [[bolt,fluidinterface,bolt],
                                                        [tankwall,craftingToolWrench,tankwall],
                                                        [tankwall,bolt,tankwall]]);

#Fluid output
recipes.remove(outlet);
recipes.addShaped(outlet, [[tankwall,bolt,tankwall],
                                                        [tankwall,craftingToolWrench,tankwall],
                                                        [bolt,fluidinterface,bolt]]);

#Pressure Input
recipes.remove(pressureintake);
recipes.addShaped(pressureintake, [[bolt,pressureinterface,bolt],
                                                        [tankwall,craftingToolWrench,tankwall],
                                                        [tankwall,bolt,tankwall]]);

#Pressure output
recipes.remove(pressureoutlet);
recipes.addShaped(pressureoutlet, [[tankwall,bolt,tankwall],
                                                        [tankwall,craftingToolWrench,tankwall],
                                                        [bolt,pressureinterface,bolt]]);

#Tank interface
recipes.remove(interface);
recipes.addShaped(interface, [[tankwall,hopper,tankwall],
                                                        [fluidinterface,craftingToolWrench,pressureinterface],
                                                        [tankwall,hopper,tankwall]]);

#Pressure Pipe
recipes.remove(pipe);
recipes.addShaped(pipe * 12, [[steelplate,steelplate,steelplate],
                                                        [hopper,craftingToolWrench,hopper],
                                                        [steelplate,steelplate,steelplate]]);

#Pump
recipes.remove(pump);
recipes.addShaped(pump, [[tankwall,hopper,tankwall],
                                                        [bolt,piston,bolt],
                                                        [tankwall,craftingToolWrench,tankwall]]);

#Output
recipes.remove(output);
recipes.addShaped(output, [[tankwall,pressureinterface,tankwall],
                                                        [tankwall,null,tankwall],
                                                        [tankwall,craftingToolWrench,tankwall]]);

#Input
recipes.remove(input);
recipes.addShaped(input, [[tankwall,craftingToolWrench,tankwall],
                                                        [tankwall,null,tankwall],
                                                        [tankwall,pressureinterface,tankwall]]);

#Drain
recipes.remove(drain);
recipes.addShaped(drain, [[tankwall,pressureinterface,tankwall],
                                                        [tankwall,craftingToolWrench,tankwall],
                                                        [bars,bars,bars]]);

#Filter
recipes.remove(filter);
recipes.addShaped(filter, [[tankwall,bars,tankwall],
                                                        [bars,craftingToolWrench,bars],
                                                        [tankwall,bars,tankwall]]);
