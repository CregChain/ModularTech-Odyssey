//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.avaritia.ExtremeCrafting;
import mods.avaritia.Compressor;

//==================================================================================无尽贪婪==================================================================================
//无尽锭
ExtremeCrafting.remove(<avaritia:resource:6>);

//终极工作台
recipes.remove(<avaritia:extreme_crafting_table>);

//中子磨珠
recipes.removeShaped(<avaritiaio:grindingballneutronium> * 64, [[null, <avaritia:resource:4>, null],[<avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>], [null, <avaritia:resource:4>, null]]);
recipes.addShaped(<avaritiaio:grindingballneutronium> * 24, [[null, <avaritia:resource:4>, null],[<avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>], [null, <avaritia:resource:4>, null]]);
mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritiaio:grindingballneutronium>);

//移除中子粒/尘埃熔融配方
mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritia:resource:3>);
mods.tconstruct.Melting.removeRecipe(<liquid:neutronium>,<avaritia:resource:2>);

//移除水晶矩阵锭配方
recipes.remove(<avaritia:resource:1>);

//中子素收集器
ExtremeCrafting.remove(<avaritia:neutron_collector>);
mods.avaritia.ExtremeCrafting.addShaped("neutron_collector", <avaritia:neutron_collector> * 3, 
[
    [<enderio:block_alloy:8>, <enderio:block_alloy:8>, <contenttweaker:advancedcircuit>, <extendedcrafting:material:24>, <environmentaltech:structure_frame_3>, <extendedcrafting:material:24>, <contenttweaker:advancedcircuit>, <enderio:block_alloy:8>, <enderio:block_alloy:8>], 
    [<enderio:block_alloy:8>, null, null, <mekanism:polyethene:2>, <contenttweaker:advancedcircuit>, <mekanism:polyethene:2>, null, null, <enderio:block_alloy:8>],
    [<avaritia:resource:1>, null, <mekanism:polyethene:2>, <minecraft:redstone_block>, <minecraft:redstone_block>, <minecraft:redstone_block>, <mekanism:polyethene:2>, null, <avaritia:resource:1>],
    [<botania:manaresource:4>, <mekanism:polyethene:2>, <minecraft:redstone_block>, <draconicevolution:draconium_block:0>, <avaritia:resource:1>, <draconicevolution:draconium_block:0>, <minecraft:redstone_block>, <mekanism:polyethene:2>, <botania:manaresource:4>],
    [<environmentaltech:structure_frame_3>, <contenttweaker:advancedcircuit>, <minecraft:redstone_block>, <plustic:osgloglasingot>, <extendedcrafting:material:10>, <plustic:osgloglasingot>, <minecraft:redstone_block>, <contenttweaker:advancedcircuit>, <environmentaltech:structure_frame_3>],
    [<botania:manaresource:4>, <mekanism:polyethene:2>, <minecraft:redstone_block>, <draconicevolution:draconium_block:0>, <avaritia:resource:1>, <draconicevolution:draconium_block:0>, <minecraft:redstone_block>, <mekanism:polyethene:2>, <botania:manaresource:4>],
    [<avaritia:resource:1>, null, <mekanism:polyethene:2>, <minecraft:redstone_block>, <minecraft:redstone_block>, <minecraft:redstone_block>, <mekanism:polyethene:2>, null, <avaritia:resource:1>],
    [<enderio:block_alloy:0>, null, null, <mekanism:polyethene:2>, <contenttweaker:advancedcircuit>, <mekanism:polyethene:2>, null, null, <enderio:block_alloy:0>],
    [<enderio:block_alloy:0>, <enderio:block_alloy:0>, <contenttweaker:advancedcircuit>, <extendedcrafting:material:24>, <environmentaltech:structure_frame_3>, <extendedcrafting:material:24>, <contenttweaker:advancedcircuit>, <enderio:block_alloy:0>, <enderio:block_alloy:0>]
]);

