//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

//====================================================================================龙研====================================================================================
//龙矿挖掘等级
<draconicevolution:draconium_ore:0>.asBlock().definition.setHarvestLevel("pickaxe",10);
<draconicevolution:draconium_ore:1>.asBlock().definition.setHarvestLevel("pickaxe",10);
<draconicevolution:draconium_ore:2>.asBlock().definition.setHarvestLevel("pickaxe",10);

//基础注入装置
recipes.remove(<draconicevolution:crafting_injector:0>);
recipes.addShaped(<draconicevolution:crafting_injector>*2, [[<enderutilities:enderpart:1>, <enderutilities:enderpart:11>, <enderutilities:enderpart:1>],[<contenttweaker:basiccircuit>, <botania:rune:8>, <contenttweaker:basiccircuit>], [<minecraft:iron_block>, <extendedcrafting:material:8>, <minecraft:iron_block>]]);

//传送符咒
recipes.remove(<draconicevolution:dislocator>);
recipes.addShaped(<draconicevolution:dislocator>, [[<minecraft:blaze_powder>, <minecraft:chorus_fruit_popped>, <minecraft:blaze_powder>],[<minecraft:chorus_fruit_popped>, <tconstruct:ingots:2>, <minecraft:chorus_fruit_popped>], [<minecraft:blaze_powder>, <minecraft:chorus_fruit_popped>, <minecraft:blaze_powder>]]);

//聚合核心
recipes.remove(<draconicevolution:fusion_crafting_core>);
recipes.addShaped(<draconicevolution:fusion_crafting_core>, [[<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>],[<botania:manaresource:9>, <embers:wildfire_core>, <botania:manaresource:9>], [<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>]]);
recipes.addShaped(<draconicevolution:fusion_crafting_core>, [[<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>],[<botania:manaresource:9>, <tconevo:metal_block:6>, <botania:manaresource:9>], [<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>]]);
recipes.addShaped(<draconicevolution:fusion_crafting_core>, [[<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>],[<draconicevolution:draconic_core>, <botania:manaresource:9>, <draconicevolution:draconic_core>], [<minecraft:lapis_block>, <minecraft:nether_star>, <minecraft:lapis_block>]]);

//飞龙镐
recipes.remove(<draconicevolution:wyvern_pick>);
recipes.addShaped(<draconicevolution:wyvern_pick>, [[<tconevo:metal>, <tconevo:metal>, <tconevo:metal>],[null, <botania:terrapick>, null], [null, <draconicevolution:wyvern_energy_core>, null]]);

//飞龙套
recipes.remove(<draconicevolution:wyvern_boots>);
recipes.remove(<draconicevolution:wyvern_legs>);
recipes.remove(<draconicevolution:wyvern_chest>);
recipes.remove(<draconicevolution:wyvern_helm>);
recipes.addShaped(<draconicevolution:wyvern_boots>, [[<tconevo:metal>, null, <tconevo:metal>],[<tconevo:metal>, <draconicevolution:wyvern_energy_core>, <tconevo:metal>], [null, null, null]]);
recipes.addShaped(<draconicevolution:wyvern_legs>, [[<tconevo:metal>, <tconevo:metal>, <tconevo:metal>],[<tconevo:metal>, <draconicevolution:wyvern_energy_core>, <tconevo:metal>], [<tconevo:metal>, null, <tconevo:metal>]]);
recipes.addShaped(<draconicevolution:wyvern_chest>, [[<tconevo:metal>, <draconicevolution:wyvern_energy_core>, <tconevo:metal>],[<tconevo:metal>, <tconevo:metal>, <tconevo:metal>], [<tconevo:metal>, <tconevo:metal>, <tconevo:metal>]]);
recipes.addShaped(<draconicevolution:wyvern_helm>, [[<tconevo:metal>, <tconevo:metal>, <tconevo:metal>],[<tconevo:metal>, <draconicevolution:wyvern_energy_core>, <tconevo:metal>], [null, null, null]]);

//觉醒龙锭
recipes.addShaped(<draconicevolution:draconic_ingot>, [[<draconicevolution:nugget:1>, <draconicevolution:nugget:1>, <draconicevolution:nugget:1>],[<draconicevolution:nugget:1>, <draconicevolution:nugget:1>, <draconicevolution:nugget:1>], [<draconicevolution:nugget:1>, <draconicevolution:nugget:1>, <draconicevolution:nugget:1>]]);
recipes.addShapeless(<draconicevolution:draconic_ingot> * 9, [<draconicevolution:draconic_block>]);

//龙芯
recipes.remove(<draconicevolution:draconic_core>);

//能量核心
recipes.remove(<draconicevolution:energy_storage_core>);
recipes.addShaped(<draconicevolution:energy_storage_core>, [[<mekanism:basicblock2:3>.withTag({tier: 2}), <fluxnetworks:gargantuanfluxstorage>, <mekanism:basicblock2:3>.withTag({tier: 2})],[<draconicevolution:wyvern_energy_core>, <draconicevolution:wyvern_core>, <draconicevolution:wyvern_energy_core>], [<enderio:block_cap_bank:3>, <fluxnetworks:gargantuanfluxstorage>,<enderio:block_cap_bank:3>]]);

//飞龙/神龙屏蔽项链
recipes.remove(<draconicadditions:wyvern_shield_necklace>);
recipes.remove(<draconicadditions:draconic_shield_necklace>);
recipes.addShapeless(<draconicadditions:wyvern_shield_necklace>, [<draconicadditions:basic_shield_necklace>,<tconevo:metal>]);
recipes.addShapeless(<draconicadditions:draconic_shield_necklace>, [<draconicadditions:wyvern_shield_necklace>,<tconevo:metal:5>]);
