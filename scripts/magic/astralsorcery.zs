//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.astralsorcery.Altar;
import mods.astralsorcery.Lightwell;

//祭坛转换
recipes.addShapeless(<astralsorcery:blockaltar>, [<astralsorcery:blockaltar>]);
recipes.addShapeless(<astralsorcery:blockaltar:3>, [<astralsorcery:blockaltar:3>]);
recipes.addShapeless(<astralsorcery:blockaltar:2>, [<astralsorcery:blockaltar:2>]);
recipes.addShapeless(<astralsorcery:blockaltar:1>, [<astralsorcery:blockaltar:1>]);

//共鸣星杖
recipes.remove(<astralsorcery:itemwand>);
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");
recipes.addShaped(<astralsorcery:itemwand>, [[null, <embers:ingot_dawnstone>, <appliedenergistics2:material:9>],[null, <tconstruct:tough_tool_rod>.withTag({Material: "aquamarine"}), <embers:ingot_dawnstone>], [<tconstruct:tough_tool_rod>.withTag({Material: "aquamarine"}), null, null]]);

//微光苋
mods.botania.Apothecary.addRecipe(<astralsorcery:blockcustomflower>, [<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<minecraft:glowstone_dust>,<thermalfoundation:fertilizer:2>,<thermalfoundation:fertilizer:2>]);

//星图
recipes.addShaped(<astralsorcery:itemconstellationpaper>, [[<ore:bookshelf>,<ore:bookshelf>,<ore:bookshelf>],[<astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>], [<ore:bookshelf>,<ore:bookshelf>,<ore:bookshelf>]]);

//星辉合成台
recipes.remove(<astralsorcery:blockaltar>);
recipes.addShaped(<astralsorcery:blockaltar>, [[<ore:blockMarble>, <astralsorcery:blockblackmarble>, <ore:blockMarble>],[<ore:blockMarble>, <extendedcrafting:table_basic>, <ore:blockMarble>], [<ore:blockMarble>, null, <ore:blockMarble>]]);

//水晶石矿石
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:blockcustomore",<astralsorcery:blockcustomore>, 800, 100, 
[
	<astralsorcery:blockmarble>, <environmentaltech:erodium_crystal>,<astralsorcery:blockmarble>,
	<appliedenergistics2:material:45>,<enderio:item_material:15>,<appliedenergistics2:material:45>,
	<astralsorcery:blockmarble>, <environmentaltech:erodium_crystal>,<astralsorcery:blockmarble>
]);

//星辉祭坛
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:alter_2",<astralsorcery:blockaltar:1>,800, 200, 
[
	<threng:material:5>, <astralsorcery:itemrockcrystalsimple>,<threng:material:5>,
	<ore:blockMarble>,<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}),<ore:blockMarble>,
	<ore:blockMarble>, <extendedcrafting:material:9>,<ore:blockMarble>
]);

//天辉祭坛
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3");
mods.astralsorcery.Altar.addAttunementAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:alter_3",<astralsorcery:blockaltar:2>,1600, 200, 
[
	<botania:manaresource:4>, <astralsorcery:itemcraftingcomponent:3>,<botania:manaresource:4>,
	<astralsorcery:blockmarble:4>,<astralsorcery:itemcelestialcrystal>,<astralsorcery:blockmarble:4>,
	<astralsorcery:blockmarble:1>,<extendedcrafting:material:9>,<astralsorcery:blockmarble:1>,
	<minecraft:nether_star>,<minecraft:nether_star>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>
]);

//共鸣祭坛
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/attunementaltar");
mods.astralsorcery.Altar.addTraitAltarRecipe("ohxihh:shaped/attunementaltar",<astralsorcery:blockattunementaltar>, 5000, 200, 
[
	//0-8
	null,<astralsorcery:itemcelestialcrystal>,null,<astralsorcery:itemcraftingcomponent:1>,<extrabotany:material:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockmarble:6>,<astralsorcery:blockattunementrelay>,<astralsorcery:blockmarble:6>,
	//9-12
	<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,
	//13-20
	null,null,null,null,<contenttweaker:mana_crystal2>,<contenttweaker:mana_crystal2>,<astralsorcery:blockblackmarble>,<astralsorcery:blockblackmarble>,
	//21-24
	null,null,null,<astralsorcery:blockblackmarble>
]);

