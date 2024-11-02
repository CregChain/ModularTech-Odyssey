//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.enderio.AlloySmelter;

//================================================================================深度怪物学习================================================================================
//空白模型
recipes.remove(<deepmoblearning:data_model_blank>);

//主世界物质
recipes.addShaped(<deepmoblearning:living_matter_overworldian> * 2, [[<thermalfoundation:material:817>, <deepmoblearning:polymer_clay>, <thermalfoundation:material:817>],[<deepmoblearning:polymer_clay>, <appliedenergistics2:material:6>, <deepmoblearning:polymer_clay>], [<thermalfoundation:material:817>, <deepmoblearning:polymer_clay>, <thermalfoundation:material:817>]]);

//测试密钥
recipes.remove(<deepmoblearning:trial_key>);
recipes.addShaped(<deepmoblearning:trial_key>, [[null, null, null],[<botania:manaresource:1>, <botania:manaresource:9>, <botania:manaresource:9>], [null, <contenttweaker:epiccircuit>, <contenttweaker:mana_crystal2>]]);

//不稳定故障碎片
mods.nuclearcraft.alloy_furnace.addRecipe([<deepmoblearning:glitch_heart>,<minecraft:obsidian>,<deepmoblearning:glitch_fragment>*3]);
AlloySmelter.addRecipe(<deepmoblearning:glitch_fragment>*3, [<deepmoblearning:glitch_heart>,<minecraft:obsidian>],12000, 4.0f);

//故障灌注锭
AlloySmelter.addRecipe(<deepmoblearning:glitch_infused_ingot>, [<deepmoblearning:glitch_fragment>,<minecraft:dye:4>,<minecraft:gold_ingot>],12000, 4.0f);

//聚合粘土
recipes.remove(<deepmoblearning:polymer_clay>);
recipes.addShaped(<deepmoblearning:polymer_clay> * 48, [[<contenttweaker:mana_crystal1>, <nuclearcraft:compound:1>, <embers:adhesive>],[<nuclearcraft:compound:1>, <tconevo:material>, <nuclearcraft:compound:1>], [<embers:adhesive>, <nuclearcraft:compound:1>, <contenttweaker:mana_crystal1>]]);
recipes.addShaped(<deepmoblearning:polymer_clay> * 4, [[<nuclearcraft:compound:1>, <minecraft:clay_ball>, <enderio:item_material:20>],[<minecraft:clay_ball>, <tconevo:material>, <minecraft:clay_ball>], [<enderio:item_material:20>, <minecraft:clay_ball>, <nuclearcraft:compound:1>]]);

//怪物模型
{
var item as IItemStack[]=[
<deepmoblearning:data_model_slime>,
<deepmoblearning:data_model_spider>,
<deepmoblearning:data_model_creeper>,
<deepmoblearning:data_model_skeleton>,
<deepmoblearning:data_model_zombie>,
<deepmoblearning:data_model_tinker_slime>,
<deepmoblearning:data_model_enderman>,
<deepmoblearning:data_model_ghast>,
<deepmoblearning:data_model_wither_skeleton>,
<deepmoblearning:data_model_blaze>,
<deepmoblearning:data_model_witch>,
<deepmoblearning:data_model_thermal_elemental>,
<deepmoblearning:data_model_guardian>,
<deepmoblearning:data_model_shulker>,
<deepmoblearning:data_model_dragon>,
<deepmoblearning:data_model_wither>
];  
for i in item{
recipes.remove(i);
}}