//中子素压缩机
ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
mods.avaritia.ExtremeCrafting.addShaped("neutronium_compressor", <avaritia:neutronium_compressor> * 2, 
[
	[<enderio:block_alloy:8>, <enderio:block_alloy:8>, <contenttweaker:extremecircuit>, <minecraft:hopper>, <enderutilities:enderpart:54>, <minecraft:hopper>, <contenttweaker:extremecircuit>, <enderio:block_alloy:8>, <enderio:block_alloy:8>], 
	[<enderio:block_alloy:8>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, null, null, null, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <enderio:block_alloy:8>],
	[<environmentaltech:structure_frame_3>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, null, null, null, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <environmentaltech:structure_frame_3>],
	[<enderio:block_alloy_endergy:3>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>,<contenttweaker:extremecircuit>, <avaritia:block_resource:0>, <contenttweaker:extremecircuit>, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <enderio:block_alloy_endergy:3>],
	[<tconevo:metal:10>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, <contenttweaker:galaxy_ingot>, <extendedcrafting:material:11>, <contenttweaker:galaxy_ingot>, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <tconevo:metal:10>],
	[<enderio:block_alloy_endergy:3>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, <contenttweaker:extremecircuit>, <avaritia:block_resource:0>, <contenttweaker:extremecircuit>, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <enderio:block_alloy_endergy:3>],
	[<environmentaltech:structure_frame_3>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, null, null, null, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <environmentaltech:structure_frame_3>],
	[<enderio:block_alloy:6>, <mekanism:polyethene:2>, <nuclearcraft:alloy:10>, null, null, null, <nuclearcraft:alloy:10>, <mekanism:polyethene:2>, <enderio:block_alloy:6>],
	[<enderio:block_alloy:6>, <enderio:block_alloy:6>, <contenttweaker:extremecircuit>, <enderio:block_alloy_endergy:3>, <enderio:block_alloy_endergy:3>, <enderio:block_alloy_endergy:3>, <contenttweaker:extremecircuit>, <enderio:block_alloy:6>, <enderio:block_alloy:6>]
]);

//永恒奇点
ExtremeCrafting.remove(<eternalsingularity:eternal_singularity>);

//无尽催化剂
ExtremeCrafting.remove(<avaritia:resource:5>);
mods.avaritia.ExtremeCrafting.addShaped("catalyst", <avaritia:resource:5> * 3, 
[
	[null, null, null, null, <enderio:block_alloy_endergy:3>, null, null, null, null], 
	[null, <contenttweaker:galaxy_ingot>, null, null, <environmentaltech:ionite>, null, null, <contenttweaker:mana_crystal3>, null],
	[null, null, <deepmoblearning:glitch_infused_ingot>, null, <bloodmagic:decorative_brick>, null, <appliedenergistics2:material:47>, null, null],
	[null, null, null, <avaritia:resource:1>, <tconevo:metal_block:1>, <contenttweaker:extremecircuit>, null, null, null],
	[<extendedcrafting:storage:3>, <nuclearcraft:block_ice>, <nuclearcraft:accelerator_electromagnet_idle>, <botania:storage:1>, <eternalsingularity:eternal_singularity>,<embers:block_dawnstone>, <nuclearcraft:tritium_lamp>, <mekanism:reinforcedplasticblock:15>, <extendedcrafting:storage:7>],
	[null, null, null, <avaritia:endest_pearl>, <tconstruct:metal:2>, <tconevo:metal:10>, null, null, null],
	[null, null, <avaritia:ultimate_stew>, null, <bloodmagic:decorative_brick:2>, null, <avaritia:resource:4>, null, null],
	[null, <avaritia:cosmic_meatballs>, null, null, <enderio:block_alloy_endergy:6>, null, null, <botania:manaresource:14>, null],
	[null, null, null, null, <tconevo:metal_block:7>, null, null, null, null]
]);

//奇点
mods.avaritia.Compressor.remove(<avaritia:singularity>);
mods.avaritia.Compressor.remove(<avaritia:singularity:1>);
mods.avaritia.Compressor.remove(<avaritia:singularity:2>);
mods.avaritia.Compressor.remove(<avaritia:singularity:3>);
mods.avaritia.Compressor.remove(<avaritia:singularity:4>);
mods.avaritia.Compressor.remove(<avaritia:singularity:5>);
mods.avaritia.Compressor.remove(<avaritia:singularity:6>);
mods.avaritia.Compressor.remove(<avaritia:singularity:7>);
mods.avaritia.Compressor.remove(<avaritia:singularity:8>);
mods.avaritia.Compressor.remove(<avaritia:singularity:9>);
mods.avaritia.Compressor.remove(<avaritia:singularity:10>);
mods.avaritia.Compressor.remove(<avaritia:singularity:11>);
mods.avaritia.Compressor.remove(<avaritia:singularity:13>);
mods.avaritia.Compressor.remove(<avaritia:singularity:14>);
mods.avaritia.Compressor.add("iron",<avaritia:singularity>, -160, <minecraft:iron_block>);
mods.avaritia.Compressor.add("gold",<avaritia:singularity:1>, -300, <minecraft:gold_block>);
mods.avaritia.Compressor.add("lapis",<avaritia:singularity:2>, -160, <minecraft:lapis_block>);
mods.avaritia.Compressor.add("redstone",<avaritia:singularity:3>, -160, <minecraft:redstone_block>);
mods.avaritia.Compressor.add("quartz",<avaritia:singularity:4>,-160, <minecraft:quartz_block>);
mods.avaritia.Compressor.add("copper",<avaritia:singularity:5>, -160, <thermalfoundation:storage>);
mods.avaritia.Compressor.add("tin",<avaritia:singularity:6>, -160, <thermalfoundation:storage:1>);
mods.avaritia.Compressor.add("lead",<avaritia:singularity:7>, -240, <thermalfoundation:storage:3>);
mods.avaritia.Compressor.add("silver",<avaritia:singularity:8>, -240, <thermalfoundation:storage:2>);
mods.avaritia.Compressor.add("nickel",<avaritia:singularity:9>, -300, <thermalfoundation:storage:5>);
mods.avaritia.Compressor.add("diamond",<avaritia:singularity:10>, -300, <minecraft:diamond_block>);
mods.avaritia.Compressor.add("emerald",<avaritia:singularity:11>, -360,<minecraft:emerald_block> );
mods.avaritia.Compressor.add("platinum",<avaritia:singularity:13>, -300, <thermalfoundation:storage:6>);
mods.avaritia.Compressor.add("iridium",<avaritia:singularity:14>, -380,<thermalfoundation:storage:7> );

