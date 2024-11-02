//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.AlchemyArray;

//血之祭坛
recipes.remove(<bloodmagic:altar>);
recipes.addShaped(<bloodmagic:altar>, [[<minecraft:dye:1>, null, <minecraft:dye:1>],[<thermalfoundation:storage_alloy>, <tconstruct:seared_tank>, <thermalfoundation:storage_alloy>], [<minecraft:gold_block>, <ebwizardry:arcane_workbench>, <minecraft:gold_block>]]);

//觉醒激活水晶
recipes.remove(<bloodmagic:activation_crystal:1>);
recipes.addShapeless(<bloodmagic:activation_crystal:1>, [<minecraft:dragon_egg>,<bloodmagic:slate:3>,<minecraft:nether_star>,<bloodmagic:slate:3>,<bloodmagic:activation_crystal>,<bloodmagic:slate:3>,<minecraft:nether_star>,<bloodmagic:slate:3>,<minecraft:dragon_egg>]);

//奥术粉灰
mods.thermalexpansion.Pulverizer.addRecipe(<bloodmagic:arcane_ashes>,<bloodmagic:slate:2>, 4000);

//束缚工具
AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_pickaxe>);
AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_axe>);
AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_shovel>);
AlchemyArray.removeRecipe(<bloodmagic:component:8>, <minecraft:diamond_hoe>);

//微光水晶
mods.bloodmagic.TartaricForge.addRecipe(<embers:glimmer_shard>.withTag({light: 800}), [<bloodmagic:sigil_blood_light>,<astralsorcery:blockcustomflower>,<extendedcrafting:storage:1>,<thermalfoundation:storage_alloy:6>], 100, 100);

//仪式石
recipes.remove(<bloodmagic:ritual_stone>);
recipes.addShaped(<bloodmagic:ritual_stone> * 4, [[<modularmachinery:blockcasing:4>, <bloodmagic:slate:3>, <modularmachinery:blockcasing:4>],[<bloodmagic:slate:3>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <bloodmagic:slate:3>], [<modularmachinery:blockcasing:4>, <bloodmagic:slate:3>, <modularmachinery:blockcasing:4>]]);

//三级石板
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:1>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:2>,<contenttweaker:forgeplate>,2,5000,25,10);

//诅咒石板
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:curseplate>, [<bloodmagic:slate:3>,<environmentaltech:aethium_crystal>,<bloodmagic:decorative_brick>,<enderio:item_material:52>], 100, 100);

//四级石板
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate:3>);

//悬幽石板
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:4>,<contenttweaker:curseplate>,4,50000,125,50);

//灵魂石板
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:soulplate>,<bloodmagic:slate:4>,5,120000,300,100);

//晶簇块
recipes.addShaped(<bloodmagic:decorative_brick:2>, [[<bloodmagic:blood_rune>, <bloodmagic:slate:4>, <bloodmagic:blood_rune>],[<minecraft:purpur_block>, <embers:ember_cluster>, <minecraft:purpur_block>], [<bloodmagic:blood_rune>, <bloodmagic:slate:4>, <bloodmagic:blood_rune>]]);

//晶簇砖
recipes.addShaped(<bloodmagic:decorative_brick:3>*4, [[<bloodmagic:decorative_brick:2>, <bloodmagic:decorative_brick:2>, null],[<bloodmagic:decorative_brick:2>, <bloodmagic:decorative_brick:2>, null], [null, null, null]]);

//牺牲匕首
recipes.remove(<bloodmagic:sacrificial_dagger>);
recipes.addShaped(<bloodmagic:sacrificial_dagger>, [[<thermalfoundation:material:161>, <quark:glass_shards>, <minecraft:glass>],[null, <minecraft:golden_sword>, <quark:glass_shards>], [<thermalfoundation:material:160>, null, <thermalfoundation:material:161>]]);

