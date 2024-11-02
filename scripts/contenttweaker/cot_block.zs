//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

#priority 1467
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

//教皇块
val zl as Block = VanillaFactory.createBlock("zl_block", <blockmaterial:iron>);
zl.fullBlock = true;
zl.setLightOpacity(255);
zl.translucent = true;
zl.setLightValue(0);
zl.setBlockHardness(8);
zl.setBlockResistance(300.0);
zl.setToolClass("pickaxe");
zl.setToolLevel(4);
zl.setBlockSoundType(<soundtype:metal>);
zl.register();

//教皇矿
val zl_ore as Block = VanillaFactory.createBlock("zl_ore", <blockmaterial:iron>);
zl_ore.fullBlock = true;
zl_ore.setLightOpacity(255);
zl_ore.translucent = true;
zl_ore.setLightValue(0);
zl_ore.setBlockHardness(8);
zl_ore.setBlockResistance(300.0);
zl_ore.setToolClass("shovel");
zl_ore.setToolLevel(4);
zl_ore.setBlockSoundType(<soundtype:metal>);
zl_ore.register();

//深溟矿
val shenming_ore as Block = VanillaFactory.createBlock("shenming_ore", <blockmaterial:iron>);
shenming_ore.fullBlock = true;
shenming_ore.setLightOpacity(255);
shenming_ore.translucent = true;
shenming_ore.setLightValue(0);
shenming_ore.setBlockHardness(8);
shenming_ore.setBlockResistance(300.0);
shenming_ore.setToolClass("pickaxe");
shenming_ore.setToolLevel(4);
shenming_ore.setBlockSoundType(<soundtype:metal>);
shenming_ore.register();

//模块化合金块
val MB as Block = VanillaFactory.createBlock("modularblock", <blockmaterial:iron>);
MB.fullBlock = true;
MB.setLightOpacity(255);
MB.translucent = true;
MB.setLightValue(0);
MB.setBlockHardness(10);
MB.setBlockResistance(300.0);
MB.setToolClass("pickaxe");
MB.setToolLevel(3);
MB.setBlockSoundType(<soundtype:metal>);
MB.register();

//树脂覆盖的机械框架
val RB as Block = VanillaFactory.createBlock("resinmachineblock", <blockmaterial:iron>);
RB.fullBlock = true;
RB.setLightOpacity(255);
RB.translucent = true;
RB.setLightValue(0);
RB.setBlockHardness(10);
RB.setBlockResistance(200.0);
RB.setToolClass("pickaxe");
RB.setToolLevel(3);
RB.setBlockSoundType(<soundtype:metal>);
RB.register();

//铬矿
val CO as Block = VanillaFactory.createBlock("chrome_ore", <blockmaterial:iron>);
CO.fullBlock = true;
CO.setLightOpacity(255);
CO.translucent = true;
CO.setLightValue(0);
CO.setBlockHardness(8);
CO.setBlockResistance(200.0);
CO.setToolClass("pickaxe");
CO.setToolLevel(4);
CO.setBlockSoundType(<soundtype:metal>);
CO.register();

//银河能量块
val GB as Block = VanillaFactory.createBlock("galaxy_block", <blockmaterial:iron>);
GB.fullBlock = true;
GB.setLightOpacity(255);
GB.translucent = true;
GB.setLightValue(3);
GB.setBlockHardness(8);
GB.setBlockResistance(200.0);
GB.setToolClass("pickaxe");
GB.setToolLevel(4);
GB.setBlockSoundType(<soundtype:metal>);
GB.register();

//宇宙能量块
val UB as Block = VanillaFactory.createBlock("universe_block", <blockmaterial:iron>);
UB.fullBlock = true;
UB.setLightOpacity(255);
UB.translucent = true;
UB.setLightValue(3);
UB.setBlockHardness(8);
UB.setBlockResistance(200.0);
UB.setToolClass("pickaxe");
UB.setToolLevel(4);
UB.setBlockSoundType(<soundtype:metal>);
UB.register();

