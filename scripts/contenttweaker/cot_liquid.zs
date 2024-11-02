//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

#priority 1000
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

//不稳定的虚空涌流
var void_liquid = VanillaFactory.createFluid("void_liquid", Color.fromHex("7b1c8c").getIntColor());
void_liquid.colorize = true;
void_liquid.temperature = 300;
void_liquid.luminosity = 7;
void_liquid.stillLocation = "base:fluids/liquid";
void_liquid.flowingLocation = "base:fluids/liquid_flow";
void_liquid.register();

//能量流体
var energy_liquid = VanillaFactory.createFluid("energy_liquid", Color.fromHex("57ebb5").getIntColor());
energy_liquid.colorize = true;
energy_liquid.temperature = 300;
energy_liquid.luminosity = 7;
energy_liquid.stillLocation = "base:fluids/liquid";
energy_liquid.flowingLocation = "base:fluids/liquid_flow";
energy_liquid.register();

//熔融流明精华
var lumium_liquid = VanillaFactory.createFluid("lumium_liquid", Color.fromHex("dede56").getIntColor());
lumium_liquid.colorize = true;
lumium_liquid.temperature = 300;
lumium_liquid.luminosity = 7;
lumium_liquid.stillLocation = "base:fluids/liquid";
lumium_liquid.flowingLocation = "base:fluids/liquid_flow";
lumium_liquid.register();

//熔融模块化合金
var modular_liquid = VanillaFactory.createFluid("modular_liquid", Color.fromHex("dddedb").getIntColor());
modular_liquid.colorize = true;
modular_liquid.temperature = 300;
modular_liquid.luminosity = 7;
modular_liquid.stillLocation = "base:fluids/liquid";
modular_liquid.flowingLocation = "base:fluids/liquid_flow";
modular_liquid.register();

//甲苯
var toluene_liquid = VanillaFactory.createFluid("toluene_liquid", Color.fromHex("471700").getIntColor());
toluene_liquid.colorize = true;
toluene_liquid.temperature = 300;
toluene_liquid.luminosity = 7;
toluene_liquid.stillLocation = "base:fluids/liquid";
toluene_liquid.flowingLocation = "base:fluids/liquid_flow";
toluene_liquid.register();

//润滑油
var lubricant = VanillaFactory.createFluid("lubricant", Color.fromHex("f7e6a9").getIntColor());
lubricant.colorize = true;
lubricant.temperature = 300;
lubricant.luminosity = 7;
lubricant.stillLocation = "base:fluids/liquid";
lubricant.flowingLocation = "base:fluids/liquid_flow";
lubricant.register();

//黎明石精华
var liming = VanillaFactory.createFluid("liming", Color.fromHex("d98d23").getIntColor());
liming.colorize = true;
liming.temperature = 300;
liming.luminosity = 7;
liming.stillLocation = "base:fluids/liquid";
liming.flowingLocation = "base:fluids/liquid_flow";
liming.register();

//魔法泉水
var mana_water = VanillaFactory.createFluid("mana_water", Color.fromHex("29bfff").getIntColor());
mana_water.colorize = true;
mana_water.temperature = 300;
mana_water.luminosity = 9;
mana_water.stillLocation = "base:fluids/liquid";
mana_water.flowingLocation = "base:fluids/liquid_flow";
mana_water.register();

//永恒精华
var eternal_essence = VanillaFactory.createFluid("eternal_essence", Color.fromHex("9a78e3").getIntColor());
eternal_essence.colorize = true;
eternal_essence.temperature = 1000000;
eternal_essence.luminosity = 15;
eternal_essence.stillLocation = "base:fluids/liquid";
eternal_essence.flowingLocation = "base:fluids/liquid_flow";
eternal_essence.register();

//十全大补汤
var CNS = VanillaFactory.createFluid("concentrated_nutrient_solution", Color.fromHex("f7c120").getIntColor());
CNS.colorize = true;
CNS.temperature = 300;
CNS.luminosity = 7;
CNS.stillLocation = "base:fluids/liquid";
CNS.flowingLocation = "base:fluids/liquid_flow";
CNS.register();

//重油
var HO = VanillaFactory.createFluid("heavy_oil", Color.fromHex("000000").getIntColor());
HO.colorize = true;
HO.temperature = 300;
HO.luminosity = 7;
HO.stillLocation = "base:fluids/liquid";
HO.flowingLocation = "base:fluids/liquid_flow";
HO.register();