//原始投网
recipes.remove(<bloodmagic:soul_snare>);
recipes.addShaped(<bloodmagic:soul_snare> * 4, [[null, <embers:ingot_dawnstone>, null],[<bloodmagic:slate:2>, <tinymobfarm:lasso>, <bloodmagic:slate:2>], [null, <embers:ingot_dawnstone>, null]]);
recipes.addShaped(<bloodmagic:soul_snare> * 16, [[<embers:adhesive>, <minecraft:web>, <embers:adhesive>],[<embers:ingot_dawnstone>, <contenttweaker:mana_crystal1>, <embers:ingot_dawnstone>], [<embers:adhesive>, <minecraft:web>, <embers:adhesive>]]);

//狱火熔炉
recipes.remove(<bloodmagic:soul_forge>);
recipes.addShaped(<bloodmagic:soul_forge>, [[<bloodmagic:slate:2>, null, <bloodmagic:slate:2>],[<environmentaltech:structure_panel>, <ebwizardry:arcane_workbench>, <environmentaltech:structure_panel>], [<environmentaltech:structure_panel>, <bloodmagic:monster_soul>, <environmentaltech:structure_panel>]]);

//血染的机械核心
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:blood_machine_core>,<bloodmagic:blood_rune:3>,1,10000,25,10);

//金铜合金锭
mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:gold_copper_ingot>, <minecraft:gold_ingot>, <thermalfoundation:material:128>, 600);

//黎明石锭
mods.bloodmagic.BloodAltar.addRecipe(<embers:ingot_dawnstone>,<contenttweaker:gold_copper_ingot>,1,4000,20,10);

//锻造石板
recipes.addShapeless(<contenttweaker:forgeplate>, [<botania:manaresource:18>,<bloodmagic:slate:1>]);

//感知锭
TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <tconevo:material>]);
TartaricForge.addRecipe(<tconevo:metal:30>, [<bloodmagic:soul_gem>, <botania:manaresource:4>], 8.0, 5.0);

//感知之剑
TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_sword>]);
recipes.addShaped(<bloodmagic:sentient_sword>, [[null, <tconevo:metal:30>, null],[null, <tconevo:metal:30>, null], [null, <tconstruct:stone_stick>, null]]);

//献祭符文
recipes.remove(<bloodmagic:blood_rune:3>);
recipes.addShaped(<bloodmagic:blood_rune:3>*2, [[<bloodmagic:slate:1>, <minecraft:stone>, <bloodmagic:slate:1>],[<bloodmagic:blood_rune>, <embers:archaic_circuit>.reuse(), <bloodmagic:blood_rune>], [<minecraft:stone>, <thermalfoundation:material:25>, <minecraft:stone>]]);

//DME物质产意志
{
var matter as IItemStack[]=[
<deepmoblearning:pristine_matter_blaze>,
<deepmoblearning:pristine_matter_creeper>,
<deepmoblearning:pristine_matter_enderman>,
<deepmoblearning:pristine_matter_dragon>,
<deepmoblearning:pristine_matter_ghast>,
<deepmoblearning:pristine_matter_guardian>,
<deepmoblearning:pristine_matter_shulker>,
<deepmoblearning:pristine_matter_skeleton>,
<deepmoblearning:pristine_matter_slime>,
<deepmoblearning:pristine_matter_spider>,
<deepmoblearning:pristine_matter_witch>,
<deepmoblearning:pristine_matter_wither>,
<deepmoblearning:pristine_matter_wither_skeleton>,
<deepmoblearning:pristine_matter_zombie>,
<deepmoblearning:pristine_matter_thermal_elemental>,
<deepmoblearning:pristine_matter_tinker_slime>
];  
for m in matter{
mods.mekanism.enrichment.addRecipe(m,<bloodmagic:monster_soul>.withTag({souls: 100.0}));
}}

//灵魂结晶产意志
mods.mekanism.enrichment.addRecipe(<contenttweaker:soulgem>,<bloodmagic:monster_soul>.withTag({souls: 100.0}));

//灵魂宝石
recipes.addShaped(<contenttweaker:soulgem2> * 2, [[<contenttweaker:soulgem>, <contenttweaker:soulplate>, <contenttweaker:soulgem>],[<contenttweaker:mana_crystal3>, <draconicevolution:ender_energy_manipulator>, <contenttweaker:mana_crystal3>], [<contenttweaker:soulgem>, <contenttweaker:soulplate>, <contenttweaker:soulgem>]]);