//不锈钢线圈
val stainless_steel_coil as Block = VanillaFactory.createBlock("stainless_steel_coil", <blockmaterial:iron>);
stainless_steel_coil.fullBlock = true;
stainless_steel_coil.setLightOpacity(255);
stainless_steel_coil.translucent = true;
stainless_steel_coil.setLightValue(0);
stainless_steel_coil.setBlockHardness(7.5);
stainless_steel_coil.setBlockResistance(100.0);
stainless_steel_coil.setToolClass("pickaxe");
stainless_steel_coil.setToolLevel(3);
stainless_steel_coil.setBlockSoundType(<soundtype:metal>);
stainless_steel_coil.register();

//MMCE风格外壳方块————由Kasumi_nova提供
//究极机械外壳
val EMB as Block = VanillaFactory.createBlock("extrememachineblock", <blockmaterial:iron>);
EMB.fullBlock = true;
EMB.setLightOpacity(255);
EMB.translucent = true;
EMB.setLightValue(0);
EMB.setBlockHardness(7.5);
EMB.setBlockResistance(100.0);
EMB.setToolClass("pickaxe");
EMB.setToolLevel(3);
EMB.setBlockSoundType(<soundtype:metal>);
EMB.register();

//方舟机械外壳
val AMB as Block = VanillaFactory.createBlock("arkmachineblock", <blockmaterial:iron>);
AMB.fullBlock = true;
AMB.setLightOpacity(255);
AMB.translucent = true;
AMB.setLightValue(0);
AMB.setBlockHardness(10.0);
AMB.setBlockResistance(200.0);
AMB.setToolClass("pickaxe");
AMB.setToolLevel(4);
AMB.setBlockSoundType(<soundtype:metal>);
AMB.register();

//动态方块及线圈资源————由WI_8613_ice@afp.com提供
//水晶矩阵力场控制矩阵
val crystalmatrixforcefieldcontrolblock as Block = VanillaFactory.createBlock("crystalmatrixforcefieldcontrolblock", <blockmaterial:iron>);
crystalmatrixforcefieldcontrolblock.fullBlock = false;
crystalmatrixforcefieldcontrolblock.setLightOpacity(255);
crystalmatrixforcefieldcontrolblock.translucent = true;
crystalmatrixforcefieldcontrolblock.setLightValue(1);
crystalmatrixforcefieldcontrolblock.setBlockHardness(7.5);
crystalmatrixforcefieldcontrolblock.setBlockResistance(50.0);
crystalmatrixforcefieldcontrolblock.setToolClass("pickaxe");
crystalmatrixforcefieldcontrolblock.setToolLevel(3);
crystalmatrixforcefieldcontrolblock.setBlockSoundType(<soundtype:metal>);
crystalmatrixforcefieldcontrolblock.register();

//中子力场控制矩阵
val neutronforcefieldcontrolblock as Block = VanillaFactory.createBlock("neutronforcefieldcontrolblock", <blockmaterial:iron>);
neutronforcefieldcontrolblock.fullBlock = false;
neutronforcefieldcontrolblock.setLightOpacity(255);
neutronforcefieldcontrolblock.translucent = true;
neutronforcefieldcontrolblock.setLightValue(1);
neutronforcefieldcontrolblock.setBlockHardness(50.0);
neutronforcefieldcontrolblock.setBlockResistance(100.0);
neutronforcefieldcontrolblock.setToolClass("pickaxe");
neutronforcefieldcontrolblock.setToolLevel(3);
neutronforcefieldcontrolblock.setBlockSoundType(<soundtype:metal>);
neutronforcefieldcontrolblock.register();

//寰宇力场控制矩阵
val universalforcefieldcontrolblock as Block = VanillaFactory.createBlock("universalforcefieldcontrolblock", <blockmaterial:iron>);
universalforcefieldcontrolblock.fullBlock = false;
universalforcefieldcontrolblock.setLightOpacity(255);
universalforcefieldcontrolblock.translucent = true;
universalforcefieldcontrolblock.setLightValue(1);
universalforcefieldcontrolblock.setBlockHardness(200.0);
universalforcefieldcontrolblock.setBlockResistance(100.0);
universalforcefieldcontrolblock.setToolClass("pickaxe");
universalforcefieldcontrolblock.setToolLevel(3);
universalforcefieldcontrolblock.setBlockSoundType(<soundtype:metal>);
universalforcefieldcontrolblock.register();

