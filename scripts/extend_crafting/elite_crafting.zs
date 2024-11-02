//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack;
import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.CombinationCrafting;

//Remove all recipes in here
var result as IItemStack[] = [
	<environmentaltech:void_res_miner_cont_2>,
	<environmentaltech:void_botanic_miner_cont_2>,
	<environmentaltech:void_ore_miner_cont_2>,
	<tinymobfarm:emerald_farm>,
	<deepmoblearning:extraction_chamber>,
	<environmentaltech:void_botanic_miner_cont_3>,
	<environmentaltech:void_res_miner_cont_3>,
	<environmentaltech:void_ore_miner_cont_3>,
	<nuclearcraft:rtg_californium>,
	<mekanism:controlcircuit:2>,
	<enderutilities:handybag:1>
];
for a in result{
recipes.remove(a);
}  

//三级虚空资源采掘机控制器
TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<embers:wildfire_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_res_miner_cont_2>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<tconevo:metal_block:6>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_res_miner_cont_2>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<mekanism:controlcircuit:2>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_res_miner_cont_2>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

//三级虚空植物采掘机控制器
TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<embers:wildfire_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_botanic_miner_cont_2>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<tconevo:metal_block:6>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_botanic_miner_cont_2>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<mekanism:controlcircuit:2>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_botanic_miner_cont_2>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

//三级虚空矿物采掘机控制器
TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<embers:wildfire_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_ore_miner_cont_2>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<tconevo:metal_block:6>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_ore_miner_cont_2>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_3>, [
	[<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<draconicevolution:wyvern_core>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:14>,<mekanism:controlcircuit:2>,<botania:manaresource:14>,<astralsorcery:itemcraftingcomponent:4>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:void_ore_miner_cont_2>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<environmentaltech:laser_core>,<contenttweaker:advancedcircuit>,<contenttweaker:advancedcircuit>,<ore:blockKyronite>],
	[<ore:blockKyronite>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<environmentaltech:laser_core>,<nuclearcraft:alloy:15>,<nuclearcraft:alloy:15>,<ore:blockKyronite>],
	[<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<ore:etLaserLens>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>,<environmentaltech:structure_frame_3>]
]);

//巨型物品输入
TableCrafting.addShaped(0, <modularmachinery:blockinputbus:5>, [
	[<contenttweaker:galaxy_ingot>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <enderutilities:enderpart:54>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <contenttweaker:galaxy_ingot>],
	[<modularmachinery:blockcasing:4>, null, null, <enderio:block_infinity:2>, null, null, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, null, <contenttweaker:mastercircuit>, <enderio:block_infinity:2>, <contenttweaker:mastercircuit>, null, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockinputbus:4>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <nae2:material:2>, <enderio:block_infinity:2>, <enderio:block_infinity:2>, <modularmachinery:blockinputbus:4>],
	[<modularmachinery:blockcasing:4>, null, <contenttweaker:mastercircuit>, <enderio:block_infinity:2>, <contenttweaker:mastercircuit>, null, <modularmachinery:blockcasing:4>],
	[<modularmachinery:blockcasing:4>, null, null, <enderio:block_infinity:2>, null, null, <modularmachinery:blockcasing:4>],
	[<contenttweaker:galaxy_ingot>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <enderutilities:enderpart:54>, <modularmachinery:blockcasing:4>, <modularmachinery:blockcasing:4>, <contenttweaker:galaxy_ingot>]
]);

//锎RTG
TableCrafting.addShaped(0, <nuclearcraft:rtg_californium>*2, [
	[<ore:blockGraphite>, <ore:plateElite>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <ore:plateElite>, <ore:blockGraphite>], 
	[<ore:plateElite>, <mekanism:energytabletcraft>, <ore:ingotVibrantAlloy>, <nuclearcraft:lithium_ion_cell>, <ore:ingotVibrantAlloy>, <mekanism:energytabletcraft>, <ore:plateElite>], 
	[<contenttweaker:stainless_plate>, <nuclearcraft:lithium_ion_cell>, <mekanism:energytabletcraft>, <ore:ingotCalifornium250>, <mekanism:energytabletcraft>, <nuclearcraft:lithium_ion_cell>, <contenttweaker:stainless_plate>], 
	[<contenttweaker:stainless_plate>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotCalifornium250>, <ore:ingotCalifornium250>, <ore:ingotCalifornium250>, <deepmoblearning:glitch_infused_ingot>, <contenttweaker:stainless_plate>], 
	[<contenttweaker:stainless_plate>, <nuclearcraft:lithium_ion_cell>, <mekanism:energytabletcraft>, <ore:ingotCalifornium250>, <mekanism:energytabletcraft>, <nuclearcraft:lithium_ion_cell>, <contenttweaker:stainless_plate>], 
	[<ore:plateElite>, <mekanism:energytabletcraft>, <ore:ingotVibrantAlloy>, <nuclearcraft:lithium_ion_cell>, <ore:ingotVibrantAlloy>, <mekanism:energytabletcraft>, <ore:plateElite>], 
	[<ore:blockGraphite>, <ore:plateElite>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <ore:plateElite>, <ore:blockGraphite>]
]);
TableCrafting.addShaped(0, <nuclearcraft:rtg_californium>*2, [
	[<ore:blockGraphite>, <ore:plateElite>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <ore:plateElite>, <ore:blockGraphite>], 
	[<ore:plateElite>, <mekanism:energytabletcraft>, <ore:ingotVibrantAlloy>, <contenttweaker:li_cell>, <ore:ingotVibrantAlloy>, <mekanism:energytabletcraft>, <ore:plateElite>], 
	[<contenttweaker:stainless_plate>, <contenttweaker:li_cell>, <mekanism:energytabletcraft>, <ore:ingotCalifornium250>, <mekanism:energytabletcraft>, <contenttweaker:li_cell>, <contenttweaker:stainless_plate>], 
	[<contenttweaker:stainless_plate>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotCalifornium250>, <ore:ingotCalifornium250>, <ore:ingotCalifornium250>, <deepmoblearning:glitch_infused_ingot>, <contenttweaker:stainless_plate>], 
	[<contenttweaker:stainless_plate>, <contenttweaker:li_cell>, <mekanism:energytabletcraft>, <ore:ingotCalifornium250>, <mekanism:energytabletcraft>, <contenttweaker:li_cell>, <contenttweaker:stainless_plate>], 
	[<ore:plateElite>, <mekanism:energytabletcraft>, <ore:ingotVibrantAlloy>, <contenttweaker:li_cell>, <ore:ingotVibrantAlloy>, <mekanism:energytabletcraft>, <ore:plateElite>], 
	[<ore:blockGraphite>, <ore:plateElite>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_plate>, <ore:plateElite>, <ore:blockGraphite>]
]);

