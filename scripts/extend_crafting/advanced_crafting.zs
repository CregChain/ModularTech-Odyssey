//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack;
import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.CombinationCrafting;

//Remove all recipes in here
var result as IItemStack[] = [
	<thermalexpansion:frame>,
	<tinymobfarm:gold_farm>,
	<tinymobfarm:diamond_farm>,
	<deepmoblearning:simulation_chamber>,
	<nuclearcraft:rtg_americium>,
	<nuclearcraft:rtg_plutonium>,
	<deepmoblearning:trial_keystone>,
	<modularmachinery:blockcasing:4>,
	<extendedcrafting:material:16>,
	<embers:alchemy_tablet>,
	<mekanism:controlcircuit:1>,
	<environmentaltech:lightning_rod>
];
for a in result{
recipes.remove(a);
}  

//钢制机械方块
TableCrafting.addShaped(0, <cregtech:steelmachingcasing>*2, [
	[<ore:plateSteel>, <ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	[<ore:plateSteel>, <ore:stickSteel>, null, <ore:stickSteel>, <ore:plateSteel>], 
	[<ore:stickSteel>, null, <modularmachinery:blockcasing>, null, <ore:stickSteel>], 
	[<ore:plateSteel>, <ore:stickSteel>, null, <ore:stickSteel>, <ore:plateSteel>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);

//机器框架（热力）- Machine Frame(Thermal)
TableCrafting.addShaped(0, <thermalexpansion:frame>, [
	[<modularmachinery:blockcasing>,<ore:barsIron>, <ore:gearBronze>, <ore:barsIron>,<modularmachinery:blockcasing>],
	[<ore:barsIron>, <ore:ingotDawnstone>, <ore:scaffoldingSteel>, <ore:ingotDawnstone>, <ore:barsIron>],
	[<ore:gearBronze>, <immersiveengineering:metal_decoration0:5>, <embers:mech_core>,<immersiveengineering:metal_decoration0:5>, <ore:gearBronze>],
	[<ore:barsIron>, <ore:ingotDawnstone>, <ore:scaffoldingSteel>, <ore:ingotDawnstone>, <ore:barsIron>],
	[<modularmachinery:blockcasing>, <ore:barsIron>, <ore:gearBronze>, <ore:barsIron>, <modularmachinery:blockcasing>]
]);

//金质生物农场-Gold Farm
TableCrafting.addShaped(0, <tinymobfarm:gold_farm>, [
	[<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<minecraft:blaze_rod>,<minecraft:ender_eye>,<minecraft:blaze_rod>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<tinymobfarm:iron_farm>,<contenttweaker:advancedcircuit>,<tinymobfarm:iron_farm>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<minecraft:blaze_rod>,<minecraft:ender_eye>,<minecraft:blaze_rod>,<enderio:block_holy_fused_glass>],
	[<ore:blockGold>,<ore:blockGold>,<ore:blockGold>,<ore:blockGold>,<ore:blockGold>]
]);

//钻石生物农场-Diamond Farm
TableCrafting.addShaped(0, <tinymobfarm:diamond_farm>, [
	[<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<contenttweaker:mana_crystal2>,<deepmoblearning:living_matter_overworldian>,<contenttweaker:mana_crystal2>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<contenttweaker:epiccircuit>,<tinymobfarm:gold_farm>,<contenttweaker:epiccircuit>,<enderio:block_holy_fused_glass>],
	[<enderio:block_holy_fused_glass>,<contenttweaker:mana_crystal2>,<deepmoblearning:living_matter_overworldian>,<contenttweaker:mana_crystal2>,<enderio:block_holy_fused_glass>],
	[<ore:blockDiamond>,<plustic:osmiridiumblock>,<draconicevolution:draconium_block>,<plustic:osmiridiumblock>,<ore:blockDiamond>]
]);

//大型能源
TableCrafting.addShaped(0, <modularmachinery:blockenergyinputhatch:4>*2, [
	[<tconevo:metal_block:7>, <modularmachinery:blockcasing:4>, <modularmachinery:blockenergyinputhatch:3>, <modularmachinery:blockcasing:4>, <tconevo:metal_block:7>], 
	[<modularmachinery:blockcasing:4>, <enderio:item_capacitor_stellar>, <draconicevolution:particle_generator:2>, <enderio:item_capacitor_stellar>, <modularmachinery:blockcasing:4>], 
	[<modularmachinery:blockenergyinputhatch:3>, <draconicevolution:particle_generator:2>, <draconicevolution:energy_storage_core>, <draconicevolution:particle_generator:2>, <modularmachinery:blockenergyinputhatch:3>], 
	[<modularmachinery:blockcasing:4>, <enderio:item_capacitor_stellar>, <draconicevolution:particle_generator:2>, <enderio:item_capacitor_stellar>, <modularmachinery:blockcasing:4>], 
	[<tconevo:metal_block:7>, <modularmachinery:blockcasing:4>, <modularmachinery:blockenergyinputhatch:3>, <modularmachinery:blockcasing:4>, <tconevo:metal_block:7>]
]);

//模拟室
TableCrafting.addShaped(0, <deepmoblearning:simulation_chamber>*2, [
	[<tconevo:metal>,<plustic:osgloglasingot>,<appliedenergistics2:material:9>,<plustic:osgloglasingot>,<tconevo:metal>],
	[<plustic:osgloglasingot>,<contenttweaker:epiccircuit>,<deepmoblearning:machine_casing>,<contenttweaker:epiccircuit>,<plustic:osgloglasingot>],
	[<appliedenergistics2:material:9>,<tinymobfarm:diamond_farm>,<deepmoblearning:data_model_blank>,<tinymobfarm:diamond_farm>,<appliedenergistics2:material:9>],
	[<plustic:osgloglasingot>,<contenttweaker:epiccircuit>,<deepmoblearning:machine_casing>,<contenttweaker:epiccircuit>,<plustic:osgloglasingot>],
	[<tconevo:metal>,<plustic:osgloglasingot>,<appliedenergistics2:material:9>,<plustic:osgloglasingot>,<tconevo:metal>]
]);

//钚RTG
TableCrafting.addShaped(0, <nuclearcraft:rtg_plutonium>, [
	[<ore:plateDU>, <ore:ingotGraphite>, <ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateDU>], 
	[<ore:ingotGraphite>, <ore:ingotPlutonium238>, <mekanism:energytabletcraft>, <ore:ingotPlutonium238>, <ore:ingotGraphite>], 
	[<ore:plateAdvanced>, <mekanism:energytabletcraft>, <ore:blockGraphite>, <mekanism:energytabletcraft>, <ore:plateAdvanced>], 
	[<ore:ingotGraphite>, <ore:ingotPlutonium238>, <mekanism:energytabletcraft>, <ore:ingotPlutonium238>, <ore:ingotGraphite>], 
	[<ore:plateDU>, <ore:ingotGraphite>, <ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateDU>]
]);

//测试楔石
TableCrafting.addShaped(0, <deepmoblearning:trial_keystone>, [
	[null,null,null,null,null],
	[null,null,<deepmoblearning:trial_key>,null,null],
	[<tconevo:metal>,null,<enderutilities:enderpart:17>,null,<tconevo:metal>],
	[<botania:pylon:2>,<botania:pylon:2>,<deepmoblearning:machine_casing>,<botania:pylon:2>,<botania:pylon:2>],
	[<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<minecraft:beacon>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>]
]);

//大型物品输入
TableCrafting.addShaped(0, <modularmachinery:blockinputbus:4>, [
	[<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>,<avaritiaddons:avaritiaddons_chest>,<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>,null,<enderio:block_infinity>,null,<modularmachinery:blockcasing:4>],
	[<modularmachinery:blockinputbus:3>,<enderio:block_infinity>,<appliedenergistics2:material:38>,<enderio:block_infinity>,<modularmachinery:blockinputbus:3>],
	[<modularmachinery:blockcasing:4>,null,<enderio:block_infinity>,null,<modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>,<avaritiaddons:avaritiaddons_chest>,<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>]
]);

//小型组装机控制器
TableCrafting.addShaped(0, <modularmachinery:mini_assemble_machine_controller>, [
	[<modularmachinery:blockcasing>,<environmentaltech:connector>, <modularmachinery:blockcasing>, <environmentaltech:connector>,<modularmachinery:blockcasing>],
	[<environmentaltech:connector>, <immersiveengineering:material:27>,<contenttweaker:basiccircuit>, <immersiveengineering:material:27>,<environmentaltech:connector>],
	[<modularmachinery:blockcasing>, <contenttweaker:basiccircuit>,<extendedcrafting:material:9>,<contenttweaker:basiccircuit>,<modularmachinery:blockcasing>],
	[<environmentaltech:connector>, <immersiveengineering:material:27>,<contenttweaker:basiccircuit>, <immersiveengineering:material:27>,<environmentaltech:connector>],
	[<modularmachinery:blockcasing>, <environmentaltech:connector>,<modularmachinery:blockcasing>,<environmentaltech:connector>, <modularmachinery:blockcasing>]
]);

//先进组装机控制器
TableCrafting.addShaped(0, <modularmachinery:advanced_assemble_machine_controller>, [
	[<environmentaltech:structure_frame_3>,<modularmachinery:blockcasing:4>,<draconicevolution:draconium_block>, <modularmachinery:blockcasing:4>,<environmentaltech:structure_frame_3>],
	[<modularmachinery:blockcasing:4>, <environmentaltech:structure_panel>,<draconicevolution:draconic_core>, <environmentaltech:structure_panel>,<modularmachinery:blockcasing:4>],
	[<nuclearcraft:ingot_block:7>, <contenttweaker:advancedcircuit>,<modularmachinery:mini_assemble_machine_controller>,<contenttweaker:advancedcircuit>,<nuclearcraft:ingot_block:7>],
	[<modularmachinery:blockcasing:4>,<environmentaltech:structure_panel>,<draconicevolution:draconic_core>,<environmentaltech:structure_panel>,<modularmachinery:blockcasing:4>],
	[<environmentaltech:structure_frame_3>,<modularmachinery:blockcasing:4>,<draconicevolution:draconium_block>,<modularmachinery:blockcasing:4>,<environmentaltech:structure_frame_3>]
]);

//大型电解池控制器
TableCrafting.addShaped(0, <modularmachinery:large_electrolytic_cell_controller>, [
	[<nuclearcraft:part>,<environmentaltech:structure_panel>,<environmentaltech:connector>,<environmentaltech:structure_panel>,<nuclearcraft:part>],
	[<environmentaltech:structure_panel>, <contenttweaker:basiccircuit>,<mekanism:electrolyticcore>, <contenttweaker:basiccircuit>,<environmentaltech:structure_panel>],
	[<environmentaltech:connector>, <mekanism:electrolyticcore>,<nuclearcraft:water_source>,<mekanism:electrolyticcore>,<environmentaltech:connector>],
	[<environmentaltech:structure_panel>,<contenttweaker:basiccircuit>,<mekanism:electrolyticcore>,<contenttweaker:basiccircuit>,<environmentaltech:structure_panel>],
	[<nuclearcraft:part>,<environmentaltech:structure_panel>,<environmentaltech:connector>,<environmentaltech:structure_panel>,<nuclearcraft:part>]
]);

//强化机械外壳
TableCrafting.addShaped(0, <modularmachinery:blockcasing:4>*8, [
	[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],
	[<minecraft:obsidian>,<modularmachinery:blockcasing>,<modularmachinery:blockcasing>,<modularmachinery:blockcasing>,<minecraft:obsidian>],
	[<minecraft:obsidian>,<modularmachinery:blockcasing>,<thermalfoundation:storage_alloy>,<modularmachinery:blockcasing>,<minecraft:obsidian>],
	[<minecraft:obsidian>,<modularmachinery:blockcasing>,<modularmachinery:blockcasing>,<modularmachinery:blockcasing>,<minecraft:obsidian>],
	[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]
]);

//进阶电路基板
TableCrafting.addShaped(0, <contenttweaker:advancedcircuitplate>*4, [
	[<contenttweaker:stainless_ingot>,<nuclearcraft:part:6>,<nuclearcraft:part>,<nuclearcraft:part:6>,<contenttweaker:stainless_ingot>],
	[<nuclearcraft:part:6>,<nuclearcraft:gelatin>,<contenttweaker:compressedresinplate>,<nuclearcraft:gelatin>,<nuclearcraft:part:6>],
	[<nuclearcraft:part>,<contenttweaker:compressedresinplate>,<environmentaltech:connector>,<contenttweaker:compressedresinplate>,<nuclearcraft:part>],
	[<nuclearcraft:part:6>,<nuclearcraft:gelatin>,<contenttweaker:compressedresinplate>,<nuclearcraft:gelatin>,<nuclearcraft:part:6>],
	[<contenttweaker:stainless_ingot>,<nuclearcraft:part:6>,<nuclearcraft:part>,<nuclearcraft:part:6>,<contenttweaker:stainless_ingot>]
]);

//二级虚空矿物采掘机控制器
TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>, <ore:blockErodium>, <ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>, <immersiveengineering:drillhead>,<enderio:item_material:54>, <immersiveengineering:drillhead>,<ore:blockErodium>],
	[<ore:blockErodium>, <contenttweaker:basiccircuit>,<environmentaltech:void_ore_miner_cont_1>,<contenttweaker:basiccircuit>,<ore:blockErodium>],
	[<ore:blockErodium>, <contenttweaker:basiccircuit>,<environmentaltech:laser_core>, <contenttweaker:basiccircuit>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>]
]);