//时空凝结块
val spacetimecondensationblock as Block = VanillaFactory.createBlock("space_time_condensation_block", <blockmaterial:iron>);
spacetimecondensationblock.fullBlock = true;
spacetimecondensationblock.setLightOpacity(255);
spacetimecondensationblock.translucent = true;
spacetimecondensationblock.setLightValue(0);
spacetimecondensationblock.setBlockHardness(7.5);
spacetimecondensationblock.setBlockResistance(100.0);
spacetimecondensationblock.setToolClass("pickaxe");
spacetimecondensationblock.setToolLevel(3);
spacetimecondensationblock.setBlockSoundType(<soundtype:metal>);
spacetimecondensationblock.register();

//中子线圈盘
val neutroncoildiscs as Block = VanillaFactory.createBlock("neutron_coil_discs", <blockmaterial:iron>);
neutroncoildiscs.fullBlock = false;
neutroncoildiscs.setLightOpacity(255);
neutroncoildiscs.translucent = true;
neutroncoildiscs.setLightValue(0);
neutroncoildiscs.setBlockHardness(7.5);
neutroncoildiscs.setBlockResistance(100.0);
neutroncoildiscs.setToolClass("pickaxe");
neutroncoildiscs.setToolLevel(3);
neutroncoildiscs.setBlockSoundType(<soundtype:metal>);
neutroncoildiscs.register();

//恒星合金线圈
val fixedstaralloyscoil as Block = VanillaFactory.createBlock("fixed_star_alloys_coil", <blockmaterial:iron>);
fixedstaralloyscoil.fullBlock = true;
fixedstaralloyscoil.setLightOpacity(255);
fixedstaralloyscoil.translucent = true;
fixedstaralloyscoil.setLightValue(0);
fixedstaralloyscoil.setBlockHardness(7.5);
fixedstaralloyscoil.setBlockResistance(100.0);
fixedstaralloyscoil.setToolClass("pickaxe");
fixedstaralloyscoil.setToolLevel(3);
fixedstaralloyscoil.setBlockSoundType(<soundtype:metal>);
fixedstaralloyscoil.register();

//无尽线圈
val infinitecoil as Block = VanillaFactory.createBlock("infinite_coil", <blockmaterial:iron>);
infinitecoil.fullBlock = true;
infinitecoil.setLightOpacity(255);
infinitecoil.translucent = true;
infinitecoil.setLightValue(0);
infinitecoil.setBlockHardness(7.5);
infinitecoil.setBlockResistance(100.0);
infinitecoil.setToolClass("pickaxe");
infinitecoil.setToolLevel(3);
infinitecoil.setBlockSoundType(<soundtype:metal>);
infinitecoil.register();

//时空线圈
val spacetimecoil as Block = VanillaFactory.createBlock("space_time_coil", <blockmaterial:iron>);
spacetimecoil.fullBlock = true;
spacetimecoil.setLightOpacity(255);
spacetimecoil.translucent = true;
spacetimecoil.setLightValue(0);
spacetimecoil.setBlockHardness(7.5);
spacetimecoil.setBlockResistance(100.0);
spacetimecoil.setToolClass("pickaxe");
spacetimecoil.setToolLevel(3);
spacetimecoil.setBlockSoundType(<soundtype:metal>);
spacetimecoil.register();

//MMCE风格外壳/齿轮箱等方块————脚本由Magic_Sweepy提供
var bronze_casing = VanillaFactory.createBlock("bronze_casing", <blockmaterial:iron>);
    bronze_casing.blockHardness = 5.0;
    bronze_casing.blockResistance = 5.0;
    bronze_casing.toolClass = "pickaxe";
    bronze_casing.toolLevel = 2;
    bronze_casing.register();

