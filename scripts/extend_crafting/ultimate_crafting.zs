//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack;
import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.CombinationCrafting;

//Remove all recipes in here
var result as IItemStack[] = [
	<environmentaltech:void_ore_miner_cont_4>,
	<environmentaltech:void_res_miner_cont_4>,
	<environmentaltech:void_botanic_miner_cont_4>,
	<environmentaltech:void_ore_miner_cont_5>,
	<environmentaltech:void_res_miner_cont_5>,
	<environmentaltech:void_botanic_miner_cont_5>,
	<environmentaltech:void_ore_miner_cont_6>,
	<environmentaltech:void_res_miner_cont_6>,
	<environmentaltech:void_botanic_miner_cont_6>
];
for a in result{
recipes.remove(a);
}  

//五级矿机
TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_5>, [
	[<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>],
	[<ore:blockIonite>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockIonite>],
	[<ore:blockIonite>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockIonite>],
	[<ore:blockIonite>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:part>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockIonite>],
	[<ore:blockIonite>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:void_ore_miner_cont_4>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockIonite>],
	[<ore:blockIonite>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:laser_core>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockIonite>],
	[<ore:blockIonite>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockIonite>],
	[<ore:blockIonite>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockIonite>],
	[<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<astralsorcery:itemcoloredlens:6>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>]
]);

//五级资源
TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_5>, [
	[<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>],
	[<ore:blockIonite>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockIonite>],
	[<ore:blockIonite>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockIonite>],
	[<ore:blockIonite>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:part>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockIonite>],
	[<ore:blockIonite>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:void_res_miner_cont_4>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockIonite>],
	[<ore:blockIonite>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:laser_core>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockIonite>],
	[<ore:blockIonite>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockIonite>],
	[<ore:blockIonite>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockIonite>],
	[<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<astralsorcery:itemcoloredlens:6>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>]
]);

//五级植物
TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_5>, [
	[<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>,<ore:blockIonite>],
	[<ore:blockIonite>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockIonite>],
	[<ore:blockIonite>,<extrabotany:material:1>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<nuclearcraft:part:12>,<contenttweaker:galaxy_ingot>,<contenttweaker:galaxy_ingot>,<extrabotany:material:1>,<ore:blockIonite>],
	[<ore:blockIonite>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:part>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockIonite>],
	[<ore:blockIonite>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:void_botanic_miner_cont_4>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockIonite>],
	[<ore:blockIonite>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<environmentaltech:laser_core>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<contenttweaker:mastercircuit>,<ore:blockIonite>],
	[<ore:blockIonite>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockIonite>],
	[<ore:blockIonite>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<environmentaltech:laser_core>,<tconevo:metal:5>,<tconevo:metal:5>,<tconevo:metal:5>,<ore:blockIonite>],
	[<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<astralsorcery:itemcoloredlens:6>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_5>]
]);

//超级物品输入
TableCrafting.addShaped(0, <modularmachinery:blockinputbus:6> * 2, [
	[<avaritia:block_resource:0>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockinputbus:5>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <avaritia:block_resource:0>], 
	[<modularmachinery:blockcasing:4>, <contenttweaker:zl_block:0>, null, <enderio:block_infinity:2>, <contenttweaker:galaxy_ingot>, <enderio:block_infinity:2>, null, <contenttweaker:zl_block:0>, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, null, <contenttweaker:zl_block:0>, <enderio:block_infinity:2>, <contenttweaker:galaxy_ingot>, <enderio:block_infinity:2>, <contenttweaker:zl_block:0>, null, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <enderutilities:enderpart:54>, <nae2:material:2>, <enderutilities:enderpart:54>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockinputbus:5>, <contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>, <nae2:material:2>, <eternalsingularity:eternal_singularity>, <nae2:material:2>, <contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>, <modularmachinery:blockinputbus:5>],
	[<modularmachinery:blockcasing:4>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <enderutilities:enderpart:54>, <nae2:material:2>, <enderutilities:enderpart:54>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, null, <contenttweaker:zl_block:0>, <enderio:block_infinity:2>, <contenttweaker:galaxy_ingot>, <enderio:block_infinity:2>, <contenttweaker:zl_block:0>, null, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, <contenttweaker:zl_block:0>, null, <enderio:block_infinity:2>, <contenttweaker:galaxy_ingot>, <enderio:block_infinity:2>, null, <contenttweaker:zl_block:0>, <modularmachinery:blockcasing:4>],
	[<avaritia:block_resource:0>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockinputbus:5>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <avaritia:block_resource:0>]
]);

//六级矿机
mods.extendedcrafting.TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_6>, 
[
    [<ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:part>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <draconicevolution:draconic_pick>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:void_ore_miner_cont_5>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockAethium>],
    [<ore:blockAethium>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockAethium>],
    [<ore:blockAethium>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockAethium>],
    [<environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <avaritiatweaks:enhancement_crystal>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>]
]);

//六级资源
mods.extendedcrafting.TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_6>, 
[
    [<ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:part>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <draconicevolution:draconic_pick>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:void_res_miner_cont_5>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockAethium>],
    [<ore:blockAethium>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockAethium>],
    [<ore:blockAethium>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockAethium>],
    [<environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <avaritiatweaks:enhancement_crystal>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>]
]);

//六级植物
mods.extendedcrafting.TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_6>, 
[
    [<ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:part>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <draconicevolution:draconic_pick>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:void_botanic_miner_cont_5>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockAethium>],
    [<ore:blockAethium>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <environmentaltech:laser_core>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <contenttweaker:extremecircuit>, <ore:blockAethium>],
    [<ore:blockAethium>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockAethium>],
    [<ore:blockAethium>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <environmentaltech:laser_core>, <tconevo:metal:10>, <tconevo:metal:10>, <tconevo:metal:10>, <ore:blockAethium>],
    [<environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <avaritiatweaks:enhancement_crystal>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>]
]);