//IRIS星能发电机
mods.astralsorcery.Altar.addConstellationAltarRecipe("ohxihh:shaped/internal/altar/iris",<modularmachinery:stellargenerator_controller>,3600, 200, 
[
	<astralsorcery:itemcraftingcomponent:1>,<botania:lens:9>,<astralsorcery:itemcraftingcomponent:1>,
	<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcelestialcrystal>,<astralsorcery:itemcraftingcomponent:1>,
	<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:blockattunementrelay>,<astralsorcery:itemcraftingcomponent:1>,
	<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astraladditions:block_starmetal>,<astraladditions:block_starmetal>,
	<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<contenttweaker:modularblock>,<contenttweaker:modularblock>
]);

//五彩祭坛
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4");
mods.astralsorcery.Altar.addConstellationAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:alter_4",<astralsorcery:blockaltar:3>,3600, 200, 
[
	<astralsorcery:blockmarble:6>,<astralsorcery:itemcoloredlens:6>,<astralsorcery:blockmarble:6>,
	<mekanism:polyethene:2>,<astralsorcery:itemcelestialcrystal>,<mekanism:polyethene:2>,
	<astralsorcery:blockmarble:6>,<deepmoblearning:data_model_blank>,<astralsorcery:blockmarble:6>,
	<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,
	<extendedcrafting:trimmed:4>,<extendedcrafting:trimmed:4>,<botania:manaresource:14>,<botania:manaresource:14>,<botania:manaresource:14>,<botania:manaresource:14>,<extendedcrafting:trimmed:4>,<extendedcrafting:trimmed:4>
]);

//烽火树
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/treebeacon");

//望远镜
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/handtelescope");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:handtelescope",<astralsorcery:itemhandtelescope>, 800, 100, 
[
	null, <botania:manaresource:3>,<astralsorcery:itemcraftingcomponent:3>,
	<botania:manaresource:3>,<threng:material:5>,<botania:manaresource:3>,
	<thermalfoundation:material:33>, <botania:manaresource:3>,null
]);

//玻璃透镜
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/glasslens");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/astralsorcery:glasslens",<astralsorcery:itemcraftingcomponent:3>, 200, 100, 
[
	<astralsorcery:itemusabledust>, <appliedenergistics2:quartz_glass>,<astralsorcery:itemusabledust:1>,
	<appliedenergistics2:quartz_glass>,<astralsorcery:itemcraftingcomponent>,<appliedenergistics2:quartz_glass>,
	<astralsorcery:itemusabledust:1>, <appliedenergistics2:quartz_glass>,<astralsorcery:itemusabledust>
]);

//共振宝石
mods.astralsorcery.StarlightInfusion.removeInfusion(<astralsorcery:itemcraftingcomponent:4>);
mods.astralsorcery.StarlightInfusion.addInfusion(<contenttweaker:aquamarine_essence>,<astralsorcery:itemcraftingcomponent:4>,false,0.5,160);

//星辉矿
mods.astralsorcery.StarlightInfusion.removeInfusion(<minecraft:iron_ingot>);
mods.astralsorcery.StarlightInfusion.addInfusion(<minecraft:iron_ore>,<astralsorcery:blockcustomore:1>,false,0,100);

/*
//星辉封包
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/packagedastral/discovery_crafter");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/packagedastral/attunement_crafter");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/packagedastral/constellation_crafter");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/packagedastral/trait_crafter");
recipes.addShaped(<packagedastral:trait_crafter>, [[null, <packagedauto:me_package_component>, null],[<packagedauto:me_package_component>, <astralsorcery:blockaltar:3>, <packagedauto:me_package_component>], [null, <packagedauto:me_package_component>, null]]);
recipes.addShaped(<packagedastral:constellation_crafter>, [[null, <packagedauto:me_package_component>, null],[<packagedauto:me_package_component>, <astralsorcery:blockaltar:2>, <packagedauto:me_package_component>], [null, <packagedauto:me_package_component>, null]]);
recipes.addShaped(<packagedastral:attunement_crafter>, [[null, <packagedauto:me_package_component>, null],[<packagedauto:me_package_component>, <astralsorcery:blockaltar:1>, <packagedauto:me_package_component>], [null, <packagedauto:me_package_component>, null]]);
recipes.addShaped(<packagedastral:discovery_crafter>, [[null, <packagedauto:me_package_component>, null],[<packagedauto:me_package_component>, <astralsorcery:blockaltar>, <packagedauto:me_package_component>], [null, <packagedauto:me_package_component>, null]]);
recipes.addShapeless(<astralsorcery:blockaltar>, [<packagedastral:discovery_crafter>]);
recipes.addShapeless(<astralsorcery:blockaltar:1>, [<packagedastral:attunement_crafter>]);
recipes.addShapeless(<astralsorcery:blockaltar:2>, [<packagedastral:constellation_crafter>]);
recipes.addShapeless(<astralsorcery:blockaltar:3>, [<packagedastral:trait_crafter>]);
*/