//含硫炼油气
var sulfuric_gas = VanillaFactory.createFluid("sulfuric_gas", Color.fromHex("b4b4b4").getIntColor());
sulfuric_gas.colorize = true;
sulfuric_gas.temperature = 300;
sulfuric_gas.luminosity = 7;
sulfuric_gas.stillLocation = "base:fluids/liquid";
sulfuric_gas.flowingLocation = "base:fluids/liquid_flow";
sulfuric_gas.register();

//炼油气
var LPG = VanillaFactory.createFluid("lpg", Color.fromHex("fffbb2").getIntColor());
LPG.colorize = true;
LPG.temperature = 300;
LPG.luminosity = 7;
LPG.stillLocation = "base:fluids/liquid";
LPG.flowingLocation = "base:fluids/liquid_flow";
LPG.register();

//液化石油气
var refinery_gas = VanillaFactory.createFluid("refinery_gas", Color.fromHex("c0c0c0").getIntColor());
refinery_gas.colorize = true;
refinery_gas.temperature = 300;
refinery_gas.luminosity = 7;
refinery_gas.stillLocation = "base:fluids/liquid";
refinery_gas.flowingLocation = "base:fluids/liquid_flow";
refinery_gas.register();

//蒸汽裂化炼油气
var steamcracked_gas = VanillaFactory.createFluid("steamcracked_gas", Color.fromHex("b4b4b4").getIntColor());
steamcracked_gas.colorize = true;
steamcracked_gas.temperature = 300;
steamcracked_gas.luminosity = 7;
steamcracked_gas.stillLocation = "base:fluids/liquid";
steamcracked_gas.flowingLocation = "base:fluids/liquid_flow";
steamcracked_gas.register();

//粗汽油
var raw_gasoline = VanillaFactory.createFluid("raw_gasoline", Color.fromHex("c14c00").getIntColor());
raw_gasoline.colorize = true;
raw_gasoline.temperature = 300;
raw_gasoline.luminosity = 7;
raw_gasoline.stillLocation = "base:fluids/liquid";
raw_gasoline.flowingLocation = "base:fluids/liquid_flow";
raw_gasoline.register();

//汽油
var gasoline = VanillaFactory.createFluid("gasoline", Color.fromHex("bc7a00").getIntColor());
gasoline.colorize = true;
gasoline.temperature = 300;
gasoline.luminosity = 7;
gasoline.stillLocation = "base:fluids/liquid";
gasoline.flowingLocation = "base:fluids/liquid_flow";
gasoline.register();

//高辛烷值汽油
var high_octane_gasoline = VanillaFactory.createFluid("high_octane_gasoline", Color.fromHex("b97904").getIntColor());
high_octane_gasoline.colorize = true;
high_octane_gasoline.temperature = 300;
high_octane_gasoline.luminosity = 7;
high_octane_gasoline.stillLocation = "base:fluids/liquid";
high_octane_gasoline.flowingLocation = "base:fluids/liquid_flow";
high_octane_gasoline.register();

//沼气
var ZQ = VanillaFactory.createFluid("biogas", Color.fromHex("507d51").getIntColor());
ZQ.colorize = true;
ZQ.temperature = 300;
ZQ.luminosity = 7;
ZQ.stillLocation = "base:fluids/liquid";
ZQ.flowingLocation = "base:fluids/liquid_flow";
ZQ.register();

//混合燃油
var HHRY = VanillaFactory.createFluid("saturated_fuel", Color.fromHex("448046").getIntColor());
HHRY.colorize = true;
HHRY.temperature = 300;
HHRY.luminosity = 7;
HHRY.stillLocation = "base:fluids/liquid";
HHRY.flowingLocation = "base:fluids/liquid_flow";
HHRY.register();

//优质燃油
var YZRY = VanillaFactory.createFluid("high_quality_fuel", Color.fromHex("448046").getIntColor());
YZRY.colorize = true;
YZRY.temperature = 300;
YZRY.luminosity = 7;
YZRY.stillLocation = "base:fluids/liquid";
YZRY.flowingLocation = "base:fluids/liquid_flow";
YZRY.register();

//四氯化钛
var titanium_tetrachloride = VanillaFactory.createFluid("titanium_tetrachloride", Color.fromHex("D40D5C").getIntColor());
titanium_tetrachloride.colorize = true;
titanium_tetrachloride.temperature = 300;
titanium_tetrachloride.luminosity = 7;
titanium_tetrachloride.stillLocation = "base:fluids/liquid";
titanium_tetrachloride.flowingLocation = "base:fluids/liquid_flow";
titanium_tetrachloride.register();