//精英控制电路
TableCrafting.addShaped(0, <mekanism:controlcircuit:2>*8, [
	[null,null,<mekanism:reinforcedalloy>,<mekanism:controlcircuit:1>,<mekanism:reinforcedalloy>,null,null],
	[null,<mekanism:reinforcedalloy>,<mekanism:controlcircuit:1>,<immersiveengineering:material:27>,<mekanism:controlcircuit:1>,<mekanism:reinforcedalloy>,null],
	[<mekanism:reinforcedalloy>,<contenttweaker:advancedcircuit>,<contenttweaker:epiccircuitplate>,<contenttweaker:epiccircuitplate>,<contenttweaker:epiccircuitplate>,<contenttweaker:advancedcircuit>,<mekanism:reinforcedalloy>],
	[<immersiveengineering:material:27>,<mekanism:controlcircuit:1>,<contenttweaker:epiccircuitplate>,<threng:material:14>,<contenttweaker:epiccircuitplate>,<mekanism:controlcircuit:1>,<immersiveengineering:material:27>],
	[<mekanism:reinforcedalloy>,<contenttweaker:advancedcircuit>,<contenttweaker:epiccircuitplate>,<contenttweaker:epiccircuitplate>,<contenttweaker:epiccircuitplate>,<contenttweaker:advancedcircuit>,<mekanism:reinforcedalloy>],
	[null,<mekanism:reinforcedalloy>,<mekanism:controlcircuit:1>,<immersiveengineering:material:27>,<mekanism:controlcircuit:1>,<mekanism:reinforcedalloy>,null],
	[null,null,<mekanism:reinforcedalloy>,<mekanism:controlcircuit:1>,<mekanism:reinforcedalloy>,null,null]
]);

//手提包(大)
TableCrafting.addShaped(0, <enderutilities:handybag:1>, [
	[<botania:manaresource:22>,<botania:manaresource:22>,<avaritia:resource:4>,<contenttweaker:crystal_3>,<avaritia:resource:4>,<botania:manaresource:22>,<botania:manaresource:22>],
	[<enderutilities:enderpart:2>,<contenttweaker:mana_crystal1>,null,<contenttweaker:epiccircuit>,null,<contenttweaker:mana_crystal1>,<enderutilities:enderpart:2>],
	[<enderutilities:enderpart:2>,null,<appliedenergistics2:material:38>,<appliedenergistics2:material:47>,<appliedenergistics2:material:38>,null,<enderutilities:enderpart:2>],
	[<draconicevolution:wyvern_core>,<extrabotany:material:1>,<enderutilities:enderpart:17>,<enderutilities:handybag>,<enderutilities:enderpart:17>,<extrabotany:material:1>,<draconicevolution:wyvern_core>],
	[<enderutilities:enderpart:2>,null,<appliedenergistics2:material:38>,<appliedenergistics2:material:47>,<appliedenergistics2:material:38>,null,<enderutilities:enderpart:2>],
	[<enderutilities:enderpart:2>,<contenttweaker:mana_crystal1>,null,<contenttweaker:epiccircuit>,null,<contenttweaker:mana_crystal1>,<enderutilities:enderpart:2>],
	[<botania:manaresource:22>,<botania:manaresource:22>,<avaritia:resource:4>,<contenttweaker:crystal_3>,<avaritia:resource:4>,<botania:manaresource:22>,<botania:manaresource:22>]
]);