//二级虚空资源采掘机控制器
TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>, <draconicevolution:draconium_block>, <ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>, <immersiveengineering:drillhead>,<enderio:item_material:54>, <immersiveengineering:drillhead>,<ore:blockErodium>],
	[<ore:blockErodium>, <contenttweaker:basiccircuit>,<environmentaltech:void_res_miner_cont_1>,<contenttweaker:basiccircuit>,<ore:blockErodium>],
	[<ore:blockErodium>, <contenttweaker:basiccircuit>,<environmentaltech:laser_core>, <contenttweaker:basiccircuit>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>]
]);

//二级虚空植物采掘机控制器
TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_2>, [
	[<ore:blockErodium>,<ore:blockErodium>, <draconicevolution:draconium_block>, <ore:blockErodium>,<ore:blockErodium>],
	[<ore:blockErodium>, <botania:terraaxe>,<enderio:item_material:54>, <botania:terraaxe>,<ore:blockErodium>],
	[<ore:blockErodium>, <contenttweaker:basiccircuit>,<environmentaltech:void_botanic_miner_cont_1>,<contenttweaker:basiccircuit>,<ore:blockErodium>],
	[<ore:blockErodium>, <contenttweaker:basiccircuit>,<environmentaltech:laser_core>, <contenttweaker:basiccircuit>,<ore:blockErodium>],
	[<environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>,<ore:etLaserLens>,<environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>]
]);