var steel_casing = VanillaFactory.createBlock("steel_casing", <blockmaterial:iron>);
    steel_casing.blockHardness = 5.0;
    steel_casing.blockResistance = 5.0;
    steel_casing.toolClass = "pickaxe";
    steel_casing.toolLevel = 2;
    steel_casing.register();

var invar_casing = VanillaFactory.createBlock("invar_casing", <blockmaterial:iron>);
    invar_casing.blockHardness = 5.0;
    invar_casing.blockResistance = 5.0;
    invar_casing.toolClass = "pickaxe";
    invar_casing.toolLevel = 2;
    invar_casing.register();

var aluminium_casing = VanillaFactory.createBlock("aluminium_casing", <blockmaterial:iron>);
    aluminium_casing.blockHardness = 5.0;
    aluminium_casing.blockResistance = 5.0;
    aluminium_casing.toolClass = "pickaxe";
    aluminium_casing.toolLevel = 2;
    aluminium_casing.register();

var stainless_steel_casing = VanillaFactory.createBlock("stainless_steel_casing", <blockmaterial:iron>);
    stainless_steel_casing.blockHardness = 5.0;
    stainless_steel_casing.blockResistance = 5.0;
    stainless_steel_casing.toolClass = "pickaxe";
    stainless_steel_casing.toolLevel = 3;
    stainless_steel_casing.register();

var titanium_casing = VanillaFactory.createBlock("titanium_casing", <blockmaterial:iron>);
    titanium_casing.blockHardness = 5.0;
    titanium_casing.blockResistance = 5.0;
    titanium_casing.toolClass = "pickaxe";
    titanium_casing.toolLevel = 2;
    titanium_casing.register();

var tungsten_steel_casing = VanillaFactory.createBlock("tungsten_steel_casing", <blockmaterial:iron>);
    tungsten_steel_casing.blockHardness = 5.0;
    tungsten_steel_casing.blockResistance = 5.0;
    tungsten_steel_casing.toolClass = "pickaxe";
    tungsten_steel_casing.toolLevel = 4;
    tungsten_steel_casing.register();

var hss_e_casing = VanillaFactory.createBlock("hss_e_casing", <blockmaterial:iron>);
    hss_e_casing.blockHardness = 5.0;
    hss_e_casing.blockResistance = 5.0;
    hss_e_casing.toolClass = "pickaxe";
    hss_e_casing.toolLevel = 4;
    hss_e_casing.register();

var alchemical_brass_casing = VanillaFactory.createBlock("alchemical_brass_casing", <blockmaterial:iron>);
    alchemical_brass_casing.blockHardness = 5.0;
    alchemical_brass_casing.blockResistance = 5.0;
    alchemical_brass_casing.toolClass = "pickaxe";
    alchemical_brass_casing.toolLevel = 1;
    alchemical_brass_casing.register();

var thaumium_casing = VanillaFactory.createBlock("thaumium_casing", <blockmaterial:iron>);
    thaumium_casing.blockHardness = 5.0;
    thaumium_casing.blockResistance = 5.0;
    thaumium_casing.toolClass = "pickaxe";
    thaumium_casing.toolLevel = 2;
    thaumium_casing.register();

//  Gearbox Casings
var bronze_gearbox_casing = VanillaFactory.createBlock("bronze_gearbox_casing", <blockmaterial:iron>);
    bronze_gearbox_casing.blockHardness = 5.0;
    bronze_gearbox_casing.blockResistance = 5.0;
    bronze_gearbox_casing.toolClass = "pickaxe";
    bronze_gearbox_casing.toolLevel = 2;
    bronze_gearbox_casing.register();

var steel_gearbox_casing = VanillaFactory.createBlock("steel_gearbox_casing", <blockmaterial:iron>);
    steel_gearbox_casing.blockHardness = 5.0;
    steel_gearbox_casing.blockResistance = 5.0;
    steel_gearbox_casing.toolClass = "pickaxe";
    steel_gearbox_casing.toolLevel = 2;
    steel_gearbox_casing.register();