//聚变反应堆
mods.extendedcrafting.TableCrafting.addShaped(0, <nuclearcraft:fusion_core>, 
[
	[<enderio:block_infinity:2>, <enderio:block_infinity:2>, <nuclearcraft:part:2>, <contenttweaker:galaxy_ingot>, <tconevo:metal:10>, <contenttweaker:galaxy_ingot>, <nuclearcraft:part:2>, <enderio:block_infinity:2>, <enderio:block_infinity:2>], 
	[<enderio:block_infinity:2>, <mekanism:controlcircuit:3>, <contenttweaker:mastercircuit>, <mekanism:controlcircuit:3>, <nuclearcraft:part:12>, <mekanism:controlcircuit:3>, <contenttweaker:mastercircuit>, <mekanism:controlcircuit:3>, <enderio:block_infinity:2>],
	[null, <contenttweaker:mastercircuit>, <modularmachinery:large_chemical_reactor_controller>, <mekanism:controlcircuit:3>, <draconicevolution:crafting_injector:3>, <mekanism:controlcircuit:3>, <modularmachinery:large_chemical_reactor_controller>, <contenttweaker:mastercircuit>, null],
	[null, null, <contenttweaker:galaxy_ingot>, <nuclearcraft:fission_controller_new_fixed>, <nuclearcraft:block_depleted_californium>, <nuclearcraft:chemical_reactor_idle>, <contenttweaker:galaxy_ingot>, null, null],
	[null, null, <tconevo:metal:10>, <nuclearcraft:block_depleted_californium>, <contenttweaker:furance2>, <nuclearcraft:block_depleted_californium>, <tconevo:metal:10>, null, null],
	[null, null, <contenttweaker:galaxy_ingot>, <nuclearcraft:chemical_reactor_idle>, <nuclearcraft:block_depleted_californium>, <nuclearcraft:fission_controller_new_fixed>, <contenttweaker:galaxy_ingot>, null, null],
	[null, <contenttweaker:mastercircuit>, <modularmachinery:large_chemical_reactor_controller>, <mekanism:controlcircuit:3>, <draconicevolution:crafting_injector:3>, <mekanism:controlcircuit:3>, <modularmachinery:large_chemical_reactor_controller>, <contenttweaker:mastercircuit>, null],
	[<enderio:block_infinity:2>, <mekanism:controlcircuit:3>, <contenttweaker:mastercircuit>, <mekanism:controlcircuit:3>, <nuclearcraft:part:12>, <mekanism:controlcircuit:3>, <contenttweaker:mastercircuit>, <mekanism:controlcircuit:3>, <enderio:block_infinity:2>],
	[<enderio:block_infinity:2>, <enderio:block_infinity:2>, <nuclearcraft:part:2>, <contenttweaker:galaxy_ingot>, <tconevo:metal:10>, <contenttweaker:galaxy_ingot>, <nuclearcraft:part:2>, <enderio:block_infinity:2>, <enderio:block_infinity:2>]
]);

//ohxihh
mods.extendedcrafting.TableCrafting.addShaped(0, <contenttweaker:ohxihh>, [
	[<cregtech:missing_block>, <cregtech:missing_block>, <cregtech:missing_block>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <cregtech:missing_block>, <cregtech:missing_block>, <cregtech:missing_block>], 
	[<cregtech:missing_block>, <ore:circuitUltimate>, <ore:ingotCrystalMatrix>, <tconstruct:materials:50>, <contenttweaker:universe_ingot>, <tconstruct:materials:50>, <ore:ingotCrystalMatrix>, <ore:circuitUltimate>, <cregtech:missing_block>], 
	[<cregtech:missing_block>, <ore:ingotCrystalMatrix>, <contenttweaker:extremecircuit>, <ore:ingotCrystalMatrix>, <contenttweaker:universe_ingot>, <ore:ingotCrystalMatrix>, <contenttweaker:extremecircuit>, <ore:ingotCrystalMatrix>, <cregtech:missing_block>], 
	[<ore:ingotCosmicNeutronium>, <tconstruct:materials:50>, <ore:ingotCrystalMatrix>, <ore:gearChaoticMetal>, <contenttweaker:universe_ingot>, <ore:gearChaoticMetal>, <ore:ingotCrystalMatrix>, <tconstruct:materials:50>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <extrabotany:silenteternity>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <tconstruct:materials:50>, <ore:ingotCrystalMatrix>, <ore:gearChaoticMetal>, <contenttweaker:universe_ingot>, <ore:gearChaoticMetal>, <ore:ingotCrystalMatrix>, <tconstruct:materials:50>, <ore:ingotCosmicNeutronium>], 
	[<cregtech:missing_block>, <ore:ingotCrystalMatrix>, <contenttweaker:extremecircuit>, <ore:ingotCrystalMatrix>, <contenttweaker:universe_ingot>, <ore:ingotCrystalMatrix>, <contenttweaker:extremecircuit>, <ore:ingotCrystalMatrix>, <cregtech:missing_block>], 
	[<cregtech:missing_block>, <ore:circuitUltimate>, <ore:ingotCrystalMatrix>, <tconstruct:materials:50>, <contenttweaker:universe_ingot>, <tconstruct:materials:50>, <ore:ingotCrystalMatrix>, <ore:circuitUltimate>, <cregtech:missing_block>], 
	[<cregtech:missing_block>, <cregtech:missing_block>, <cregtech:missing_block>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <cregtech:missing_block>, <cregtech:missing_block>, <cregtech:missing_block>]
]);

/*
TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_4>, [
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,],
	[,,,,,,,,]
]);
*/