//高级控制电路
TableCrafting.addShaped(0,<mekanism:controlcircuit:1>*8, [
	[null,<mekanism:enrichedalloy>, null,<mekanism:enrichedalloy>,null],
	[<mekanism:enrichedalloy>,<contenttweaker:advancedcircuit>,<mekanism:controlcircuit>,<contenttweaker:advancedcircuit>,<mekanism:enrichedalloy>],
	[null,<mekanism:controlcircuit>,<contenttweaker:advancedcircuitplate>,<mekanism:controlcircuit>,null],
	[<mekanism:enrichedalloy>,<contenttweaker:advancedcircuit>,<mekanism:controlcircuit>,<contenttweaker:advancedcircuit>,<mekanism:enrichedalloy>],
	[null,<mekanism:enrichedalloy>,null,<mekanism:enrichedalloy>,null]
]);

//机械齿轮箱
TableCrafting.addShaped(0,<modularmachinery:blockcasing:3>*2, [
	[<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>,<thermalfoundation:material:295>,<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>,<enderio:item_material:13>,<immersiveengineering:metal_decoration0:4>,<enderio:item_material:13>,<modularmachinery:blockcasing:4>],
	[<thermalfoundation:material:295>,<immersiveengineering:metal_decoration0:3>,<immersiveengineering:metal_decoration0:5>,<immersiveengineering:metal_decoration0:3>,<thermalfoundation:material:295>],
	[<modularmachinery:blockcasing:4>,<enderio:item_material:13>,<immersiveengineering:metal_decoration0:4>,<enderio:item_material:13>,<modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>,<thermalfoundation:material:295>,<modularmachinery:blockcasing:4>,<modularmachinery:blockcasing:4>]
]);