//四级虚空矿物采掘机控制器
TableCrafting.addShaped(0, <environmentaltech:void_ore_miner_cont_4>, [
	[<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:void_ore_miner_cont_3>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:laser_core>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<tconevo:metal>,<tconevo:metal>,<environmentaltech:laser_core>,<tconevo:metal>,<tconevo:metal>,<ore:blockPladium>],
	[<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<ore:etLaserLens>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>]
]);

//四级虚空资源采掘机控制器
TableCrafting.addShaped(0, <environmentaltech:void_res_miner_cont_4>, [
	[<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:void_res_miner_cont_3>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:laser_core>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<tconevo:metal>,<tconevo:metal>,<environmentaltech:laser_core>,<tconevo:metal>,<tconevo:metal>,<ore:blockPladium>],
	[<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<ore:etLaserLens>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>]
]);

//四级虚空植物采掘机控制器
TableCrafting.addShaped(0, <environmentaltech:void_botanic_miner_cont_4>, [
	[<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:mana_crystal3>,<extrabotany:material:1>,<nuclearcraft:part:12>,<extrabotany:material:1>,<contenttweaker:mana_crystal3>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:void_botanic_miner_cont_3>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<environmentaltech:laser_core>,<contenttweaker:epiccircuit>,<contenttweaker:epiccircuit>,<ore:blockPladium>],
	[<ore:blockPladium>,<tconevo:metal>,<tconevo:metal>,<environmentaltech:laser_core>,<tconevo:metal>,<tconevo:metal>,<ore:blockPladium>],
	[<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<ore:etLaserLens>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>]
]);

//战利品制造机
TableCrafting.addShaped(0, <deepmoblearning:extraction_chamber>, [
	[<tconevo:metal>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<avaritia:resource:1>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<tconevo:metal>],
	[<environmentaltech:structure_frame_4>,<contenttweaker:mana_crystal3>,<deepmoblearning:living_matter_overworldian>,<deepmoblearning:living_matter_hellish>,<deepmoblearning:living_matter_extraterrestrial>,<contenttweaker:mana_crystal3>,<environmentaltech:structure_frame_4>],
	[<environmentaltech:structure_frame_4>,<deepmoblearning:living_matter_extraterrestrial>,<draconicevolution:draconic_ingot>,<avaritia:resource:4>,<draconicevolution:draconic_ingot>,<deepmoblearning:living_matter_overworldian>,<environmentaltech:structure_frame_4>],
	[<avaritia:resource:1>,<deepmoblearning:living_matter_hellish>,<avaritia:resource:4>,<deepmoblearning:machine_casing>,<avaritia:resource:4>,<deepmoblearning:living_matter_hellish>,<avaritia:resource:1>],
	[<environmentaltech:structure_frame_4>,<deepmoblearning:living_matter_overworldian>,<draconicevolution:draconic_ingot>,<avaritia:resource:4>,<draconicevolution:draconic_ingot>,<deepmoblearning:living_matter_extraterrestrial>,<environmentaltech:structure_frame_4>],
	[<environmentaltech:structure_frame_4>,<contenttweaker:mana_crystal3>,<deepmoblearning:living_matter_extraterrestrial>,<deepmoblearning:living_matter_hellish>,<deepmoblearning:living_matter_overworldian>,<contenttweaker:mana_crystal3>,<environmentaltech:structure_frame_4>],
	[<tconevo:metal>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<avaritia:resource:1>,<environmentaltech:structure_frame_4>,<environmentaltech:structure_frame_4>,<tconevo:metal>]
]);

//绿宝石生物农场
TableCrafting.addShaped(0, <tinymobfarm:emerald_farm>, [
	[<enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>, <enderio:block_holy_fused_glass:0>], 
	[<enderio:block_holy_fused_glass:0>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <enderio:block_holy_fused_glass:0>],
	[<enderio:block_holy_fused_glass:0>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:living_matter_extraterrestrial>, <contenttweaker:mana_crystal3>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:glitch_infused_ingot>, <enderio:block_holy_fused_glass:0>],
	[<enderio:block_holy_fused_glass:0>, <deepmoblearning:glitch_infused_ingot>, <contenttweaker:mastercircuit>, <tinymobfarm:diamond_farm>, <contenttweaker:mastercircuit>, <deepmoblearning:glitch_infused_ingot>, <enderio:block_holy_fused_glass:0>],
	[<enderio:block_holy_fused_glass:0>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:living_matter_extraterrestrial>, <contenttweaker:mana_crystal3>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:glitch_infused_ingot>, <enderio:block_holy_fused_glass:0>],
	[<enderio:block_holy_fused_glass:0>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <enderio:block_holy_fused_glass:0>],
	[<minecraft:emerald_block>, <minecraft:emerald_block>, <contenttweaker:zl_block:0>, <tconevo:metal_block:1>, <contenttweaker:zl_block:0>, <minecraft:emerald_block>, <minecraft:emerald_block>]
]);

/*
TableCrafting.addShaped(0, <enderutilities:handybag:1>, [
	[,,,,,,],
	[,,,,,,],
	[,,,,,,],
	[,,,,,,],
	[,,,,,,],
	[,,,,,,],
	[,,,,,,]
]);
*/