var stainless_steel_gearbox_casing = VanillaFactory.createBlock("stainless_steel_gearbox_casing", <blockmaterial:iron>);
    stainless_steel_gearbox_casing.blockHardness = 5.0;
    stainless_steel_gearbox_casing.blockResistance = 5.0;
    stainless_steel_gearbox_casing.toolClass = "pickaxe";
    stainless_steel_gearbox_casing.toolLevel = 3;
    stainless_steel_gearbox_casing.register();

var titanium_gearbox_casing = VanillaFactory.createBlock("titanium_gearbox_casing", <blockmaterial:iron>);
    titanium_gearbox_casing.blockHardness = 5.0;
    titanium_gearbox_casing.blockResistance = 5.0;
    titanium_gearbox_casing.toolClass = "pickaxe";
    titanium_gearbox_casing.toolLevel = 2;
    titanium_gearbox_casing.register();

var tungsten_steel_gearbox_casing = VanillaFactory.createBlock("tungsten_steel_gearbox_casing", <blockmaterial:iron>);
    tungsten_steel_gearbox_casing.blockHardness = 5.0;
    tungsten_steel_gearbox_casing.blockResistance = 5.0;
    tungsten_steel_gearbox_casing.toolClass = "pickaxe";
    tungsten_steel_gearbox_casing.toolLevel = 4;
    tungsten_steel_gearbox_casing.register();

//  Firebox Casing
var bronze_firebox_casing = VanillaFactory.createBlock("bronze_firebox_casing", <blockmaterial:iron>);
    bronze_firebox_casing.blockHardness = 5.0;
    bronze_firebox_casing.blockResistance = 5.0;
    bronze_firebox_casing.toolClass = "pickaxe";
    bronze_firebox_casing.toolLevel = 2;
    bronze_firebox_casing.register();

var steel_firebox_casing = VanillaFactory.createBlock("steel_firebox_casing", <blockmaterial:iron>);
    steel_firebox_casing.blockHardness = 5.0;
    steel_firebox_casing.blockResistance = 5.0;
    steel_firebox_casing.toolClass = "pickaxe";
    steel_firebox_casing.toolLevel = 2;
    steel_firebox_casing.register();

var titanium_firebox_casing = VanillaFactory.createBlock("titanium_firebox_casing", <blockmaterial:iron>);
    titanium_firebox_casing.blockHardness = 5.0;
    titanium_firebox_casing.blockResistance = 5.0;
    titanium_firebox_casing.toolClass = "pickaxe";
    titanium_firebox_casing.toolLevel = 2;
    titanium_firebox_casing.register();

var tungsten_steel_firebox_casing = VanillaFactory.createBlock("tungsten_steel_firebox_casing", <blockmaterial:iron>);
    tungsten_steel_firebox_casing.blockHardness = 5.0;
    tungsten_steel_firebox_casing.blockResistance = 5.0;
    tungsten_steel_firebox_casing.toolClass = "pickaxe";
    tungsten_steel_firebox_casing.toolLevel = 4;
    tungsten_steel_firebox_casing.register();

//  Coils
var cupronickel_coil = VanillaFactory.createBlock("cupronickel_coil", <blockmaterial:iron>);
    cupronickel_coil.blockSoundType = <soundtype:cloth>;
    cupronickel_coil.blockHardness = 2.0;
    cupronickel_coil.blockResistance = 2.0;
    cupronickel_coil.toolClass = "pickaxe";
    cupronickel_coil.toolLevel = 2;
    cupronickel_coil.register();

var brass_coil = VanillaFactory.createBlock("brass_coil", <blockmaterial:iron>);
    brass_coil.blockSoundType = <soundtype:cloth>;
    brass_coil.blockHardness = 2.0;
    brass_coil.blockResistance = 2.0;
    brass_coil.toolClass = "pickaxe";
    brass_coil.toolLevel = 2;
    brass_coil.register();