//炼金台
TableCrafting.addShaped(0, <embers:alchemy_tablet>, [
	[null,null,null,null,null],
	[null, <botania:manaresource:4>,<botania:rune:1>, <botania:manaresource:4>,null],
	[<tconstruct:metal:5>, <embers:block_caminite_brick>,<botania:manaresource:4>,<embers:block_caminite_brick>,<tconstruct:metal:5>],
	[<embers:block_caminite_brick>,<botania:runealtar>,<extendedcrafting:table_advanced>,<botania:runealtar>,<embers:block_caminite_brick>],
	[<embers:block_caminite_brick>,<embers:block_dawnstone>,<embers:block_dawnstone>,<embers:block_dawnstone>,<embers:block_caminite_brick>]
]);

//精英合成组件
TableCrafting.addShaped(0, <extendedcrafting:material:16>*4, [
	[null,null,null,<mekanism:compresseddiamond>,null],
	[<mekanism:compresseddiamond>,<mekanism:compresseddiamond>,<mekanism:compresseddiamond>,<extendedcrafting:storage:1>,<mekanism:compresseddiamond>],
	[<extendedcrafting:material:15>,<extendedcrafting:material:15>,<extendedcrafting:material:15>,<mekanism:compresseddiamond>,null],
	[<extendedcrafting:material:15>,<extendedcrafting:material:15>,<extendedcrafting:material:15>,<mekanism:compresseddiamond>,null],
	[<extendedcrafting:material:15>,<extendedcrafting:material:15>,<extendedcrafting:material:15>,<mekanism:compresseddiamond>,null]
]);
/*
//超级缸IV
TableCrafting.addShaped(0, <cregtech:super_tank:3>, [
	[<ore:ingotDraconium>, <ore:sheetHDPE>, <ore:ingotTerrasteel>, <ore:sheetHDPE>, <ore:ingotDraconium>], 
	[<ore:sheetHDPE>, null, <cregtech:ptee_pipe_casing>, null, <ore:sheetHDPE>], 
	[<ore:ingotTerrasteel>, <cregtech:ptee_pipe_casing>, <tconstruct:large_plate>.withTag({Material: "osgloglas"}), <cregtech:ptee_pipe_casing>, <ore:ingotTerrasteel>], 
	[<ore:sheetHDPE>, null, <cregtech:ptee_pipe_casing>, null, <ore:sheetHDPE>], 
	[<ore:ingotDraconium>, <ore:sheetHDPE>, <ore:ingotTerrasteel>, <ore:sheetHDPE>, <ore:ingotDraconium>]
]);

//超级缸V
TableCrafting.addShaped(0, <cregtech:super_tank:4>, [
	[<ore:plateElite>, <ore:sheetEpoxid>, <ore:ingotCrystalMatrix>, <ore:sheetEpoxid>, <ore:plateElite>], 
	[<ore:sheetEpoxid>, <ore:ingotDraconiumAwakened>, <cregtech:ptee_pipe_casing>, <ore:ingotDraconiumAwakened>, <ore:sheetEpoxid>], 
	[<ore:ingotCrystalMatrix>, <cregtech:ptee_pipe_casing>, <tconstruct:large_plate>.withTag({Material: "neutronium"}), <cregtech:ptee_pipe_casing>, <ore:ingotCrystalMatrix>], 
	[<ore:sheetEpoxid>, <ore:ingotDraconiumAwakened>, <cregtech:ptee_pipe_casing>, <ore:ingotDraconiumAwakened>, <ore:sheetEpoxid>], 
	[<ore:plateElite>, <ore:sheetEpoxid>, <ore:ingotCrystalMatrix>, <ore:sheetEpoxid>, <ore:plateElite>]
]);
*/

//避雷针
mods.extendedcrafting.TableCrafting.addShaped(0, <environmentaltech:lightning_rod>*3, [
	[null, <ore:ingotVibrantAlloy>, <ore:blockConductiveIron>, <ore:ingotVibrantAlloy>, null], 
	[null, <environmentaltech:connector>, <ore:blockConductiveIron>, <environmentaltech:connector>, null], 
	[null, <ore:ingotVibrantAlloy>, <ore:blockConductiveIron>, <ore:ingotVibrantAlloy>, null], 
	[null, <environmentaltech:connector>, <ore:blockConductiveIron>, <environmentaltech:connector>, null], 
	[null, <ore:ingotVibrantAlloy>, <ore:blockConductiveIron>, <ore:ingotVibrantAlloy>, null]
]);