//超级煲
ExtremeCrafting.remove(<avaritia:ultimate_stew>);

//寰宇肉丸
ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);

//终望珍珠
ExtremeCrafting.remove(<avaritia:endest_pearl>);
mods.avaritia.ExtremeCrafting.addShaped("endest_pearl", <avaritia:endest_pearl> * 4, 
[
	[null, null, null, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, null, null, null], 
	[null, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, <minecraft:ender_eye>, <enderutilities:enderpart:2>, <appliedenergistics2:material:9>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, null],
	[null, <thermalfoundation:storage_alloy:7>, <torchmaster:frozen_pearl>, <minecraft:ender_eye>, <enderutilities:enderpart:2>, <appliedenergistics2:material:9>, <torchmaster:frozen_pearl>, <thermalfoundation:storage_alloy:7>, null],
	[<thermalfoundation:storage_alloy:7>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <enderutilities:enderpearlreusable:1>, <appliedenergistics2:material:9>, <appliedenergistics2:material:9>, <appliedenergistics2:material:9>, <thermalfoundation:storage_alloy:7>],
	[<thermalfoundation:storage_alloy:7>, <enderutilities:enderpart:2>, <enderutilities:enderpart:2>, <enderutilities:enderpearlreusable:1>, <extendedcrafting:material:40>, <enderutilities:enderpearlreusable:1>, <enderutilities:enderpart:2>, <enderutilities:enderpart:2>, <thermalfoundation:storage_alloy:7>],
	[<thermalfoundation:storage_alloy:7>, <appliedenergistics2:material:9>, <appliedenergistics2:material:9>, <appliedenergistics2:material:9>, <enderutilities:enderpearlreusable:1>, <minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>, <thermalfoundation:storage_alloy:7>],
	[null, <thermalfoundation:storage_alloy:7>, <torchmaster:frozen_pearl>, <appliedenergistics2:material:9>, <enderutilities:enderpart:2>, <minecraft:ender_eye>, <torchmaster:frozen_pearl>, <thermalfoundation:storage_alloy:7>, null],
	[null, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, <appliedenergistics2:material:9>, <enderutilities:enderpart:2>, <minecraft:ender_eye>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, null],
	[null, null, null, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, <thermalfoundation:storage_alloy:7>, null, null, null]
]);

//抽屉创造存储升级
mods.avaritia.ExtremeCrafting.addShaped("upgrade_creative", <storagedrawers:upgrade_creative:0> * 2, 
[
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null],
	[<draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, null, null, null, <extendedcrafting:material:24>, <extendedcrafting:material:24>, <extendedcrafting:material:24>],
	[<avaritia:resource:4>, null, null, <draconicevolution:draconic_ingot>, null, <extendedcrafting:material:24>, null, null, <avaritia:resource:4>],
	[<avaritia:resource:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <appliedenergistics2:material:47>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <avaritia:resource:4>],
	[<avaritia:resource:4>, null, null, <extendedcrafting:material:24>, null, <draconicevolution:draconic_ingot>, null, null, <avaritia:resource:4>],
	[<extendedcrafting:material:24>, <extendedcrafting:material:24>, <extendedcrafting:material:24>, null, null, null, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
]);