//木炭副产
var charcoal_byproducts = VanillaFactory.createFluid("charcoal_byproducts", Color.fromHex("523420").getIntColor());
charcoal_byproducts.colorize = true;
charcoal_byproducts.temperature = 300;
charcoal_byproducts.luminosity = 7;
charcoal_byproducts.stillLocation = "base:fluids/liquid";
charcoal_byproducts.flowingLocation = "base:fluids/liquid_flow";
charcoal_byproducts.register();

//木焦油
var wood_tar = VanillaFactory.createFluid("wood_tar", Color.fromHex("241b13").getIntColor());
wood_tar.colorize = true;
wood_tar.temperature = 300;
wood_tar.luminosity = 7;
wood_tar.stillLocation = "base:fluids/liquid";
wood_tar.flowingLocation = "base:fluids/liquid_flow";
wood_tar.register();

//木醋酸
var wood_vinegar = VanillaFactory.createFluid("wood_vinegar", Color.fromHex("241b13").getIntColor());
wood_vinegar.colorize = true;
wood_vinegar.temperature = 300;
wood_vinegar.luminosity = 7;
wood_vinegar.stillLocation = "base:fluids/liquid";
wood_vinegar.flowingLocation = "base:fluids/liquid_flow";
wood_vinegar.register();

//木炭气
var wood_gas = VanillaFactory.createFluid("wood_gas", Color.fromHex("a09258").getIntColor());
wood_gas.colorize = true;
wood_gas.temperature = 300;
wood_gas.luminosity = 7;
wood_gas.stillLocation = "base:fluids/liquid";
wood_gas.flowingLocation = "base:fluids/liquid_flow";
wood_gas.register();

//二氧化碳
var carbon_dioxide = VanillaFactory.createFluid("carbon_dioxide", Color.fromHex("98c7f3").getIntColor());
carbon_dioxide.colorize = true;
carbon_dioxide.temperature = 300;
carbon_dioxide.luminosity = 7;
carbon_dioxide.stillLocation = "base:fluids/liquid";
carbon_dioxide.flowingLocation = "base:fluids/liquid_flow";
carbon_dioxide.register();

//一氧化碳
var carbon_monoxide = VanillaFactory.createFluid("carbon_monoxide", Color.fromHex("19436C").getIntColor());
carbon_monoxide.colorize = true;
carbon_monoxide.temperature = 300;
carbon_monoxide.luminosity = 7;
carbon_monoxide.stillLocation = "base:fluids/liquid";
carbon_monoxide.flowingLocation = "base:fluids/liquid_flow";
carbon_monoxide.register();

//乙烯
var ethylene = VanillaFactory.createFluid("ethylene", Color.fromHex("ADADAD").getIntColor());
ethylene.colorize = true;
ethylene.temperature = 300;
ethylene.luminosity = 7;
ethylene.stillLocation = "base:fluids/liquid";
ethylene.flowingLocation = "base:fluids/liquid_flow";
ethylene.register();

//硝基苯
var nitrobenzene = VanillaFactory.createFluid("nitrobenzene", Color.fromHex("191919").getIntColor());
nitrobenzene.colorize = true;
nitrobenzene.temperature = 300;
nitrobenzene.luminosity = 7;
nitrobenzene.stillLocation = "base:fluids/liquid";
nitrobenzene.flowingLocation = "base:fluids/liquid_flow";
nitrobenzene.register();

//铝土泥浆
var bauxites_lurry = VanillaFactory.createFluid("bauxites_lurry", Color.fromHex("20367f").getIntColor());
bauxites_lurry.colorize = true;
bauxites_lurry.temperature = 300;
bauxites_lurry.luminosity = 7;
bauxites_lurry.stillLocation = "base:fluids/liquid";
bauxites_lurry.flowingLocation = "base:fluids/liquid_flow";
bauxites_lurry.register();

//热铝土泥浆
var hot_bauxites_lurry = VanillaFactory.createFluid("hot_bauxites_lurry", Color.fromHex("20367f").getIntColor());
hot_bauxites_lurry.colorize = true;
hot_bauxites_lurry.temperature = 1000;
hot_bauxites_lurry.luminosity = 7;
hot_bauxites_lurry.stillLocation = "base:fluids/liquid";
hot_bauxites_lurry.flowingLocation = "base:fluids/liquid_flow";
hot_bauxites_lurry.register();