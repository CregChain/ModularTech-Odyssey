//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

#ikwid

import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.enderio.SagMill;
import mods.enderio.AlloySmelter;

import mods.nuclearcraft.manufactory;
import mods.nuclearcraft.alloy_furnace;
import mods.nuclearcraft.salt_mixer;
import mods.nuclearcraft.melter;
import mods.nuclearcraft.crystallizer;
import mods.nuclearcraft.pressurizer;
import mods.nuclearcraft.centrifuge;

import mods.appliedenergistics2.Grinder;
import mods.appliedenergistics2.Inscriber;

import mods.actuallyadditions.AtomicReconstructor;

//========================================================================================原版========================================================================================
//地狱岩磨沙砾副产烈焰粉
mods.immersiveengineering.Crusher.addRecipe(<minecraft:gravel>, <minecraft:netherrack>, 1000, <minecraft:blaze_powder>, 0.05);

//纸
recipes.remove(<minecraft:paper>);
recipes.addShapeless(<minecraft:paper> * 4, [<ore:lumber>,<ore:lumber>]);
recipes.addShapeless(<minecraft:paper> * 3, [<minecraft:reeds>,<minecraft:reeds>,<minecraft:reeds>]);
recipes.addShapeless(<minecraft:paper> * 2, [<minecraft:book>]);
recipes.addShapeless(<minecraft:paper> * 2, [<ore:dustWood>,<ore:dustWood>,<ore:dustWood>,<ore:dustWood>,<minecraft:water_bucket>]);

//炼药锅
recipes.remove(<minecraft:cauldron>);
recipes.addShaped(<minecraft:cauldron>, [[<thermalfoundation:material:32>, null, <thermalfoundation:material:32>],[<thermalfoundation:material:32>, null, <thermalfoundation:material:32>], [<thermalfoundation:material:32>, <thermalfoundation:material:32>, <thermalfoundation:material:32>]]);

//鞘翅
recipes.addShaped(<minecraft:elytra>, [[<thermalfoundation:material:1026>, <minecraft:slime_ball>, <thermalfoundation:material:1026>],[<enderutilities:enderpart>, null, <enderutilities:enderpart>], [<minecraft:feather>, null, <minecraft:feather>]]);

//TNT
recipes.remove(<minecraft:tnt>);

//绿宝石磨粉/富集
SagMill.addRecipe([<contenttweaker:emerald_dust>],[100 as float],<minecraft:emerald>,"MULTIPLY_OUTPUT", 4000);
mods.mekanism.enrichment.addRecipe(<contenttweaker:emerald_dust>,<minecraft:emerald>);

//移除铁轨熔炼
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:rail>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:golden_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:gold>,<minecraft:golden_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:activator_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:osmium>,<minecraft:rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>,<minecraft:detector_rail>);

//粘土
mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:clay>, <minecraft:dirt>, <liquid:water>*2000);
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:clay>,<minecraft:dirt>, <liquid:water>*1000, 4000);

//移除地毯燃料值
var burns as IItemStack[]=[
<minecraft:carpet>,
<minecraft:carpet:1>,
<minecraft:carpet:2>,
<minecraft:carpet:3>,
<minecraft:carpet:4>,
<minecraft:carpet:5>,
<minecraft:carpet:6>,
<minecraft:carpet:7>,
<minecraft:carpet:8>,
<minecraft:carpet:15>,
<minecraft:carpet:14>,
<minecraft:carpet:13>,
<minecraft:carpet:12>,
<minecraft:carpet:11>,
<minecraft:carpet:10>,
<minecraft:carpet:9>
];  
for burn in burns{
furnace.setFuel(burn, 0);
}

//移除3线合成2线
recipes.removeShapeless(<minecraft:string>,[<minecraft:string>,<minecraft:string>,<minecraft:string>]);

//==========================================================================================JEI==========================================================================================
//蓝图/工程师装配台
mods.jei.JEI.removeAndHide(<immersiveengineering:wooden_device0:2>);
mods.jei.JEI.removeAndHide(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
mods.jei.JEI.removeAndHide(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
mods.jei.JEI.removeAndHide(<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}));
mods.jei.JEI.removeAndHide(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}));
mods.jei.JEI.removeAndHide(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}));

//矿物粉碎机
mods.jei.JEI.removeAndHide(<tinker_io:ore_crusher>);

//末影工作台/末影发电机
mods.jei.JEI.removeAndHide(<extendedcrafting:ender_alternator>);
mods.jei.JEI.removeAndHide(<extendedcrafting:ender_crafter>);

//融合机
mods.jei.JEI.removeAndHide(<mekanism:machineblock:2>);
mods.jei.JEI.removeAndHide(<mekanism:machineblock:5>.withTag({recipeType: 4}));
mods.jei.JEI.removeAndHide(<mekanism:machineblock:6>.withTag({recipeType: 4}));
mods.jei.JEI.removeAndHide(<mekanism:machineblock:7>.withTag({recipeType: 4}));
mods.jei.JEI.removeAndHide(<mekanism:machineblock3:7>.withTag({recipeType: 4, mekData: {}}));
mods.jei.JEI.removeAndHide(<mekanism:machineblock3:8>.withTag({recipeType: 4}));

//=========================================================================================RF工具=========================================================================================
//机器框架
recipes.remove(<rftools:machine_frame>);
recipes.addShapeless(<rftools:machine_frame>, [<actuallyadditions:block_misc:9>]);
recipes.addShaped(<rftools:machine_frame> * 4, [[<thermalfoundation:material:32>, <ore:dustLapis>, <thermalfoundation:material:32>],[<thermalfoundation:material:33>, <enderio:item_material>, <thermalfoundation:material:33>], [<thermalfoundation:material:352>, <ore:dustLapis>, <thermalfoundation:material:352>]]);

//模块化存储器
recipes.remove(<rftools:modular_storage>);
recipes.addShaped(<rftools:modular_storage>, [[<minecraft:quartz>, <minecraft:redstone>, <minecraft:quartz>],[<ironchest:iron_chest:2>, <thermaldynamics:retriever>, <ironchest:iron_chest:2>], [<minecraft:quartz>, <minecraft:redstone>, <minecraft:quartz>]]);

//燃煤发电机
recipes.remove(<rftools:coalgenerator>);
recipes.addShaped(<rftools:coalgenerator>, [[<minecraft:coal>, <minecraft:redstone_torch>, <minecraft:coal>],[<minecraft:coal>, <immersiveengineering:metal_decoration0:6>, <minecraft:coal>], [<minecraft:coal>, <minecraft:redstone_torch>, <minecraft:coal>]]);

//末影能发电机
recipes.remove(<rftools:endergenic>);
recipes.addShaped(<rftools:endergenic>, [[<thermalfoundation:glass_alloy:7>, <rftools:infused_enderpearl>, <thermalfoundation:glass_alloy:7>],[<rftools:infused_enderpearl>, <mekanism:basicblock:8>, <rftools:infused_enderpearl>], [<thermalfoundation:glass_alloy:7>, <rftools:infused_enderpearl>, <thermalfoundation:glass_alloy:7>]]);

//存储检测器
recipes.remove(<rftools:storage_scanner>);
recipes.addShaped(<rftools:storage_scanner>, [[<thermaldynamics:retriever>, <minecraft:ender_pearl>, <thermaldynamics:retriever>],[<minecraft:gold_ingot>, <ironchest:iron_chest>, <minecraft:gold_ingot>], [<thermaldynamics:retriever>, <minecraft:ender_pearl>, <thermaldynamics:retriever>]]);

//==========================================================================================沉浸==========================================================================================
//移除工作台造板/齿轮
mods.unidict.removalByKind.get("Crafting").remove("plate");
mods.unidict.removalByKind.get("Crafting").remove("gear");

//工业挤压机挤压残破的种子产植物油
mods.immersiveengineering.Squeezer.removeFluidRecipe(<liquid:plantoil>);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil>*40, <contenttweaker:dead_seed>, 80);

//其他种子挤压配方修改
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil>*60, <minecraft:beetroot_seeds>, 80);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil>*60, <minecraft:wheat_seeds>, 80);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil>*40, <minecraft:pumpkin_seeds>, 80);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil>*20, <minecraft:melon_seeds>, 80);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil>*80, <immersiveengineering:seed>, 80);

//炼油厂炼精炼菜籽油
mods.immersiveengineering.Refinery.addRecipe(<liquid:refinedcanolaoil>*16, <liquid:canolaoil>*8, <liquid:seed_oil>*8,10);

//青铜板
recipes.addShapeless(<thermalfoundation:material:355>, [<ore:ingotBronze>,<ore:ingotBronze>,<immersiveengineering:tool>]);

//窑砖
recipes.remove(<immersiveengineering:stone_decoration:10>);
mods.immersiveengineering.BottlingMachine.addRecipe(<immersiveengineering:stone_decoration:10>, <immersiveengineering:stone_decoration>, <liquid:clay>*2000);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:stone_decoration:10>,<immersiveengineering:stone_decoration>, <liquid:clay>*1000, 4000);

//石墨电极
mods.thermalexpansion.Compactor.addStorageRecipe(<immersiveengineering:graphite_electrode>,<immersiveengineering:material:19>*4, 4000);

//移除工作台造金属棒
recipes.remove(<immersiveengineering:material:1>);
recipes.remove(<immersiveengineering:material:2>);
recipes.remove(<immersiveengineering:material:3>);

//移除电弧炉烧强化黑曜石锭
mods.immersiveengineering.ArcFurnace.removeRecipe(<mekanism:ingot>);

//MEK富集仓制作金属线
mods.mekanism.enrichment.addRecipe(<ore:dustCopper>,<immersiveengineering:material:20>*3);
mods.mekanism.enrichment.addRecipe(<ore:dustElectrum>,<immersiveengineering:material:21>*3);
mods.mekanism.enrichment.addRecipe(<ore:dustAluminum>,<immersiveengineering:material:22>*3);
mods.mekanism.enrichment.addRecipe(<ore:dustSteel>,<immersiveengineering:material:23>*3);

//工业大麻纤维
recipes.addShapeless(<immersiveengineering:material:4>, [<immersiveengineering:seed>, <immersiveengineering:seed>,<immersiveengineering:seed>]);

//传送带
recipes.remove(<immersiveengineering:conveyor>);
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"})]);
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [[null, null, null],[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>], [<thermalfoundation:material:32>, <minecraft:redstone>, <thermalfoundation:material:32>]]);

//绝缘传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"}), [<ore:scaffoldingSteel>,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]);

//抽取传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}), [<ore:plankTreatedWood>,<immersiveengineering:cloth_device:2>,<immersiveengineering:material:8>,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})]);

//绝缘抽取传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}),<ore:scaffoldingSteel>]);

//分流传送带
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}), [[null, null, null],[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <minecraft:iron_ingot>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})], [null, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), null]]);

//卸货传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),<minecraft:hopper>]);

//绝缘卸货传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"}), [<ore:scaffoldingSteel>,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"})]);

//垂直传送带
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}) * 3, [[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <minecraft:iron_ingot>, null],[<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), null, null], [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <minecraft:iron_ingot>, null]]);

//绝缘垂直传送带
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}),<ore:scaffoldingSteel>]);

//红石合金
mods.immersiveengineering.AlloySmelter.addRecipe(<enderio:item_alloy_ingot:3>, <minecraft:redstone>, <ore:itemSilicon>, 600);

//电路板
recipes.addShaped(<immersiveengineering:material:27>*2, [[<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>],[<immersiveengineering:material:26>, <immersiveengineering:stone_decoration:8>, <immersiveengineering:material:26>], [<ore:itemSilicon>,<ore:itemSilicon>,<ore:itemSilicon>]]);

//真空管
recipes.addShaped(<immersiveengineering:material:26>, [[<tconstruct:clear_glass>, <threng:material>, <tconstruct:clear_glass>],[<tconstruct:clear_glass>, <thermalfoundation:material:261>, <tconstruct:clear_glass>], [<tconstruct:clear_glass>, <immersiveengineering:metal_decoration0>, <tconstruct:clear_glass>]]);

//园艺玻璃罩
recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped(<immersiveengineering:metal_device1:13>, [[<thermalfoundation:glass:7>, <immersiveengineering:material:26>, <thermalfoundation:glass:7>],[<thermalfoundation:glass:7>, null, <thermalfoundation:glass:7>], [<contenttweaker:advancedcircuit>, <nuclearcraft:part:10>, <contenttweaker:advancedcircuit>]]);

//钢栅栏
recipes.addShaped(<immersiveengineering:metal_decoration1>*3, [[null, null, null],[<thermalfoundation:material:160>, <immersiveengineering:material:9>, <thermalfoundation:material:160>], [<thermalfoundation:material:160>, <immersiveengineering:material:9>, <thermalfoundation:material:160>]]);

//绝缘玻璃(流体转置)
recipes.remove(<immersiveengineering:stone_decoration:8>);
recipes.addShaped(<immersiveengineering:stone_decoration:8>, [[null, <contenttweaker:resinplate>, null],[<contenttweaker:resinplate>, <tconstruct:clear_glass>, <contenttweaker:resinplate>], [null, <contenttweaker:resinplate>, null]]);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:stone_decoration:8>,<minecraft:glass>, <liquid:resin>*200, 8000);

//工程师工具箱
recipes.remove(<immersiveengineering:toolbox>);

//麻凝土
recipes.removeShaped(<immersiveengineering:stone_decoration:4>*6, [[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],[<immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>], [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:4>*3, [[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],[<immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>], [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]]);

//铁质机械零件
recipes.remove(<immersiveengineering:material:8>);
mods.tconstruct.Casting.addTableRecipe(<immersiveengineering:material:8>,<thermalfoundation:material:256>,<liquid:iron>,576,true,100);

//钢质机械零件
recipes.remove(<immersiveengineering:material:9>);
recipes.addShaped(<immersiveengineering:material:9>, [[<thermalfoundation:material:352>, <immersiveengineering:material:17>, <thermalfoundation:material:352>],[<immersiveengineering:material:17>, <immersiveengineering:material:8>, <immersiveengineering:material:17>], [<thermalfoundation:material:352>, <immersiveengineering:material:17>, <thermalfoundation:material:352>]]);

//轻型工程块
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4>*2, [[<immersiveengineering:stone_decoration:4>, <immersiveengineering:material:5>, <immersiveengineering:stone_decoration:4>],[<immersiveengineering:material:8>, <thermalfoundation:material:291>, <immersiveengineering:material:8>], [<immersiveengineering:stone_decoration:4>, <immersiveengineering:material:5>, <immersiveengineering:stone_decoration:4>]]);

//红石工程块
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3>*2, [[<minecraft:comparator>, <immersiveengineering:material:8>, <minecraft:repeater>],[<immersiveengineering:stone_decoration:4>,<immersiveengineering:metal_decoration1>, <immersiveengineering:stone_decoration:4>], [<minecraft:repeater>, <immersiveengineering:material:8>, <minecraft:comparator>]]);

//重型工程块
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5> * 2, [[<immersiveengineering:stone_decoration:4>, <immersiveengineering:material:9>, <immersiveengineering:stone_decoration:4>],[<immersiveengineering:metal_decoration0:4>, <thermalfoundation:material:256>, <immersiveengineering:metal_decoration0:4>], [<immersiveengineering:stone_decoration:4>, <immersiveengineering:material:9>, <immersiveengineering:stone_decoration:4>]]);

//钢脚手架
mods.tconstruct.Casting.addBasinRecipe(<immersiveengineering:metal_decoration1:1>,<thermalexpansion:frame:64>,<liquid:steel>,576,true,600);

//高炉砖
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [[<minecraft:nether_brick>, <ore:sandstone>, <minecraft:nether_brick>],[<ore:sandstone>, <immersiveengineering:stone_decoration>, <ore:sandstone>], [<minecraft:nether_brick>, <ore:sandstone>, <minecraft:nether_brick>]]);

//钢线
recipes.remove(<immersiveengineering:material:23>);

//冲压模具
recipes.addShaped(<immersiveengineering:mold:7>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<thermalfoundation:material:352>, <tconstruct:cast>, <thermalfoundation:material:352>], [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <immersiveengineering:tool:1>.reuse()]]);
recipes.addShaped(<immersiveengineering:mold:6>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<thermalfoundation:material:352>, <tconstruct:cast>, <thermalfoundation:material:352>], [<thermalfoundation:material:352>, <immersiveengineering:tool:1>.reuse(), <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:5>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<thermalfoundation:material:352>, <tconstruct:cast>, <thermalfoundation:material:352>], [<immersiveengineering:tool:1>.reuse(), <thermalfoundation:material:352>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:4>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<thermalfoundation:material:352>, <tconstruct:cast>, <immersiveengineering:tool:1>.reuse()], [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:3>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<immersiveengineering:tool:1>.reuse(), <tconstruct:cast>, <thermalfoundation:material:352>], [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:2>, [[<thermalfoundation:material:352>, <thermalfoundation:material:352>, <immersiveengineering:tool:1>.reuse()],[<thermalfoundation:material:352>, <tconstruct:cast>, <thermalfoundation:material:352>], [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:1>, [[<thermalfoundation:material:352>, <immersiveengineering:tool:1>.reuse(), <thermalfoundation:material:352>],[<immersiveengineering:material:2>, <tconstruct:cast>, <immersiveengineering:material:2>], [<thermalfoundation:material:352>,<immersiveengineering:material:2>, <thermalfoundation:material:352>]]);
recipes.addShaped(<immersiveengineering:mold:0>, [[<immersiveengineering:tool:1>.reuse(), <thermalfoundation:material:352>, <thermalfoundation:material:352>],[<thermalfoundation:material:352>, <tconstruct:cast>, <thermalfoundation:material:352>], [<thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>]]);

//燧石粉碎制造火药(粉碎机)
mods.immersiveengineering.Crusher.addRecipe(<minecraft:gunpowder>, <minecraft:flint>, 4000);

//粉碎机磨赛特斯石英
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material>, 4000);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:1>, 4000);

//红宝石矿磨出红宝石
mods.immersiveengineering.Crusher.addRecipe(<contenttweaker:ruby>*2, <contenttweaker:sub_block_holder_0>, 4000);

//钛铁矿脉
mods.immersiveengineering.Excavator.addMineral("Ilmenite Ore", 500, 0.005, ["oreIlmenite", "oreBauxite","oreAluminum"], [0.2, 0.1,0.1], [-28]);

//==========================================================================================匠魂==========================================================================================
//水泥
recipes.remove(<tconstruct:soil>);
recipes.addShaped(<tconstruct:soil>*8, [[<ore:gravel>, <ore:sand>, <ore:gravel>],[<ore:sand>, <immersiveengineering:stone_decoration:4>, <ore:sand>], [<ore:gravel>, <ore:sand>, <ore:gravel>]]);

//冶炼炉加速器
recipes.remove(<simplesmelteryaccelerator:smeltery_accelerator>);
recipes.addShaped(<simplesmelteryaccelerator:smeltery_accelerator>, [[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],[<tconstruct:materials>, <embers:ancient_motive_core>, <tconstruct:materials>], [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);

//钢板
recipes.addShapeless(<thermalfoundation:material:352>, [<immersiveengineering:tool>,<thermalfoundation:material:160>,<thermalfoundation:material:160>]);

//殷钢板
recipes.addShapeless(<thermalfoundation:material:354>, [<ore:ingotInvar>,<ore:ingotInvar>,<immersiveengineering:tool>]);

//熔岩史莱姆树苗
recipes.addShaped(<tconstruct:slime_sapling:2>, [[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>],[<minecraft:blaze_powder>, <tconstruct:slime_sapling:1>, <minecraft:blaze_powder>], [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>]]);
recipes.addShaped(<tconstruct:slime_sapling:2>, [[<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>],[<minecraft:blaze_powder>, <tconstruct:slime_sapling>, <minecraft:blaze_powder>], [<minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>]]);

//通透玻璃(感应炉)
mods.thermalexpansion.InductionSmelter.addRecipe(<tconstruct:clear_glass>*2, <appliedenergistics2:material:5>, <minecraft:sand>, 4000);

//极寒之凛冰
mods.tconstruct.Melting.addRecipe(<liquid:cryotheum>*250,<ore:dustCryotheum>,300);

//空白模具(金属冲压机)
recipes.remove(<tconstruct:pattern>);
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:pattern>, <immersiveengineering:treated_wood>, <immersiveengineering:mold>, 1000, 4);

//板铸模(粉碎机)
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
mods.immersiveengineering.Crusher.addRecipe(<tconstruct:cast_custom:3>, <tconstruct:cast>,4000);
mods.thermalexpansion.Pulverizer.addRecipe(<tconstruct:cast_custom:3>,<tconstruct:cast>, 3000);

//齿轮铸模
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
recipes.addShapeless(<immersiveengineering:mold:1>, [<tconstruct:cast_custom:4>]);
recipes.addShapeless(<tconstruct:cast_custom:4>, [<immersiveengineering:mold:1>]);

//铜/青铜齿轮
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:256>,<embers:archaic_circuit>,<liquid:copper>,576,false,100);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:291>,<embers:archaic_circuit>,<liquid:bronze>,576,false,100);

//智能输出端
recipes.remove(<tinker_io:smart_output>);
recipes.addShaped(<tinker_io:smart_output>, [[<ore:blockSeared>, <modularmachinery:itemmodularium>, <ore:blockSeared>],[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>], [<ore:blockSeared>, <modularmachinery:itemmodularium>, <ore:blockSeared>]]);

//熔融极寒末影
mods.tconstruct.Alloy.addRecipe(<liquid:gelid_enderium>*144,[<liquid:cryotheum>*1000,<liquid:enderium>*144]);
mods.nuclearcraft.salt_mixer.addRecipe([<liquid:cryotheum>*1000,<liquid:enderium>*144,<liquid:gelid_enderium>*144]);

//聚合矩阵
recipes.remove(<tconevo:material>);
recipes.addShaped(<tconevo:material>, [[<tconstruct:ingots:2>, <contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>],[<minecraft:redstone>, <minecraft:glowstone_dust>, <enderio:item_material:20>], [<enderio:item_material:20>, <mekanism:polyethene>, <ore:slimeball>]]);

//星能结晶
mods.tconstruct.Melting.addRecipe(<liquid:astralsorcery.liquidstarlight>*24,<contenttweaker:star_crystal>,100);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:star_crystal>,<tconstruct:cast_custom:2>,<liquid:astralsorcery.liquidstarlight>,24,false,1);

//======================================================================================余烬======================================================================================
//灰烬能量催化器
recipes.remove(<embers:ember_activator>);
recipes.addShaped(<embers:ember_activator>, [[<thermalfoundation:material:163>, <thermalfoundation:material:163>, <thermalfoundation:material:163>],[<minecraft:iron_ingot>, <embers:ancient_motive_core>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>]]);

//密封板
recipes.remove(<embers:sealed_planks>);
recipes.remove(<embers:wrapped_sealed_planks>);
recipes.addShaped(<embers:sealed_planks> * 4, [[<thermalfoundation:material:32>, <ore:plankWood>, <thermalfoundation:material:32>],[<ore:plankWood>, <ore:slimeball>, <ore:plankWood>], [<thermalfoundation:material:32>, <ore:plankWood>, <thermalfoundation:material:32>]]);
recipes.addShaped(<embers:wrapped_sealed_planks> * 4, [[<thermalfoundation:material:354>, <embers:sealed_planks>, <thermalfoundation:material:354>],[<embers:sealed_planks>, <ore:slimeball>, <embers:sealed_planks>], [<thermalfoundation:material:354>, <embers:sealed_planks>, <thermalfoundation:material:354>]]);

//锅炉
recipes.remove(<embers:boiler>);
recipes.addShaped(<embers:boiler>, [[<thermalfoundation:material:161>, <thermalfoundation:material:161>, <thermalfoundation:material:161>],[<thermalfoundation:material:160>, <embers:ember_activator>, <thermalfoundation:material:160>], [<thermalfoundation:material:160>, <minecraft:furnace>, <thermalfoundation:material:160>]]);

//太古电路
recipes.remove(<embers:archaic_circuit>);
recipes.addShaped(<embers:archaic_circuit>, [[null, <embers:archaic_brick>, null],[<embers:archaic_brick>, <embers:ancient_motive_core>, <embers:archaic_brick>], [null, <embers:archaic_brick>, null]]);
recipes.addShaped(<embers:archaic_circuit>, [[null, <bloodmagic:slate:1>, null],[<bloodmagic:slate:1>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <bloodmagic:slate:1>], [null, <bloodmagic:slate:1>, null]]);

//大气能量测量表
recipes.remove(<embers:ember_detector>);
recipes.addShaped(<embers:ember_detector>, [[null, <minecraft:iron_ingot>, null],[<thermalfoundation:material:128>, <embers:ember_gauge>, <thermalfoundation:material:128>], [<thermalfoundation:material:128>, <minecraft:iron_ingot>, <thermalfoundation:material:128>]]);

//太古动力核心
recipes.addShaped(<embers:ancient_motive_core>, [[<embers:archaic_brick>, <embers:crystal_ember>, <embers:archaic_brick>],[<embers:crystal_ember>, <minecraft:magma_cream>, <embers:crystal_ember>], [<embers:archaic_brick>, <embers:crystal_ember>, <embers:archaic_brick>]]);

//古代砖块
recipes.addShaped(<embers:archaic_brick> * 16, [[<tconstruct:soil>, <minecraft:brick_block>, <tconstruct:soil>],[<embers:block_caminite_brick>, <thermalfoundation:storage_alloy>, <embers:block_caminite_brick>], [<tconstruct:soil>, <minecraft:brick_block>, <tconstruct:soil>]]);

//灰烬晶体开采机
recipes.remove(<embers:ember_bore>);
recipes.addShaped(<embers:ember_bore>, [[<thermalfoundation:storage_alloy>, <minecraft:hopper>, <thermalfoundation:storage_alloy>],[<embers:block_caminite_brick>, <embers:stone_edge>, <embers:block_caminite_brick>], [<minecraft:stone_pickaxe>, <minecraft:iron_pickaxe>, <minecraft:stone_pickaxe>]]);

//机械核心
recipes.remove(<embers:mech_core>);
recipes.addShaped(<embers:mech_core>, [[<immersiveengineering:sheetmetal:8>, <contenttweaker:north_compass>, <immersiveengineering:sheetmetal:8>],[<minecraft:blaze_powder>, <embers:ancient_motive_core>, <minecraft:blaze_powder>], [<immersiveengineering:sheetmetal:8>,<thermalfoundation:material:355>, <immersiveengineering:sheetmetal:8>]]);
mods.immersiveengineering.BottlingMachine.addRecipe(<embers:mech_core>, <contenttweaker:blood_machine_core>, <liquid:water>*2000);

//搅拌机[WIP]
recipes.remove(<embers:mixer>);
recipes.addShaped(<embers:mixer>, [[<thermalfoundation:material:259>, <immersiveengineering:metal_decoration2:5>, <thermalfoundation:material:259>],[<immersiveengineering:stone_decoration:10>, <immersiveengineering:metal_decoration2:5>, <immersiveengineering:stone_decoration:10>], [<embers:block_caminite_brick>, <embers:mech_core>, <embers:block_caminite_brick>]]);

//铁匠锤
recipes.remove(<embers:tinker_hammer>);
recipes.addShaped(<embers:tinker_hammer>, [[<immersiveengineering:material:5>, <thermalfoundation:material:288>, <immersiveengineering:material:5>],[<thermalfoundation:material:259>, <immersiveengineering:tool>, <thermalfoundation:material:259>], [null, <immersiveengineering:material:2>, null]]);

//压印锤
recipes.remove(<embers:stamper>);
recipes.addShaped(<embers:stamper>, [[<embers:plate_caminite>, <immersiveengineering:metal_decoration0:5>, <embers:plate_caminite>],[<embers:plate_caminite>, <minecraft:piston>, <embers:plate_caminite>], [<embers:plate_caminite>, <immersiveengineering:metal_decoration0:3>, <embers:plate_caminite>]]);

//压印基座
recipes.remove(<embers:stamper_base>);
recipes.addShaped(<embers:stamper_base>, [[<embers:plate_caminite>, null, <embers:plate_caminite>],[<embers:plate_caminite>, <embers:stamp_flat>, <embers:plate_caminite>], [<embers:plate_caminite>, <embers:block_tank>, <embers:plate_caminite>]]);

//流体储罐
recipes.remove(<embers:block_tank>);
recipes.addShaped(<embers:block_tank>, [[<embers:plate_caminite>, null, <embers:plate_caminite>],[<thermalfoundation:material:352>, <minecraft:cauldron>, <thermalfoundation:material:352>], [<embers:plate_caminite>, <immersiveengineering:material:8>, <embers:plate_caminite>]]);

//黎明石(盐混合器/结晶器)
mods.nuclearcraft.salt_mixer.addRecipe([<liquid:gold>*144,<liquid:copper>*144,<liquid:liming>*288]);
mods.nuclearcraft.crystallizer.addRecipe([<liquid:liming>*144,<embers:ingot_dawnstone>]);

//炼金处理仓
recipes.remove(<chambers:alchemy_chamber>);
recipes.addShaped(<chambers:alchemy_chamber>, [[<embers:alchemy_pedestal>, <contenttweaker:extremecircuit>, <embers:alchemy_pedestal>],[<embers:winding_gears>, <embers:alchemy_tablet>, <embers:winding_gears>], [<embers:alchemy_pedestal>, <contenttweaker:extremecircuit>, <embers:alchemy_pedestal>]]);
recipes.addShaped(<chambers:alchemy_chamber>, [[<embers:alchemy_pedestal>, <contenttweaker:extremecircuit>, <embers:alchemy_pedestal>],[<tconevo:metal:34>, <embers:alchemy_tablet>, <tconevo:metal:29>], [<embers:alchemy_pedestal>, <contenttweaker:extremecircuit>, <embers:alchemy_pedestal>]]);

//注入合成处理仓
recipes.remove(<chambers:fusion_chamber>);
recipes.addShaped(<chambers:fusion_chamber>, [[<draconicevolution:draconic_energy_core>, <contenttweaker:extremecircuit>, <draconicevolution:draconic_energy_core>],[<tconevo:metal:10>, <draconicevolution:fusion_crafting_core>, <tconevo:metal:10>], [<draconicevolution:draconic_energy_core>, <contenttweaker:extremecircuit>, <draconicevolution:draconic_energy_core>]]);

//====================================================================================合成拓展====================================================================================
//黑铁锭
recipes.removeShapeless(<extendedcrafting:material>, [<ore:ingotIron>, <ore:dyeBlack>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<extendedcrafting:material>, <ore:ingotSteel> , <immersiveengineering:material:7>, 200, 200);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:160>, <extendedcrafting:material>*2);

//末影锭
recipes.removeShapeless(<extendedcrafting:material:36>, [ <minecraft:iron_ingot>, <minecraft:ender_pearl>]);
AlloySmelter.addRecipe(<extendedcrafting:material:36>*3, [<enderio:item_material:16>,<thermalfoundation:material:167>*2,<enderutilities:enderpart:1>],12000, 4.0f);

//末影之星(流体转置)
mods.thermalexpansion.Transposer.addFillRecipe(<extendedcrafting:material:40>,<minecraft:nether_star>, <liquid:gelid_enderium>*576, 8000);

//黑铁板
recipes.remove(<extendedcrafting:material:2>);
mods.immersiveengineering.MetalPress.addRecipe(<extendedcrafting:material:2>, <extendedcrafting:material>, <immersiveengineering:mold>, 1000, 2);
mods.thermalexpansion.Compactor.addPressRecipe(<extendedcrafting:material:2>, <extendedcrafting:material>, 4000);
mods.mekanism.compressor.addRecipe(<extendedcrafting:material>, <gas:liquidosmium>*200, <extendedcrafting:material:2>*3);

//流明精华
recipes.removeShapeless(<extendedcrafting:material:7> * 2, [<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:gunpowder>]);
mods.tconstruct.Alloy.addRecipe(<liquid:lumium_liquid>*100,[<liquid:redstone>*100,<liquid:glowstone>*500]);
mods.tconstruct.Casting.addTableRecipe(<extendedcrafting:material:7>,<minecraft:gunpowder>,<liquid:lumium_liquid>,100,true,100);

//自动化接口
recipes.addShaped(<extendedcrafting:interface>, [[<extendedcrafting:material>, <extendedcrafting:material:9>, <extendedcrafting:material>],[<contenttweaker:advancedcircuit>, <extendedcrafting:frame>, <contenttweaker:advancedcircuit>], [<extendedcrafting:material>, <extendedcrafting:material:2>, <extendedcrafting:material>]]);

//合成核心
recipes.remove(<extendedcrafting:crafting_core>);
recipes.addShaped(<extendedcrafting:crafting_core>, [[<extendedcrafting:storage>, <extendedcrafting:material:12>, <extendedcrafting:storage>],[<mekanism:controlcircuit:2>, <avaritia:double_compressed_crafting_table>, <mekanism:controlcircuit:2>], [<extendedcrafting:storage>, <extendedcrafting:frame>, <extendedcrafting:storage>]]);

//基座
recipes.remove(<extendedcrafting:pedestal>);
recipes.addShaped(<extendedcrafting:pedestal>, [[null, <extendedcrafting:material:16>, null],[null, <avaritia:double_compressed_crafting_table>, null], [<extendedcrafting:material:2>, <extendedcrafting:storage>, <extendedcrafting:material:2>]]);

//基础合成组件
recipes.remove(<extendedcrafting:material:14>);
recipes.addShapeless(<extendedcrafting:material:14>, [<extendedcrafting:material:2>,<extendedcrafting:material:7>,<minecraft:iron_ingot>,<thermalfoundation:material:132>]);

//======================================================================================杂项======================================================================================
//编程电路
recipes.addShapeless(<contenttweaker:basiccircuit>, [<ore:modecard>]);
recipes.addShaped(<cregtech:mode:1>, [[<ore:modecard>, null, null],[null, null, null], [null, null, null]]);
recipes.addShaped(<cregtech:mode:2>, [[null, <ore:modecard>, null],[null, null, null], [null, null, null]]);
recipes.addShaped(<cregtech:mode:3>, [[null, null, <ore:modecard>],[null, null, null], [null, null, null]]);
recipes.addShaped(<cregtech:mode:4>, [[null, null, null],[<ore:modecard>, null, null], [null, null, null]]);
recipes.addShaped(<cregtech:mode:5>, [[null, null, null],[null, <ore:modecard>, null], [null, null, null]]);
recipes.addShaped(<cregtech:mode:6>, [[null, null, null],[null, null, <ore:modecard>], [null, null, null]]);
recipes.addShaped(<cregtech:mode:7>, [[null, null, null],[null, null, null], [<ore:modecard>, null, null]]);
recipes.addShaped(<cregtech:mode:8>, [[null, null, null],[null, null, null], [null, <ore:modecard>, null]]);
recipes.addShaped(<cregtech:mode:9>, [[null, null, null],[null, null, null], [null, null, <ore:modecard>]]);
recipes.addShaped(<cregtech:mode:9>, [[null, null, null],[null, null, null], [null, null, <contenttweaker:basiccircuit>]]);
recipes.addShaped(<cregtech:mode:8>, [[null, null, null],[null, null, null], [null, <contenttweaker:basiccircuit>, null]]);
recipes.addShaped(<cregtech:mode:7>, [[null, null, null],[null, null, null], [<contenttweaker:basiccircuit>, null, null]]);
recipes.addShaped(<cregtech:mode:6>, [[null, null, null],[null, null, <contenttweaker:basiccircuit>], [null, null, null]]);
recipes.addShaped(<cregtech:mode:5>, [[null, null, null],[null, <contenttweaker:basiccircuit>, null], [null, null, null]]);
recipes.addShaped(<cregtech:mode:4>, [[null, null, null],[<contenttweaker:basiccircuit>, null, null], [null, null, null]]);
recipes.addShaped(<cregtech:mode:3>, [[null, null, <contenttweaker:basiccircuit>],[null, null, null], [null, null, null]]);
recipes.addShaped(<cregtech:mode:2>, [[null, <contenttweaker:basiccircuit>, null],[null, null, null], [null, null, null]]);
recipes.addShaped(<cregtech:mode:1>, [[<contenttweaker:basiccircuit>, null, null],[null, null, null], [null, null, null]]);

//底汤
recipes.remove(<harvestcraft:stockitem>);
recipes.addShapeless(<harvestcraft:stockitem>, [<harvestcraft:potitem>.reuse(),<ore:listAllmeatraw>]);
recipes.addShapeless(<harvestcraft:stockitem>, [<harvestcraft:potitem>.reuse(),<ore:listAllveggie>]);
recipes.addShapeless(<harvestcraft:stockitem>, [<harvestcraft:potitem>.reuse(),<minecraft:bone>]);

//木制生物农场
recipes.remove(<tinymobfarm:wood_farm>);
recipes.addShaped(<tinymobfarm:wood_farm>, [[<ore:bookshelf>, <minecraft:rotten_flesh>, <ore:bookshelf>],[<minecraft:gunpowder>, <minecraft:glass>, <minecraft:bone>], [<ore:bookshelf>, <minecraft:string>, <ore:bookshelf>]]);

//石制生物农场
recipes.remove(<tinymobfarm:stone_farm>);
recipes.addShaped(<tinymobfarm:stone_farm>, [[<ore:stone>, <minecraft:obsidian>, <ore:stone>],[<tinymobfarm:wood_farm>, <ore:bookshelf>, <tinymobfarm:wood_farm>], [<ore:stone>, <minecraft:obsidian>, <ore:stone>]]);

//多方块构建工具
recipes.remove(<mbtool:mbtool>);
recipes.addShaped(<mbtool:mbtool>, [[null, <minecraft:diamond_pickaxe>, null],[<minecraft:stone_button>, <modularmachinery:machine_projector>, <minecraft:stone_button>], [null, <minecraft:diamond_shovel>, null]]);

//老婆饼-热力压缩机
mods.thermalexpansion.Compactor.addMintRecipe(<contenttweaker:pastry>, <contenttweaker:shadow_zl>*4, 540000);

//晴朗之空
recipes.addShaped(<contenttweaker:sunny>, [[<minecraft:glowstone_dust>, <thermalfoundation:material:166>, <minecraft:glowstone_dust>],[<thermalfoundation:material:166>, <minecraft:double_plant>, <thermalfoundation:material:166>], [<minecraft:glowstone_dust>, <thermalfoundation:material:166>, <minecraft:glowstone_dust>]]);

//探矿仪
recipes.remove(<orevisualdetector:scanner>);
recipes.addShaped(<orevisualdetector:scanner>, [[<minecraft:glass_pane>, <scannable:module_range>, <minecraft:glass_pane>],[<scannable:module_range>, <scannable:scanner>, <scannable:module_range>], [<minecraft:glass_pane>, <scannable:module_range>, <minecraft:glass_pane>]]);

//胡萝卜蛋糕
recipes.remove(<harvestcraft:carrotcakeitem>);
recipes.addShaped(<harvestcraft:carrotcakeitem>, [[<minecraft:carrot>, <minecraft:carrot>, <minecraft:carrot>],[<ore:listAllsugar>, <minecraft:egg>, <ore:listAllsugar>], [<ore:foodDough>, <ore:foodDough>, <ore:foodDough>]]);

//空白坐标卡
recipes.addShaped(<contenttweaker:empty_oil_card>, [[<contenttweaker:stainless_plate>, <appliedenergistics2:memory_card>, <contenttweaker:stainless_plate>],[<appliedenergistics2:memory_card>, <scannable:module_blank>, <appliedenergistics2:memory_card>], [<contenttweaker:stainless_plate>, <appliedenergistics2:memory_card>, <contenttweaker:stainless_plate>]]);

//沙滩坐标卡
recipes.addShaped(<contenttweaker:oil_beach>, [[<minecraft:sand>, <minecraft:water_bucket>, <minecraft:sand>],[<minecraft:water_bucket>, <contenttweaker:empty_oil_card>, <minecraft:water_bucket>], [<minecraft:sand>, <minecraft:water_bucket>, <minecraft:sand>]]);

//沙漠坐标卡
recipes.addShaped(<contenttweaker:oil_desert>, [[<minecraft:sandstone>, <minecraft:cactus>, <minecraft:sandstone>],[<minecraft:cactus>, <contenttweaker:empty_oil_card>, <minecraft:cactus>], [<minecraft:sandstone>, <minecraft:cactus>, <minecraft:sandstone>]]);

//盆地坐标卡
recipes.addShaped(<contenttweaker:oil_basin>, [[<minecraft:grass>, <ore:listAllseed>, <minecraft:grass>],[<ore:listAllseed>, <contenttweaker:empty_oil_card>, <ore:listAllseed>], [<minecraft:grass>, <ore:listAllseed>, <minecraft:grass>]]);

//超级缸I-III
recipes.addShaped(<cregtech:super_tank>, [[<minecraft:iron_ingot>, <modularmachinery:itemmodularium>, <minecraft:iron_ingot>],[<modularmachinery:itemmodularium>, <tconstruct:large_plate>.withTag({Material: "aluminium"}), <modularmachinery:itemmodularium>], [<minecraft:iron_ingot>, <modularmachinery:itemmodularium>, <minecraft:iron_ingot>]]);
//recipes.addShaped(<cregtech:super_tank:1>, [[<contenttweaker:resinplate>, <contenttweaker:stainless_plate>, <contenttweaker:resinplate>],[<contenttweaker:stainless_plate>, <tconstruct:large_plate>.withTag({Material: "manasteel"}), <contenttweaker:stainless_plate>], [<contenttweaker:resinplate>, <contenttweaker:stainless_plate>, <contenttweaker:resinplate>]]);
//recipes.addShaped(<cregtech:super_tank:2>, [[<contenttweaker:mana_stainless_ingot>, <plustic:osmiridiumingot>, <contenttweaker:mana_stainless_ingot>],[<plustic:osmiridiumingot>, <tconstruct:large_plate>.withTag({Material: "wyvern_metal"}), <plustic:osmiridiumingot>], [<contenttweaker:mana_stainless_ingot>, <plustic:osmiridiumingot>, <contenttweaker:mana_stainless_ingot>]]);

//迫真紫黑块
recipes.addShapedMirrored(<cregtech:missing_block> * 4, [[<minecraft:concrete:10>, <minecraft:concrete:15>, null],[<minecraft:concrete:15>, <minecraft:concrete:10>, null], [null, null, null]]);
recipes.addShapedMirrored(<cregtech:missing_block> * 4, [[<minecraft:concrete:15>,<minecraft:concrete:10>, null],[<minecraft:concrete:10>,<minecraft:concrete:15>,null], [null, null, null]]);

//铱锇合金粉
AlloySmelter.addRecipe(<contenttweaker:osmiridium_dust>, [<mekanism:dust:2>,<thermalfoundation:material:71>],4000, 2.0f);
mods.nuclearcraft.alloy_furnace.addRecipe([<mekanism:dust:2>,<thermalfoundation:material:71>,<contenttweaker:osmiridium_dust>]);

//MTO指导手册
recipes.addShapeless(<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:mto_guide_book"}), [<minecraft:stick>]);

//彩虹符文
recipes.remove(<quark:rune:16>);
mods.botania.RuneAltar.addRecipe(<quark:rune:16>, [<contenttweaker:rainbow_petal>,<contenttweaker:rainbow_petal>,<contenttweaker:rainbow_petal>,<quark:rune>,<quark:rune:2>,<quark:rune:11>,<quark:rune:3>,<quark:rune:5>,<quark:rune:4>,<quark:rune:1>,<quark:rune:14>], 30000);

//炭灰红石
recipes.addShapeless(<deepmoblearning:soot_covered_redstone> * 2, [<minecraft:redstone>,<thermalfoundation:material:768>]);

//铬粉富集
mods.mekanism.enrichment.addRecipe(<contenttweaker:chrome_ore>,<contenttweaker:chrome_dust>*2);

//钛铁矿粉富集
mods.mekanism.enrichment.addRecipe(<galacticraftplanets:asteroids_block:4>,<contenttweaker:ilmenite_dust>*2);
mods.mekanism.enrichment.addRecipe(<galacticraftplanets:item_basic_asteroids:4>,<contenttweaker:ilmenite_dust>*2);
//并行控制器(4*)
recipes.addShaped(<modularmachinery:blockparallelcontroller>, [[<modularmachinery:blockcasing>, <appliedenergistics2:crafting_accelerator>, <modularmachinery:blockcasing>],[<appliedenergistics2:crafting_accelerator>, <threng:material:6>, <appliedenergistics2:crafting_accelerator>], [<modularmachinery:blockcasing>, <appliedenergistics2:crafting_accelerator>, <modularmachinery:blockcasing>]]);

//凋零灰
mods.thermalexpansion.Pulverizer.addRecipe(<quark:black_ash>, <tconstruct:materials:17>, 4000);

//蕴魔不锈钢
AlloySmelter.addRecipe(<contenttweaker:mana_stainless_ingot>*2, [<contenttweaker:stainless_ingot>,<botania:manaresource:7>],8000, 2.0f);

//环氧树脂板
mods.tconstruct.Casting.addTableRecipe(<cregtech:meta.material>,<tconstruct:cast_custom:3>,<liquid:epoxy_resin>,144,false,80);

//不锈钢板
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:stainless_plate>, <contenttweaker:stainless_ingot>, 8000);
mods.nuclearcraft.pressurizer.addRecipe([<contenttweaker:stainless_ingot>,<contenttweaker:stainless_plate>]);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:stainless_plate>,<contenttweaker:stainless_ingot>,<immersiveengineering:mold:0>, 4000);

//不锈钢杆
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:stainless_rod>*2, <contenttweaker:stainless_ingot>, <immersiveengineering:mold:2>,2000);

//铬杆
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:chrome_rod>*2, <contenttweaker:chrome_ingot>, <immersiveengineering:mold:2>,2000);

//钛杆
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:titanium_rod>*2,<contenttweaker:titanium_ingot>,<immersiveengineering:mold:2>, 1024);

//钛板
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:titanium_plate>, <contenttweaker:titanium_ingot>, 8000);
mods.nuclearcraft.pressurizer.addRecipe([<contenttweaker:titanium_ingot>,<contenttweaker:titanium_plate>]);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:titanium_plate>,<contenttweaker:titanium_ingot>,<immersiveengineering:mold:0>, 4000);

//铬板
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:chrome_plate>, <contenttweaker:chrome_ingot>, 8000);
mods.nuclearcraft.pressurizer.addRecipe([<contenttweaker:chrome_ingot>,<contenttweaker:chrome_plate>]);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:chrome_plate>,<contenttweaker:chrome_ingot>,<immersiveengineering:mold:0>, 4000);

//钛齿轮
mods.thermalexpansion.Compactor.addGearRecipe(<contenttweaker:titanium_gear>, <contenttweaker:titanium_ingot>*4, 4096);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:titanium_gear>,<contenttweaker:titanium_ingot>*4,<immersiveengineering:mold:1>, 2048);

//棒/杆-锯木机
mods.thermalexpansion.Sawmill.addRecipe(<contenttweaker:stainless_rod>*2, <contenttweaker:stainless_ingot>, 2048);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:material:1>*2, <minecraft:iron_ingot>, 2048);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:material:2>*2, <thermalfoundation:material:160>, 2048);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:material:3>*2, <thermalfoundation:material:132>, 2048);
mods.thermalexpansion.Sawmill.addRecipe(<contenttweaker:titanium_rod>*2, <contenttweaker:titanium_ingot>, 2048);
mods.thermalexpansion.Sawmill.addRecipe(<contenttweaker:chrome_rod>*2, <contenttweaker:chrome_ingot>, 2048);

//大理石矿辞移除
<ore:stoneMarble>.remove(<quark:marble>);

//充能柚子
mods.thermalexpansion.Infuser.addRecipe(<contenttweaker:bat>,<harvestcraft:grapefruititem>,16000);

//柚子有机灌注
mods.thermalexpansion.Insolator.addRecipe(<harvestcraft:grapefruititem>*2,<thermalfoundation:fertilizer>, <harvestcraft:grapefruititem>,4800);
mods.thermalexpansion.Insolator.addRecipe(<harvestcraft:grapefruititem>*4,<thermalfoundation:fertilizer:1>, <harvestcraft:grapefruititem>,7200);
mods.thermalexpansion.Insolator.addRecipe(<harvestcraft:grapefruititem>*6,<thermalfoundation:fertilizer:2>, <harvestcraft:grapefruititem>,9600);

//工业大麻有机灌注
mods.thermalexpansion.Insolator.addRecipe(<immersiveengineering:material:4>*4,<thermalfoundation:fertilizer>, <immersiveengineering:seed>,4800,<immersiveengineering:seed>,100);
mods.thermalexpansion.Insolator.addRecipe(<immersiveengineering:material:4>*8,<thermalfoundation:fertilizer:1>, <immersiveengineering:seed>,7200,<immersiveengineering:seed>,125);
mods.thermalexpansion.Insolator.addRecipe(<immersiveengineering:material:4>*12,<thermalfoundation:fertilizer:2>, <immersiveengineering:seed>,9600,<immersiveengineering:seed>,150);

//微光苋灌注重制
mods.thermalexpansion.Insolator.removeRecipe(<thermalfoundation:fertilizer:2>, <astralsorcery:blockcustomflower>);
mods.thermalexpansion.Insolator.addRecipe(<minecraft:glowstone_dust>*2,<thermalfoundation:fertilizer>, <astralsorcery:blockcustomflower>,8000,<astralsorcery:blockcustomflower>,100);
mods.thermalexpansion.Insolator.addRecipe(<minecraft:glowstone_dust>*4,<thermalfoundation:fertilizer:1>, <astralsorcery:blockcustomflower>,16000,<astralsorcery:blockcustomflower>,100);
mods.thermalexpansion.Insolator.addRecipe(<minecraft:glowstone_dust>*8,<thermalfoundation:fertilizer:2>, <astralsorcery:blockcustomflower>,32000,<astralsorcery:blockcustomflower>,100);

//大理石转换
recipes.addShapeless(<quark:marble>, [<astralsorcery:blockmarble>]);

//扫描器
recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>, [[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>],[<tconstruct:ingots:2>, <minecraft:redstone>, <tconstruct:ingots:2>], [<modularmachinery:itemmodularium>, <tconstruct:ingots:2>, <modularmachinery:itemmodularium>]]);

//通量粉尘
mods.immersiveengineering.ArcFurnace.addRecipe(<fluxnetworks:flux>, <minecraft:redstone> , null, 20, 200);
mods.mekanism.enrichment.addRecipe(<minecraft:redstone>, <fluxnetworks:flux>*2);

//滤网基座
recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped(<waterstrainer:strainer_base>, [[<modularmachinery:itemmodularium>, <minecraft:web>, <modularmachinery:itemmodularium>],[<minecraft:hopper>, <minecraft:hopper>, <minecraft:hopper>], [<thermalfoundation:storage_alloy>, <immersiveengineering:wooden_device0>, <thermalfoundation:storage_alloy>]]);

//指北针
recipes.addShaped(<contenttweaker:north_compass>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[null, <minecraft:redstone>, null], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);

//移除锯末直接造纸
recipes.removeShaped(<minecraft:paper> * 6, [[null, null, null],[<thermalfoundation:material:800>, <thermalfoundation:material:800>, <thermalfoundation:material:800>], [null, null, null]]);

//阿卡什手册
recipes.addShapeless(<akashictome:tome>.withTag(
	{"akashictome:is_morphing": 1 as byte, "akashictome:data": {
		tconstruct: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, 
		astralsorcery: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "astralsorcery:itemjournal", Count: 1 as byte, tag: {"akashictome:definedMod": "astralsorcery"}, Damage: 0 as short}, 
		theoneprobe: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "theoneprobe:probenote", Count: 1 as byte, tag: {"akashictome:definedMod": "theoneprobe"}, Damage: 0 as short}, 
		ftbquests: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short}, 
		immersiveengineering: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, 
		valkyrielib: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, 
		rftools: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "rftools:rftools_shape_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short}, 
		ebwizardry: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "ebwizardry:wizard_handbook", Count: 1 as byte, tag: {"akashictome:definedMod": "ebwizardry"}, Damage: 0 as short}, 
		extendedcrafting: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "extendedcrafting:guide", Count: 1 as byte, tag: {TopicsPage: 0, "akashictome:definedMod": "extendedcrafting", EntryId: 0, EntryPage: 0}, Damage: 0 as short}, 
		botania: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "botania:lexicon", Count: 1 as byte, tag: {"knowledge.minecraft": 1 as byte, "akashictome:definedMod": "botania", "knowledge.alfheim": 1 as byte, "knowledge.dream": 1 as byte, "knowledge.relic": 1 as byte}, Damage: 0 as short}, 
		bloodmagic1: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "bloodmagic:sanguine_book", Count: 1 as byte, tag: {"akashictome:definedMod": "bloodmagic1"}, Damage: 0 as short}, 
		actuallyadditions: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "actuallyadditions:item_booklet", Count: 1, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short},
		touhou_little_maid: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "touhou_little_maid", "patchouli:book": "touhou_little_maid:memorizable_gensokyo"}, Damage: 0 as short}, 
		cookingforblockheads: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads"}, Damage: 0 as short}, 
		rftoolscontrol: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "rftoolscontrol:rftoolscontrol_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftoolscontrol"}, Damage: 0 as short}, 
		conarm: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, 
		embers: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "embers:codex", Count: 1 as byte, tag: {"akashictome:definedMod": "embers"}, Damage: 0 as short}, 
		cfm: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "cfm:item_recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cfm"}, Damage: 0 as short}, 
		patchouli: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "patchouli:guide_book", Count: 1, tag: {"akashictome:definedMod": "patchouli", "patchouli:book": "patchouli:mto_guide_book"}, Damage: 0 as short},
		cookingforblockheads1: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:displayName": "傻瓜烹饪手册 I", "akashictome:definedMod": "cookingforblockheads1", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a傻瓜烹饪手册 I§r）"}}, Damage: 1 as short}, 
		ancientspellcraft: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "ancientspellcraft", "patchouli:book": "ancientspellcraft:manual"}, Damage: 0 as short}, 
		cookingforblockheads2: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads2"}, Damage: 2 as short}, 
		deepmoblearning: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "deepmoblearning", "patchouli:book": "deepmoblearning:book"}, Damage: 0 as short}, 
		rftools1: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, 
		modularrouters: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "guideapi:modularrouters-guidebook", Count: 1 as byte, tag: {"akashictome:displayName": "Modular Routers Guide", "akashictome:definedMod": "modularrouters", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§aModular Routers Guide§r）"}, "G-API_Category_Page": 0, "G-API_Category": 1, "G-API_Entry_Page": 0}, Damage: 0 as short}, 
		bloodmagic: {ForgeCaps: {"wizardryutils:summoneditemdata": {}}, id: "guideapi:bloodmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "bloodmagic"}, Damage: 0 as short}
		}
	}
), [<minecraft:stick>,<minecraft:stick>]);

//末影人灵魂瓶
mods.thermalexpansion.Enchanter.addRecipe(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:enderman"})*4,<enderio:item_soul_vial>*4, <deepmoblearning:pristine_matter_enderman>, 8000, 3200, false);

//箱子转换
recipes.addShapeless(<minecraft:chest>, [<ore:chestWood>]);

//魔法泉水精炼
mods.thermalexpansion.Refinery.addRecipe(<liquid:fluidedmana>,<botania:manaresource:23>,<liquid:mana_water>*1000, 8000);

//巫术学魔力水晶
mods.mekanism.enrichment.addRecipe(<ebwizardry:crystal_ore>,<ebwizardry:magic_crystal>*3);

//时间之瓶
recipes.remove(<tiab:timeinabottle>);
recipes.addShaped(<tiab:timeinabottle>, [[<nuclearcraft:upgrade>, <minecraft:diamond>, <modularrouters:upgrade:1>],[<thermalfoundation:storage_alloy>, <minecraft:glass_bottle>, <thermalfoundation:storage_alloy>], [<thermalfoundation:storage_alloy>, <minecraft:clock>, <thermalfoundation:storage_alloy>]]);

//科研币
recipes.addShapeless(<contenttweaker:nova>, [<contenttweaker:nova2>]);
recipes.addShapeless(<contenttweaker:nova2>, [<contenttweaker:nova>]);

//水槽
recipes.remove(<cookingforblockheads:sink>);
recipes.addShaped(<cookingforblockheads:sink>, [[<minecraft:iron_trapdoor>, <minecraft:iron_trapdoor>, <minecraft:iron_trapdoor>],[<minecraft:hardened_clay>, <nuclearcraft:water_source_compact>, <minecraft:hardened_clay>], [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]]);

//套索
recipes.remove(<tinymobfarm:lasso>);
recipes.addShaped(<tinymobfarm:lasso>, [[null, <avaritia:resource>, null],[<enderutilities:enderpart:0>, <minecraft:lead>, <enderutilities:enderpart:0>], [null, <avaritia:resource>, null]]);

//青铜机器外壳
recipes.addShaped(<cregtech:bronze_machine_casing>*2, [[<thermalfoundation:material:355>, <thermalfoundation:material:355>, <thermalfoundation:material:355>],[<thermalfoundation:material:355>, <modularmachinery:blockcasing>, <thermalfoundation:material:355>], [<thermalfoundation:material:355>, <thermalfoundation:material:355>, <thermalfoundation:material:355>]]);

//殷钢隔热机械外壳
recipes.addShaped(<cregtech:heat_proof_invar_machine_casing> * 2, [[<thermalfoundation:material:354>, <thermalfoundation:material:354>, <thermalfoundation:material:354>],[<thermalfoundation:material:354>, <modularmachinery:blockcasing>, <thermalfoundation:material:354>], [<thermalfoundation:material:354>, <thermalfoundation:material:354>, <thermalfoundation:material:354>]]);

//化学惰性机械方块
mods.thermalexpansion.Transposer.addFillRecipe(<cregtech:chem_machine_casing>,<immersiveengineering:metal_decoration1:1>, <liquid:polytetrafluoroethylene>*216, 8000);

//聚四氟乙烯管道方块
mods.thermalexpansion.Transposer.addFillRecipe(<cregtech:ptee_pipe_casing>,<modularmachinery:blockcasing:1>, <liquid:polytetrafluoroethylene>*1152, 40000);

//教皇块
recipes.addShapeless(<contenttweaker:zl_ingot> * 9, [<contenttweaker:zl_block>]);
recipes.addShaped(<contenttweaker:zl_block>, [[<contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>],[<contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>], [<contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>, <contenttweaker:zl_ingot>]]);

//银河能量块
recipes.addShapeless(<contenttweaker:galaxy_ingot> * 9, [<contenttweaker:galaxy_block>]);
recipes.addShaped(<contenttweaker:galaxy_block>, [[<contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>],[<contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>], [<contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>, <contenttweaker:galaxy_ingot>]]);

//宇宙能量块
recipes.addShapeless(<contenttweaker:universe_ingot> * 9, [<contenttweaker:universe_block>]);
recipes.addShaped(<contenttweaker:universe_block>, [[<contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>],[<contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>], [<contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>, <contenttweaker:universe_ingot>]]);

//能量金属
recipes.addShapeless(<contenttweaker:energy_ingot> * 9, [<tconevo:metal_block:7>]);
recipes.addShaped(<tconevo:metal_block:7>, [[<contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>],[<contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>], [<contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>, <contenttweaker:energy_ingot>]]);

//红晶锭
recipes.addShaped(<contenttweaker:redingot> * 2, [[<contenttweaker:ruby_dust>, <enderio:item_alloy_ingot:3>, <contenttweaker:ruby_dust>],[<enderio:item_alloy_ingot:3>, <contenttweaker:starstone>, <enderio:item_alloy_ingot:3>], [<contenttweaker:ruby_dust>, <enderio:item_alloy_ingot:3>, <contenttweaker:ruby_dust>]]);
AlloySmelter.addRecipe(<contenttweaker:redingot>*4, [<contenttweaker:ruby_dust>*4,<contenttweaker:starstone>,<enderio:item_alloy_ingot:3>*4],12000, 4.0f);

//ohxihh的头
recipes.addShapeless(<minecraft:skull:3>.withTag({SkullOwner: {Id: "1936e770-14bd-30f0-b41c-863e10b9c30b", Name: "ohxihh"}}), [<minecraft:skull:1>]);

//终极合成组件
recipes.remove(<extendedcrafting:material:17>);

//觉醒龙精华
recipes.addShaped(<contenttweaker:dragon_matter>, [[<contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>],[<contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>], [<contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>, <contenttweaker:dragon_matter2>]]);
recipes.addShapeless(<contenttweaker:dragon_matter2> * 9, [<contenttweaker:dragon_matter>]);

//觉醒龙尘
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:dragon_dust2>,<contenttweaker:dragon_matter2>, <liquid:cloud_seed_concentrated>*500, 8000);

//机械通风口
recipes.addShaped(<modularmachinery:blockcasing:1>, [[<modularmachinery:blockcasing>, <minecraft:iron_bars>, <modularmachinery:blockcasing>],[<minecraft:iron_bars>, <immersiveengineering:wooden_device1:1>, <minecraft:iron_bars>], [<modularmachinery:blockcasing>, <immersiveengineering:metal_decoration0:7>, <modularmachinery:blockcasing>]]);

//银河能量锭
AlloySmelter.addRecipe(<contenttweaker:galaxy_ingot>, [<avaritia:resource:1>,<draconicevolution:draconic_ingot>*4,<avaritia:resource:4>*8],36000, 4.0f);

//黑曜石TNT
mods.jei.JEI.removeAndHide(<mekanism:obsidiantnt>);
recipes.addShaped(<contenttweaker:tnt1>, [[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>], [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

//中子粒
recipes.remove(<avaritia:resource:3>);

//中子锭
recipes.remove(<avaritia:resource:4>);
mods.thermalexpansion.Factorizer.removeRecipeCombine(<avaritia:resource:3> * 9);

//炭灰机器外壳
recipes.remove(<deepmoblearning:machine_casing>);
recipes.addShaped(<deepmoblearning:machine_casing>, [[<deepmoblearning:soot_covered_plate>, <plustic:osgloglasblock>, <deepmoblearning:soot_covered_plate>],[<plustic:osmiridiumblock>, <nuclearcraft:part:12>, <plustic:osmiridiumblock>], [<deepmoblearning:soot_covered_plate>, <plustic:osgloglasblock>, <deepmoblearning:soot_covered_plate>]]);

//通量核心
recipes.remove(<fluxnetworks:fluxcore>);
recipes.addShaped(<fluxnetworks:fluxcore>*4, [[<minecraft:obsidian>, <fluxnetworks:flux>, <minecraft:obsidian>],[<thermalfoundation:material:1025>, <minecraft:ender_eye>, <thermalfoundation:material:1025>], [<minecraft:obsidian>, <fluxnetworks:flux>, <minecraft:obsidian>]]);

//星辰石
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/contenttweaker:starstone", <contenttweaker:starstone>, 400, 100, 
[
	<astralsorcery:blockmarble>, <astralsorcery:blockmarble>,<astralsorcery:blockmarble>,
	<astralsorcery:blockmarble>, <ore:dustSkyStone>,<astralsorcery:blockmarble>, 
	<astralsorcery:blockmarble>, <astralsorcery:blockmarble>,<astralsorcery:blockmarble>
]);

//锇萤黑曜合金
AlloySmelter.addRecipe(<plustic:osgloglasingot>, [<mekanism:ingot:1>,<mekanism:ingot>,<mekanism:ingot:3>],12000, 4.0f);

//基础集成电路
recipes.addShaped(<contenttweaker:basiccircuit>, [[<immersiveengineering:material:20>, <extendedcrafting:material:8>, <immersiveengineering:material:20>],[<immersiveengineering:material:20>, <contenttweaker:compressedresinplate>, <immersiveengineering:material:20>], [<immersiveengineering:material:20>, <immersiveengineering:material:27>, <immersiveengineering:material:20>]]);

//进阶集成电路
recipes.addShaped(<contenttweaker:advancedcircuit>, [[<immersiveengineering:wirecoil:7>, <extendedcrafting:material:9>, <immersiveengineering:wirecoil:7>],[<plustic:osmiridiumingot>, <contenttweaker:advancedcircuitplate>, <plustic:osmiridiumingot>], [<immersiveengineering:wirecoil:7>, <immersiveengineering:material:27>, <immersiveengineering:wirecoil:7>]]);

//末影珍珠堆叠上限
<minecraft:ender_pearl>.maxStackSize = 64;

//流体桶堆叠
<forge:bucketfilled>.maxStackSize = 64;

//青铜燃烧室
recipes.addShaped(<cregtech:bronze_pipe_casing>, [[<thermalfoundation:material:355>, <thermalfoundation:material:291>, <thermalfoundation:material:355>],[<thermalfoundation:material:291>, <cregtech:bronze_machine_casing>, <thermalfoundation:material:291>], [<thermalfoundation:material:355>, <thermalfoundation:material:291>, <thermalfoundation:material:355>]]);

//====================================================================================应用能源====================================================================================
//原材料缓存仓
recipes.remove(<ae2fc:ingredient_buffer>);
recipes.addShaped(<ae2fc:ingredient_buffer>, [[<minecraft:iron_ingot>, <appliedenergistics2:material:35>, <minecraft:iron_ingot>],[<appliedenergistics2:material:44>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:43>], [<minecraft:iron_ingot>, <appliedenergistics2:material:35>, <minecraft:iron_ingot>]]);

//ME驱动器
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [[<thermalfoundation:material:132>, <appliedenergistics2:material:24>, <thermalfoundation:material:132>],[<appliedenergistics2:part:16>, <appliedenergistics2:chest>, <appliedenergistics2:part:16>], [<thermalfoundation:material:132>, <appliedenergistics2:material:24>, <thermalfoundation:material:132>]]);

//分子装配室
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler> * 2, [[<nuclearcraft:ingot:7>, <botania:managlass>, <nuclearcraft:ingot:7>],[<appliedenergistics2:crafting_unit>, <extendedcrafting:material:8>, <appliedenergistics2:crafting_unit>], [<nuclearcraft:ingot:7>, <botania:managlass>, <nuclearcraft:ingot:7>]]);

//无线设置工具
recipes.remove(<ae2stuff:wireless_kit>);
recipes.addShaped(<ae2stuff:wireless_kit>, [[<ae2wtlib:infinity_booster_card>, <appliedenergistics2:material:41>, <ae2wtlib:infinity_booster_card>],[<appliedenergistics2:material:9>, <appliedenergistics2:certus_quartz_wrench>, <appliedenergistics2:material:9>], [<ae2wtlib:infinity_booster_card>, <appliedenergistics2:material:9>, <ae2wtlib:infinity_booster_card>]]);

//无线增幅卡
recipes.remove(<ae2wtlib:infinity_booster_card>);
recipes.addShaped(<ae2wtlib:infinity_booster_card> * 8, [[null, <appliedenergistics2:material:41>, null],[<appliedenergistics2:material:9>, <appliedenergistics2:material:28>, <appliedenergistics2:material:9>], [null, <rftools:infused_enderpearl>, null]]);

//无线接收器
recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, [[null, <appliedenergistics2:material:9>, null],[<mekanism:ingot:1>, <environmentaltech:connector>, <mekanism:ingot:1>], [null, <mekanism:ingot:1>, null]]);

//充能赛特斯石英产高纯赛特斯石英
mods.threng.Centrifuge.addRecipe(<appliedenergistics2:material:10>*2,<appliedenergistics2:material:1>);

//石英磨具磨焦煤粉
Grinder.addRecipe(<immersiveengineering:material:17>, <immersiveengineering:material:6>, 5);
Grinder.addRecipe(<immersiveengineering:material:17>*9, <immersiveengineering:stone_decoration:3>, 15);

//SAG磨焦煤粉
SagMill.addRecipe([<immersiveengineering:material:17>],[100 as float],<immersiveengineering:material:6>,"NONE", 4000);

//充能赛特斯石英磨粉
mods.thermalexpansion.Pulverizer.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:1>, 4000);

//压印模板
recipes.addShaped(<appliedenergistics2:material:13>, [[<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:10>, <appliedenergistics2:smooth_sky_stone_block>],[<appliedenergistics2:material:10>, <tconstruct:large_plate>.withTag({Material: "aquamarine"}), <appliedenergistics2:material:10>], [<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:10>, <appliedenergistics2:smooth_sky_stone_block>]]);
recipes.addShaped(<appliedenergistics2:material:15>, [[<appliedenergistics2:smooth_sky_stone_block>, <minecraft:gold_ingot>, <appliedenergistics2:smooth_sky_stone_block>],[<minecraft:gold_ingot>, <tconstruct:large_plate>.withTag({Material: "aquamarine"}), <minecraft:gold_ingot>], [<appliedenergistics2:smooth_sky_stone_block>, <minecraft:gold_ingot>, <appliedenergistics2:smooth_sky_stone_block>]]);
recipes.addShaped(<appliedenergistics2:material:19>, [[<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:5>, <appliedenergistics2:smooth_sky_stone_block>],[<appliedenergistics2:material:5>, <tconstruct:large_plate>.withTag({Material: "aquamarine"}), <appliedenergistics2:material:5>], [<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:5>, <appliedenergistics2:smooth_sky_stone_block>]]);
recipes.addShaped(<appliedenergistics2:material:14>, [[<appliedenergistics2:smooth_sky_stone_block>, <minecraft:diamond>, <appliedenergistics2:smooth_sky_stone_block>],[<minecraft:diamond>, <tconstruct:large_plate>.withTag({Material: "aquamarine"}), <minecraft:diamond>], [<appliedenergistics2:smooth_sky_stone_block>, <minecraft:diamond>, <appliedenergistics2:smooth_sky_stone_block>]]);

//ME箱子
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [[<ore:blockGlass>, <appliedenergistics2:part:380>,<ore:blockGlass>],[<appliedenergistics2:part:16>, <ironchest:iron_chest:6>, <appliedenergistics2:part:16>], [<thermalfoundation:material:132>,<appliedenergistics2:material:12>, <thermalfoundation:material:132>]]);

//ME控制器
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [[<appliedenergistics2:material:12>, <appliedenergistics2:material:24>, <appliedenergistics2:material:12>],[<thermalfoundation:material:132>, <contenttweaker:basiccircuit>, <thermalfoundation:material:132>], [<appliedenergistics2:material:22>, <appliedenergistics2:material:12>, <appliedenergistics2:material:23>]]);

//逻辑处理器(逻辑电路/硅板)
Inscriber.addRecipe(<appliedenergistics2:material:18>, <tconstruct:cast>, true, <immersiveengineering:mold>);
Inscriber.addRecipe(<appliedenergistics2:material:20>, <ore:blockQuartz>, true, <immersiveengineering:mold>);

//陨石
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("ohxihh:shaped/internal/altar/appliedenergistics2:sky_stone_block", <appliedenergistics2:sky_stone_block>*8, 400, 100, 
[
	<astralsorcery:blockmarble>, <astralsorcery:blockmarble>,<astralsorcery:blockmarble>,
	<astralsorcery:blockmarble>, <extendedcrafting:storage>,<astralsorcery:blockmarble>, 
	<astralsorcery:blockmarble>, <astralsorcery:blockmarble>,<astralsorcery:blockmarble>
]);

/*
//存储组件(4.16.64.256.1024.4096.16384)
recipes.remove(<appliedenergistics2:material:38>);
recipes.remove(<appliedenergistics2:material:37>);
recipes.remove(<appliedenergistics2:material:36>);
recipes.remove(<nae2:material:1>);
recipes.remove(<nae2:material:2>);
recipes.remove(<nae2:material:3>);
recipes.remove(<nae2:material:4>);
recipes.addShaped(<appliedenergistics2:material:36>, [[<thermalfoundation:material:132>, <appliedenergistics2:material:9>, <thermalfoundation:material:132>],[<appliedenergistics2:material:35>, <appliedenergistics2:material:23>, <appliedenergistics2:material:35>], [<thermalfoundation:material:132>, <appliedenergistics2:material:35>, <thermalfoundation:material:132>]]);
recipes.addShaped(<appliedenergistics2:material:37>, [[<enderutilities:enderpart>, <appliedenergistics2:material:9>, <enderutilities:enderpart>],[<appliedenergistics2:material:36>, <appliedenergistics2:material:23>, <appliedenergistics2:material:36>], [<enderutilities:enderpart>, <appliedenergistics2:material:36>, <enderutilities:enderpart>]]);
recipes.addShaped(<appliedenergistics2:material:38>, [[<nuclearcraft:ingot:7>, <appliedenergistics2:material:41>, <nuclearcraft:ingot:7>],[<appliedenergistics2:material:37>, <appliedenergistics2:material:23>, <appliedenergistics2:material:37>], [<nuclearcraft:ingot:7>, <appliedenergistics2:material:37>, <nuclearcraft:ingot:7>]]);
recipes.addShaped(<nae2:material:1>, [[<contenttweaker:stainless_ingot>, <appliedenergistics2:material:41>, <contenttweaker:stainless_ingot>],[<appliedenergistics2:material:38>, <appliedenergistics2:material:23>, <appliedenergistics2:material:38>], [<contenttweaker:stainless_ingot>, <appliedenergistics2:material:38>, <contenttweaker:stainless_ingot>]]);
recipes.addShaped(<nae2:material:2>, [[<draconicevolution:draconic_ingot>, <appliedenergistics2:material:41>, <draconicevolution:draconic_ingot>],[<nae2:material:1>, <appliedenergistics2:material:23>, <nae2:material:1>], [<draconicevolution:draconic_ingot>, <nae2:material:1>, <draconicevolution:draconic_ingot>]]);
recipes.addShaped(<nae2:material:3>, [[<draconicevolution:draconic_ingot>, <appliedenergistics2:material:41>, <draconicevolution:draconic_ingot>],[<nae2:material:2>, <appliedenergistics2:material:23>, <nae2:material:2>], [<draconicevolution:draconic_ingot>, <nae2:material:2>, <draconicevolution:draconic_ingot>]]);
recipes.addShaped(<nae2:material:4>, [[<tconevo:metal:5>, <appliedenergistics2:material:41>, <tconevo:metal:5>],[<nae2:material:3>, <appliedenergistics2:material:23>, <nae2:material:3>], [<tconevo:metal:5>, <nae2:material:3>, <tconevo:metal:5>]]);
*/

//流体转置洗去线缆颜色
var group1 as IItemStack[]=[
<appliedenergistics2:part>,
<appliedenergistics2:part:1>,
<appliedenergistics2:part:2>,
<appliedenergistics2:part:3>,
<appliedenergistics2:part:4>,
<appliedenergistics2:part:5>,
<appliedenergistics2:part:6>,
<appliedenergistics2:part:7>,
<appliedenergistics2:part:8>,
<appliedenergistics2:part:16>,
<appliedenergistics2:part:15>,
<appliedenergistics2:part:14>,
<appliedenergistics2:part:13>,
<appliedenergistics2:part:12>,
<appliedenergistics2:part:11>,
<appliedenergistics2:part:10>,
<appliedenergistics2:part:9>
];  
for a in group1{
mods.thermalexpansion.Transposer.addFillRecipe(<appliedenergistics2:part:16>, a, <liquid:water> * 1000, 1000);
}

var group2 as IItemStack[]=[
<appliedenergistics2:part:20>,
<appliedenergistics2:part:21>,
<appliedenergistics2:part:22>,
<appliedenergistics2:part:23>,
<appliedenergistics2:part:24>,
<appliedenergistics2:part:25>,
<appliedenergistics2:part:26>,
<appliedenergistics2:part:27>,
<appliedenergistics2:part:28>,
<appliedenergistics2:part:36>,
<appliedenergistics2:part:35>,
<appliedenergistics2:part:34>,
<appliedenergistics2:part:33>,
<appliedenergistics2:part:32>,
<appliedenergistics2:part:31>,
<appliedenergistics2:part:30>,
<appliedenergistics2:part:29>
];  
for b in group2{
mods.thermalexpansion.Transposer.addFillRecipe(<appliedenergistics2:part:36>, b, <liquid:water> * 1000, 1000);
}

var group3 as IItemStack[]=[
<appliedenergistics2:part:40>,
<appliedenergistics2:part:41>,
<appliedenergistics2:part:42>,
<appliedenergistics2:part:43>,
<appliedenergistics2:part:44>,
<appliedenergistics2:part:45>,
<appliedenergistics2:part:46>,
<appliedenergistics2:part:47>,
<appliedenergistics2:part:48>,
<appliedenergistics2:part:56>,
<appliedenergistics2:part:55>,
<appliedenergistics2:part:54>,
<appliedenergistics2:part:53>,
<appliedenergistics2:part:52>,
<appliedenergistics2:part:51>,
<appliedenergistics2:part:50>,
<appliedenergistics2:part:49>
];  
for c in group3{
mods.thermalexpansion.Transposer.addFillRecipe(<appliedenergistics2:part:56>, c, <liquid:water> * 1000, 1000);
}

var group4 as IItemStack[]=[
<appliedenergistics2:part:60>,
<appliedenergistics2:part:61>,
<appliedenergistics2:part:62>,
<appliedenergistics2:part:63>,
<appliedenergistics2:part:64>,
<appliedenergistics2:part:65>,
<appliedenergistics2:part:66>,
<appliedenergistics2:part:67>,
<appliedenergistics2:part:68>,
<appliedenergistics2:part:69>,
<appliedenergistics2:part:70>,
<appliedenergistics2:part:71>,
<appliedenergistics2:part:72>,
<appliedenergistics2:part:73>,
<appliedenergistics2:part:74>,
<appliedenergistics2:part:75>,
<appliedenergistics2:part:76>
];  
for d in group4{
mods.thermalexpansion.Transposer.addFillRecipe(<appliedenergistics2:part:76>, d, <liquid:water> * 1000, 1000);
}

var group5 as IItemStack[]=[
<appliedenergistics2:part:500>,
<appliedenergistics2:part:501>,
<appliedenergistics2:part:502>,
<appliedenergistics2:part:503>,
<appliedenergistics2:part:504>,
<appliedenergistics2:part:505>,
<appliedenergistics2:part:506>,
<appliedenergistics2:part:507>,
<appliedenergistics2:part:508>,
<appliedenergistics2:part:509>,
<appliedenergistics2:part:510>,
<appliedenergistics2:part:511>,
<appliedenergistics2:part:512>,
<appliedenergistics2:part:513>,
<appliedenergistics2:part:514>,
<appliedenergistics2:part:515>,
<appliedenergistics2:part:516>
];  
for d in group5{
mods.thermalexpansion.Transposer.addFillRecipe(<appliedenergistics2:part:516>, d, <liquid:water> * 1000, 1000);
}

//=====================================================================================ES存储=====================================================================================
//存储系统结构外壳
recipes.addShaped(<novaeng_core:estorage_casing> * 4, [[<contenttweaker:stainless_plate>, <modularmachinery:blockcasing:4>, <contenttweaker:stainless_plate>],[<modularmachinery:blockcasing:4>, <threng:material:6>, <modularmachinery:blockcasing:4>], [<contenttweaker:stainless_plate>, <modularmachinery:blockcasing:4>, <contenttweaker:stainless_plate>]]);

//ECO高密度能量元件
recipes.addShapeless(<novaeng_core:estorage_energy_cell_l9>, [<novaeng_core:estorage_energy_cell_l9>]);
recipes.addShapeless(<novaeng_core:estorage_energy_cell_l6>, [<novaeng_core:estorage_energy_cell_l6>]);
recipes.addShapeless(<novaeng_core:estorage_energy_cell_l4>, [<novaeng_core:estorage_energy_cell_l4>]);
recipes.addShapeless(<novaeng_core:estorage_energy_cell_l9> * 2, [<novaeng_core:estorage_casing>,<novaeng_core:estorage_energy_cell_l6>,<novaeng_core:estorage_casing>,<threng:material>,<threng:material>,<threng:material>,<novaeng_core:estorage_casing>,<novaeng_core:estorage_energy_cell_l6>,<novaeng_core:estorage_casing>]);
recipes.addShapeless(<novaeng_core:estorage_energy_cell_l6> * 2, [<novaeng_core:estorage_casing>,<novaeng_core:estorage_energy_cell_l4>,<novaeng_core:estorage_casing>,<threng:material>,<threng:material>,<threng:material>,<novaeng_core:estorage_casing>,<novaeng_core:estorage_energy_cell_l4>,<novaeng_core:estorage_casing>]);
recipes.addShapeless(<novaeng_core:estorage_energy_cell_l4> * 2, [<novaeng_core:estorage_casing>,<appliedenergistics2:energy_cell>,<novaeng_core:estorage_casing>,<threng:material>,<threng:material>,<threng:material>,<novaeng_core:estorage_casing>,<appliedenergistics2:energy_cell>,<novaeng_core:estorage_casing>]);

//存储系统结构散热器
recipes.addShaped(<novaeng_core:estorage_vent> * 4, [[<novaeng_core:estorage_casing>, <modularmachinery:blockcasing:1>, <novaeng_core:estorage_casing>],[<modularmachinery:blockcasing:1>, <threng:material:6>, <modularmachinery:blockcasing:1>], [<novaeng_core:estorage_casing>, <modularmachinery:blockcasing:1>, <novaeng_core:estorage_casing>]]);

//ECO-可扩展存储子系统主机
recipes.addShapeless(<novaeng_core:extendable_digital_storage_subsystem_l4>, [<novaeng_core:extendable_digital_storage_subsystem_l4>]);
recipes.addShapeless(<novaeng_core:extendable_digital_storage_subsystem_l6>, [<novaeng_core:extendable_digital_storage_subsystem_l6>]);
recipes.addShapeless(<novaeng_core:extendable_digital_storage_subsystem_l9>, [<novaeng_core:extendable_digital_storage_subsystem_l9>]);

//ECO-LR ME矩阵通讯接口
recipes.addShapeless(<novaeng_core:estorage_me_channel>, [<novaeng_core:estorage_casing>,<appliedenergistics2:io_port>,<novaeng_core:estorage_casing>,<novaeng_core:estorage_casing>,<ae2fc:dual_interface>,<novaeng_core:estorage_casing>,<novaeng_core:estorage_casing>,<appliedenergistics2:controller>,<novaeng_core:estorage_casing>]);
/*
//ECO-流体存储矩阵
recipes.addShaped(<novaeng_core:estorage_cell_fluid_256m>, [[<contenttweaker:stainless_plate>, <nae2:material:6>, <contenttweaker:stainless_plate>],[<nae2:material:6>, <novaeng_core:estorage_cell_fluid_64m>, <nae2:material:6>], [<contenttweaker:stainless_plate>, <nae2:material:6>, <contenttweaker:stainless_plate>]]);
recipes.addShaped(<novaeng_core:estorage_cell_fluid_64m>, [[<contenttweaker:stainless_plate>, <nae2:material:5>, <contenttweaker:stainless_plate>],[<nae2:material:5>, <novaeng_core:estorage_cell_fluid_16m>, <nae2:material:5>], [<contenttweaker:stainless_plate>, <nae2:material:5>, <contenttweaker:stainless_plate>]]);
recipes.addShaped(<novaeng_core:estorage_cell_fluid_16m>, [[<contenttweaker:stainless_plate>, <appliedenergistics2:material:39>, <contenttweaker:stainless_plate>],[<appliedenergistics2:material:39>, <nae2:material:5>, <appliedenergistics2:material:39>], [<contenttweaker:stainless_plate>, <appliedenergistics2:material:39>, <contenttweaker:stainless_plate>]]);
recipes.addShapeless(<novaeng_core:estorage_cell_fluid_256m>, [<novaeng_core:estorage_cell_fluid_256m>]);
recipes.addShapeless(<novaeng_core:estorage_cell_fluid_64m>, [<novaeng_core:estorage_cell_fluid_64m>]);
recipes.addShapeless(<novaeng_core:estorage_cell_fluid_16m>, [<novaeng_core:estorage_cell_fluid_16m>]);

//ECO-物品存储矩阵
recipes.addShaped(<novaeng_core:estorage_cell_item_256m>, [[<contenttweaker:stainless_plate>, <nae2:material:2>, <contenttweaker:stainless_plate>],[<nae2:material:2>, <novaeng_core:estorage_cell_item_64m>, <nae2:material:2>], [<contenttweaker:stainless_plate>, <nae2:material:2>, <contenttweaker:stainless_plate>]]);
recipes.addShaped(<novaeng_core:estorage_cell_item_64m>, [[<contenttweaker:stainless_plate>, <nae2:material:1>, <contenttweaker:stainless_plate>],[<nae2:material:1>, <novaeng_core:estorage_cell_item_16m>, <nae2:material:1>], [<contenttweaker:stainless_plate>, <nae2:material:1>, <contenttweaker:stainless_plate>]]);
recipes.addShaped(<novaeng_core:estorage_cell_item_16m>, [[<contenttweaker:stainless_plate>, <appliedenergistics2:material:39>, <contenttweaker:stainless_plate>],[<appliedenergistics2:material:39>, <nae2:material:1>, <appliedenergistics2:material:39>], [<contenttweaker:stainless_plate>, <appliedenergistics2:material:39>, <contenttweaker:stainless_plate>]]);
recipes.addShapeless(<novaeng_core:estorage_cell_item_256m>, [<novaeng_core:estorage_cell_item_256m>]);
recipes.addShapeless(<novaeng_core:estorage_cell_item_64m>, [<novaeng_core:estorage_cell_item_64m>]);
recipes.addShapeless(<novaeng_core:estorage_cell_item_16m>, [<novaeng_core:estorage_cell_item_16m>]);
*/
//ECO-LD 存储矩阵驱动器
recipes.addShaped(<novaeng_core:estorage_cell_drive> * 2, [[<novaeng_core:estorage_casing>, <contenttweaker:basiccircuit>, <novaeng_core:estorage_casing>],[<novaeng_core:estorage_casing>, <appliedenergistics2:drive>, <novaeng_core:estorage_casing>], [<novaeng_core:estorage_casing>, <contenttweaker:basiccircuit>, <novaeng_core:estorage_casing>]]);

//====================================================================================末影设备====================================================================================
//末影合金(基础)
recipes.remove(<enderutilities:enderpart>);
mods.immersiveengineering.ArcFurnace.addRecipe(<enderutilities:enderpart>, <minecraft:iron_ingot> , <immersiveengineering:material:7>, 200, 200,[<minecraft:ender_pearl>]);
AlloySmelter.addRecipe(<enderutilities:enderpart>*3, [<contenttweaker:stainless_ingot>,<minecraft:ender_pearl>],4000, 1.0f);

//储物桶结构升级
recipes.remove(<enderutilities:enderpart:71>);
recipes.addShaped(<enderutilities:enderpart:71>, [[<minecraft:obsidian>, <enderio:block_dark_iron_bars>, <minecraft:obsidian>],[<enderio:block_dark_iron_bars>, <ore:slimeball>, <enderio:block_dark_iron_bars>], [<minecraft:obsidian>, <enderio:block_dark_iron_bars>, <minecraft:obsidian>]]);

//储物桶容量升级
recipes.remove(<enderutilities:enderpart:72>);
recipes.addShaped(<enderutilities:enderpart:72>, [[<enderutilities:enderpart>, <ironchest:iron_chest:6>, <enderutilities:enderpart>],[<enderutilities:enderpart>, <enderutilities:barrel>, <enderutilities:enderpart>], [<enderutilities:enderpart>, <ironchest:iron_chest:6>, <enderutilities:enderpart>]]);

//末影合金(增强)
recipes.remove(<enderutilities:enderpart:1>);
mods.botania.ManaInfusion.addInfusion(<enderutilities:enderpart:1>,<enderutilities:enderpart>, 20000);

//末影合金(高级)
recipes.remove(<enderutilities:enderpart:2>);
AlloySmelter.addRecipe(<enderutilities:enderpart:2>, [<deepmoblearning:pristine_matter_enderman>,<enderutilities:enderpart:1>],12000, 4.0f);

//6位存储卡
recipes.removeShaped(<enderutilities:enderpart:51>*2, [[null, <minecraft:gold_ingot>, null],[<enderutilities:enderpart>, <minecraft:chest>, <enderutilities:enderpart>], [<enderutilities:enderpart>, <minecraft:chest>, <enderutilities:enderpart>]]);
recipes.addShaped(<enderutilities:enderpart:51>, [[null, <thermalfoundation:material:25>, null],[<enderutilities:enderpart>, <minecraft:chest>, <enderutilities:enderpart>], [<enderutilities:enderpart>, <minecraft:chest>, <enderutilities:enderpart>]]);

//10位存储卡
recipes.remove(<enderutilities:enderpart:53>);
recipes.addShapedMirrored(<enderutilities:enderpart:53>, [[<enderutilities:enderpart:52>, <enderutilities:enderpart:52>, null],[<enderutilities:enderpart:52>, <enderutilities:enderpart:52>, null], [<enderutilities:enderpart:1>, <enderutilities:enderpart:1>, null]]);
recipes.addShapeless(<enderutilities:enderpart:53> * 4, [<enderutilities:enderpart:54>]);

//12位存储卡
recipes.remove(<enderutilities:enderpart:54>);
recipes.addShapedMirrored(<enderutilities:enderpart:54>, [[<enderutilities:enderpart:53>, <enderutilities:enderpart:53>, null],[<enderutilities:enderpart:53>, <enderutilities:enderpart:53>, null], [<enderutilities:enderpart:2>, <enderutilities:enderpart:2>, null]]);

//====================================================================================模块化====================================================================================
//模块化合金锭(浇筑)
recipes.remove(<modularmachinery:itemmodularium>);
recipes.addShaped(<contenttweaker:modularblock>, [[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>]]);
recipes.addShapeless(<modularmachinery:itemmodularium>*9, [<contenttweaker:modularblock>]);
mods.tconstruct.Casting.addTableRecipe(<modularmachinery:itemmodularium>,<tconstruct:cast_custom>,<liquid:modular_liquid>,144,false,80);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:modularblock>,null,<liquid:modular_liquid>,1296,false,720);

//模块化合金锭(合金炉)
AlloySmelter.addRecipe(<modularmachinery:itemmodularium>*4, [<thermalfoundation:material:163>*3,<thermalfoundation:material:161>*3,<minecraft:redstone>*4],12000, 4.0f);

//模块化合金锭(电弧炉)
mods.immersiveengineering.ArcFurnace.addRecipe(<modularmachinery:itemmodularium>*4, <thermalfoundation:material:161>*3 , null, 300, 200, [<thermalfoundation:material:163>*3,<minecraft:redstone>*4]);

//熔融模块化合金
mods.tconstruct.Alloy.addRecipe(<liquid:modular_liquid>*576,[<liquid:redstone>*400,<liquid:bronze>*432,<liquid:electrum>*432]);
mods.tconstruct.Melting.addRecipe(<liquid:modular_liquid>*144,<modularmachinery:itemmodularium>,600);
mods.tconstruct.Melting.addRecipe(<liquid:modular_liquid>*1296,<contenttweaker:modularblock>,900);

//机器结构投影仪
recipes.addShaped(<modularmachinery:machine_projector>, [[null, null, <modularmachinery:itemmodularium>],[null, <ore:stickWood>, null], [<ore:stickWood>, null, null]]);

//热力单元
recipes.addShaped(<environmentaltech:thermal_cell>, [[<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],[<thermalfoundation:material:356>, <immersiveengineering:metal_decoration0>, <thermalfoundation:material:356>], [<thermalfoundation:material:356>, <thermalfoundation:material:356>, <thermalfoundation:material:356>]]);

//防冻机器外壳
recipes.addShaped(<cregtech:frost_proof_machine_casing> * 2, [[<thermalfoundation:material:324>, <thermalfoundation:material:324>, <thermalfoundation:material:324>],[<thermalfoundation:material:324>, <modularmachinery:blockcasing>, <thermalfoundation:material:324>], [<thermalfoundation:material:324>, <thermalfoundation:material:324>, <thermalfoundation:material:324>]]);

//不锈钢转子
recipes.addShaped(<contenttweaker:stainless_steel_rotor>, [[<contenttweaker:stainless_rod>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_rod>],[<contenttweaker:stainless_plate>, null, <contenttweaker:stainless_plate>], [<contenttweaker:stainless_rod>, <contenttweaker:stainless_plate>, <contenttweaker:stainless_rod>]]);

//天使方块
recipes.addShaped(<novaeng_core:angel_block> * 4, [[<minecraft:obsidian>, <minecraft:feather>, <minecraft:obsidian>],[<minecraft:feather>, <minecraft:ender_pearl>, <minecraft:feather>], [<minecraft:obsidian>, <minecraft:feather>, <minecraft:obsidian>]]);

//钢齿轮箱
recipes.addShaped(<contenttweaker:steel_gearbox_casing>, [[<thermalfoundation:material:352>, <immersiveengineering:material:2>, <thermalfoundation:material:352>],[<thermalfoundation:material:288>, <enderio:item_material:1>, <thermalfoundation:material:288>], [<thermalfoundation:material:352>, <immersiveengineering:material:2>, <thermalfoundation:material:352>]]);

//钛齿轮箱
recipes.addShaped(<contenttweaker:titanium_gearbox_casing>, [[<contenttweaker:titanium_plate>, <contenttweaker:titanium_rod>, <contenttweaker:titanium_plate>],[<contenttweaker:titanium_gear>, <cregtech:titanium_metal_casing>, <contenttweaker:titanium_gear>], [<contenttweaker:titanium_plate>, <contenttweaker:titanium_rod>, <contenttweaker:titanium_plate>]]);

//钛转子
recipes.addShaped(<contenttweaker:titanium_rotor>, [[<contenttweaker:titanium_rod>, <contenttweaker:titanium_plate>, <contenttweaker:titanium_rod>],[<contenttweaker:titanium_plate>, null, <contenttweaker:titanium_plate>], [<contenttweaker:titanium_rod>, <contenttweaker:titanium_plate>, <contenttweaker:titanium_rod>]]);

//钢转子
recipes.addShaped(<contenttweaker:steel_rotor>, [[<immersiveengineering:material:2>, <thermalfoundation:material:352>, <immersiveengineering:material:2>],[<thermalfoundation:material:352>, null, <thermalfoundation:material:352>], [<immersiveengineering:material:2>, <thermalfoundation:material:352>, <immersiveengineering:material:2>]]);

//铝转子
recipes.addShaped(<contenttweaker:aluminium_rotor>, [[<immersiveengineering:material:3>, <thermalfoundation:material:324>, <immersiveengineering:material:3>],[<thermalfoundation:material:324>, null, <thermalfoundation:material:324>], [<immersiveengineering:material:3>, <thermalfoundation:material:324>, <immersiveengineering:material:3>]]);

//铬转子
recipes.addShaped(<contenttweaker:chrome_rotor>, [[<contenttweaker:chrome_rod>, <contenttweaker:chrome_plate>, <contenttweaker:chrome_rod>],[<contenttweaker:chrome_plate>, null, <contenttweaker:chrome_plate>], [<contenttweaker:chrome_rod>, <contenttweaker:chrome_plate>, <contenttweaker:chrome_rod>]]);

//======================================================================================热力======================================================================================
//流明精华(流体转置)
mods.thermalexpansion.Transposer.addFillRecipe(<extendedcrafting:material:7>*2,<minecraft:gunpowder>, <liquid:lumium_liquid>*100, 8000);

//水瓶灌注
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:glass_bottle>, <liquid:water>);
//mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:glass_bottle>, <liquid:water> * 250, 400);

//混合燃油5:4:4
mods.nuclearcraft.salt_mixer.addRecipe([<liquid:rocket_fuel>*180,<liquid:refined_biofuel>*144,<liquid:saturated_fuel>*144]);

//闭环冷却系统
recipes.remove(<thermalexpansion:augment:672>);
recipes.addShaped(<thermalexpansion:augment:672>, [[<thermalfoundation:material:321>, <nuclearcraft:cooler:10>, <thermalfoundation:material:321>],[<nuclearcraft:cooler:10>, <nuclearcraft:cooler:8>, <nuclearcraft:cooler:10>], [<thermalfoundation:material:321>, <nuclearcraft:cooler:10>, <thermalfoundation:material:321>]]);

//燧石磨火药
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:gunpowder>, <minecraft:flint>, 4000);

//水产捕捞器
recipes.remove(<thermalexpansion:device:4>);
recipes.addShaped(<thermalexpansion:device:4>, [[null, <thermalfoundation:tool.fishing_rod_platinum>, null],[<contenttweaker:advancedcircuitplate>, <nuclearcraft:part:10>, <contenttweaker:advancedcircuitplate>], [<thermalfoundation:material:295>, <thermalfoundation:bait:2>, <thermalfoundation:material:295>]]);

//锯木机
recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped(<thermalexpansion:machine:2>, [[null, <thermalfoundation:material:657>, null],[<modularmachinery:blockcasing:4>, <thermalexpansion:frame>, <modularmachinery:blockcasing:4>], [<thermalfoundation:material:292>, <thermalfoundation:material:513>, <thermalfoundation:material:292>]]);

//树脂覆盖的机械框架(流体转置)
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:resinmachineblock>,<thermalexpansion:frame>, <liquid:resin>*2500, 8000);

//焦煤粉(磨粉机)
mods.thermalexpansion.Pulverizer.addRecipe(<immersiveengineering:material:17>, <immersiveengineering:material:6>, 4000, <immersiveengineering:material:17>, 30);
mods.thermalexpansion.Pulverizer.addRecipe(<immersiveengineering:material:17>, <thermalfoundation:material:802>, 4000, <immersiveengineering:material:17>, 30);

//树脂板/压缩树脂板
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:resinplate>,<tconstruct:cast_custom:3>,<liquid:resin>,200,false,40);
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:compressedresinplate>,<contenttweaker:resinplate>*9, 4000);
mods.mekanism.enrichment.addRecipe(<contenttweaker:resinplate>*3,<contenttweaker:compressedresinplate>);

//有机灌注器
recipes.remove(<thermalexpansion:machine:4>);
recipes.addShaped(<thermalexpansion:machine:4>, [[<contenttweaker:basiccircuit>, <thermalfoundation:material:294>, <contenttweaker:basiccircuit>],[<ore:dirt>, <thermalexpansion:frame>, <ore:dirt>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//熔岩炉
recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped(<thermalexpansion:machine:6>, [[<contenttweaker:basiccircuit>, <ore:blockGlassHardened>, <contenttweaker:basiccircuit>],[<minecraft:nether_brick>, <thermalexpansion:frame>, <minecraft:nether_brick>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//流体精炼机
recipes.remove(<thermalexpansion:machine:7>);
recipes.addShaped(<thermalexpansion:machine:7>, [[<contenttweaker:basiccircuit>, <thermalfoundation:material:261>, <contenttweaker:basiccircuit>],[<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//流体转置机
recipes.remove(<thermalexpansion:machine:8>);
recipes.addShaped(<thermalexpansion:machine:8>, [[<contenttweaker:basiccircuit>, <minecraft:bucket>, <contenttweaker:basiccircuit>],[<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//能量灌注机
recipes.remove(<thermalexpansion:machine:9>);
recipes.addShaped(<thermalexpansion:machine:9>, [[null, <thermalfoundation:material:259>, null],[<thermalfoundation:material:514>, <contenttweaker:resinmachineblock>, <thermalfoundation:material:514>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//离心机
recipes.remove(<thermalexpansion:machine:10>);
recipes.addShaped(<thermalexpansion:machine:10>, [[<contenttweaker:basiccircuit>, <contenttweaker:north_compass>, <contenttweaker:basiccircuit>],[<ore:ingotConstantan>, <thermalexpansion:frame>, <ore:ingotConstantan>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//药水酿造机
recipes.remove(<thermalexpansion:machine:12>);
recipes.addShaped(<thermalexpansion:machine:12>, [[<contenttweaker:basiccircuit>, <minecraft:brewing_stand:*>, <contenttweaker:basiccircuit>],[<ore:blockGlassHardened>, <thermalexpansion:frame>, <ore:blockGlassHardened>], [<thermalfoundation:material:291>, <thermalfoundation:material:513>, <thermalfoundation:material:291>]]);

//附魔机
recipes.remove(<thermalexpansion:machine:13>);
recipes.addShaped(<thermalexpansion:machine:13>, [[<contenttweaker:basiccircuit>, <minecraft:enchanting_table>, <contenttweaker:basiccircuit>],[<ore:blockLapis>, <thermalexpansion:frame>, <ore:blockLapis>], [<thermalfoundation:material:292>, <thermalfoundation:material:513>, <thermalfoundation:material:292>]]);

//冷冻机
recipes.remove(<thermalexpansion:machine:14>);
recipes.addShaped(<thermalexpansion:machine:14>, [[<contenttweaker:basiccircuit>, <minecraft:sticky_piston>, <contenttweaker:basiccircuit>],[<thermalfoundation:material:162>, <thermalexpansion:frame>, <thermalfoundation:material:162>], [<thermalfoundation:material:292>, <thermalfoundation:material:513>, <thermalfoundation:material:292>]]);

//造石机
recipes.remove(<thermalexpansion:machine:15>);
recipes.addShaped(<thermalexpansion:machine:15>, [[<contenttweaker:basiccircuit>, <ore:blockGlass>, <contenttweaker:basiccircuit>],[<thermalfoundation:material:162>, <thermalexpansion:frame>, <thermalfoundation:material:162>], [<thermalfoundation:material:292>, <thermalfoundation:material:513>, <thermalfoundation:material:292>]]);

//树汁提取机
recipes.remove(<thermalexpansion:device:3>);
recipes.addShaped(<thermalexpansion:device:3>, [[null, <thermalexpansion:augment:288>, null],[<contenttweaker:compressedresinplate>, <thermalexpansion:frame:64>, <contenttweaker:compressedresinplate>], [<thermalfoundation:material:262>, <contenttweaker:resinmachineblock>, <thermalfoundation:material:262>]]);

//感应炉
recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped(<thermalexpansion:machine:3>, [[null, <immersiveengineering:metal_decoration0:5>, null],[<contenttweaker:basiccircuit>, <contenttweaker:resinmachineblock>, <contenttweaker:basiccircuit>], [<immersiveengineering:metal_decoration0:2>, <embers:heat_coil>, <immersiveengineering:metal_decoration0:2>]]);

//蓄水器
recipes.remove(<thermalexpansion:device>);
recipes.addShaped(<thermalexpansion:device>, [[null, <minecraft:bucket>, null],[<tconstruct:clear_glass>, <thermalexpansion:frame:64>, <tconstruct:clear_glass>], [<thermalfoundation:material:290>, <embers:large_tank>, <thermalfoundation:material:290>]]);

//移除AE种子有机灌注
mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed>, <minecraft:glowstone_dust>);
mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed:600>, <minecraft:glowstone_dust>);
mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed:1200>, <minecraft:glowstone_dust>);

//==================================================================================环境科技==================================================================================
//控制器NBT清空
recipes.addShapeless(<environmentaltech:void_botanic_miner_cont_6>, [<environmentaltech:void_botanic_miner_cont_6>]);
recipes.addShapeless(<environmentaltech:void_botanic_miner_cont_5>, [<environmentaltech:void_botanic_miner_cont_5>]);
recipes.addShapeless(<environmentaltech:void_botanic_miner_cont_4>, [<environmentaltech:void_botanic_miner_cont_4>]);
recipes.addShapeless(<environmentaltech:void_botanic_miner_cont_3>, [<environmentaltech:void_botanic_miner_cont_3>]);
recipes.addShapeless(<environmentaltech:void_botanic_miner_cont_2>, [<environmentaltech:void_botanic_miner_cont_2>]);
recipes.addShapeless(<environmentaltech:void_botanic_miner_cont_1>, [<environmentaltech:void_botanic_miner_cont_1>]);

recipes.addShapeless(<environmentaltech:void_res_miner_cont_6>, [<environmentaltech:void_res_miner_cont_6>]);
recipes.addShapeless(<environmentaltech:void_res_miner_cont_5>, [<environmentaltech:void_res_miner_cont_5>]);
recipes.addShapeless(<environmentaltech:void_res_miner_cont_4>, [<environmentaltech:void_res_miner_cont_4>]);
recipes.addShapeless(<environmentaltech:void_res_miner_cont_3>, [<environmentaltech:void_res_miner_cont_3>]);
recipes.addShapeless(<environmentaltech:void_res_miner_cont_2>, [<environmentaltech:void_res_miner_cont_2>]);
recipes.addShapeless(<environmentaltech:void_res_miner_cont_1>, [<environmentaltech:void_res_miner_cont_1>]);

recipes.addShapeless(<environmentaltech:void_ore_miner_cont_6>, [<environmentaltech:void_ore_miner_cont_6>]);
recipes.addShapeless(<environmentaltech:void_ore_miner_cont_5>, [<environmentaltech:void_ore_miner_cont_5>]);
recipes.addShapeless(<environmentaltech:void_ore_miner_cont_4>, [<environmentaltech:void_ore_miner_cont_4>]);
recipes.addShapeless(<environmentaltech:void_ore_miner_cont_3>, [<environmentaltech:void_ore_miner_cont_3>]);
recipes.addShapeless(<environmentaltech:void_ore_miner_cont_2>, [<environmentaltech:void_ore_miner_cont_2>]);
recipes.addShapeless(<environmentaltech:void_ore_miner_cont_1>, [<environmentaltech:void_ore_miner_cont_1>]);

recipes.addShapeless(<environmentaltech:nano_cont_personal_6>, [<environmentaltech:nano_cont_personal_6>]);
recipes.addShapeless(<environmentaltech:nano_cont_personal_5>, [<environmentaltech:nano_cont_personal_5>]);
recipes.addShapeless(<environmentaltech:nano_cont_personal_4>, [<environmentaltech:nano_cont_personal_4>]);
recipes.addShapeless(<environmentaltech:nano_cont_personal_3>, [<environmentaltech:nano_cont_personal_3>]);
recipes.addShapeless(<environmentaltech:nano_cont_personal_2>, [<environmentaltech:nano_cont_personal_2>]);
recipes.addShapeless(<environmentaltech:nano_cont_personal_1>, [<environmentaltech:nano_cont_personal_1>]);

recipes.addShapeless(<environmentaltech:nano_cont_ranged_6>, [<environmentaltech:nano_cont_ranged_6>]);
recipes.addShapeless(<environmentaltech:nano_cont_ranged_5>, [<environmentaltech:nano_cont_ranged_5>]);
recipes.addShapeless(<environmentaltech:nano_cont_ranged_4>, [<environmentaltech:nano_cont_ranged_4>]);
recipes.addShapeless(<environmentaltech:nano_cont_ranged_3>, [<environmentaltech:nano_cont_ranged_3>]);
recipes.addShapeless(<environmentaltech:nano_cont_ranged_2>, [<environmentaltech:nano_cont_ranged_2>]);
recipes.addShapeless(<environmentaltech:nano_cont_ranged_1>, [<environmentaltech:nano_cont_ranged_1>]);

recipes.addShapeless(<environmentaltech:lightning_cont_6>, [<environmentaltech:lightning_cont_6>]);
recipes.addShapeless(<environmentaltech:lightning_cont_5>, [<environmentaltech:lightning_cont_5>]);
recipes.addShapeless(<environmentaltech:lightning_cont_4>, [<environmentaltech:lightning_cont_4>]);
recipes.addShapeless(<environmentaltech:lightning_cont_3>, [<environmentaltech:lightning_cont_3>]);
recipes.addShapeless(<environmentaltech:lightning_cont_2>, [<environmentaltech:lightning_cont_2>]);
recipes.addShapeless(<environmentaltech:lightning_cont_1>, [<environmentaltech:lightning_cont_1>]);

recipes.addShapeless(<environmentaltech:solar_cont_6>, [<environmentaltech:solar_cont_6>]);
recipes.addShapeless(<environmentaltech:solar_cont_5>, [<environmentaltech:solar_cont_5>]);
recipes.addShapeless(<environmentaltech:solar_cont_4>, [<environmentaltech:solar_cont_4>]);
recipes.addShapeless(<environmentaltech:solar_cont_3>, [<environmentaltech:solar_cont_3>]);
recipes.addShapeless(<environmentaltech:solar_cont_2>, [<environmentaltech:solar_cont_2>]);
recipes.addShapeless(<environmentaltech:solar_cont_1>, [<environmentaltech:solar_cont_1>]);

recipes.addShapeless(<environmentaltech:lightning_rod>, [<environmentaltech:lightning_rod>]);

//连接器
recipes.remove(<environmentaltech:connector>);
mods.thermalexpansion.InductionSmelter.addRecipe(<environmentaltech:connector>*4, <enderio:item_alloy_ingot:4>*4,<contenttweaker:basiccircuit>, 8000);
//mods.thermalexpansion.InductionSmelter.addRecipe(<environmentaltech:connector>*2, <enderio:item_alloy_ingot:4>*2,<enderutilities:linkcrystal:1>, 8000);
//mods.immersiveengineering.ArcFurnace.addRecipe(<environmentaltech:connector>*1, <enderio:item_alloy_ingot:4>*1 , <enderutilities:linkcrystal:1>, 100, 4000);

//激光核心
recipes.remove(<environmentaltech:laser_core>);
recipes.addShaped(<environmentaltech:laser_core>, [[<thermalfoundation:material:32>, <ore:blockGlassColorless>, <thermalfoundation:material:32>],[<enderutilities:linkcrystal>, <ore:blockGlassColorless>, <enderutilities:linkcrystal>], [<thermalfoundation:material:32>, <ore:blockGlassColorless>, <thermalfoundation:material:32>]]);

//莱泽尔水晶
recipes.remove(<environmentaltech:litherite_crystal>);
mods.immersiveengineering.AlloySmelter.addRecipe(<environmentaltech:litherite_crystal>*4, <enderio:item_material:15>, <ore:dyeGreen>, 600);
mods.immersiveengineering.AlloySmelter.addRecipe(<environmentaltech:litherite_crystal>*2, <enderio:item_material:14>, <ore:dyeGreen>, 600);

//艾洛蒂水晶
mods.thermalexpansion.Transposer.addFillRecipe(<environmentaltech:erodium_crystal>*2,<contenttweaker:redingot>, <liquid:gelid_enderium>*144, 12000);
AlloySmelter.addRecipe(<environmentaltech:erodium_crystal>*2, [<contenttweaker:redingot>,<thermalfoundation:material:167>,<thermalfoundation:material:1025>*4],12000, 4.0f);

//莱泽尔虚空核心
recipes.addShaped(<contenttweaker:crystal_1> * 2, [[null, <appliedenergistics2:material:43>, null],[<environmentaltech:litherite_crystal>, <chisel:voidstone>, <environmentaltech:litherite_crystal>], [null, <appliedenergistics2:material:44>, null]]);

//艾洛蒂虚空核心
recipes.addShaped(<contenttweaker:crystal_2>*2, [[null, <fluxnetworks:fluxcore>, null],[<environmentaltech:erodium_crystal>, <enderutilities:enderpart:10>, <environmentaltech:erodium_crystal>], [null, <fluxnetworks:fluxcore>, null]]);

//凯罗尼虚空核心
recipes.addShaped(<contenttweaker:crystal_3>*2, [[<fluxnetworks:fluxcore>, <environmentaltech:kyronite_crystal>, <fluxnetworks:fluxcore>],[<environmentaltech:kyronite_crystal>, <enderutilities:enderpart:11>, <environmentaltech:kyronite_crystal>], [<fluxnetworks:fluxcore>, <environmentaltech:kyronite_crystal>, <fluxnetworks:fluxcore>]]);

//普雷蒂虚空核心
recipes.addShaped(<contenttweaker:crystal_4>*2, [[<threng:material:9>, <environmentaltech:pladium_crystal>, <threng:material:9>],[<environmentaltech:pladium_crystal>, <draconicevolution:wyvern_energy_core>, <environmentaltech:pladium_crystal>], [<threng:material:9>, <environmentaltech:pladium_crystal>, <threng:material:9>]]);

//强化部件核心
recipes.remove(<valkyrielib:modifier_component>);
//recipes.addShaped(<valkyrielib:modifier_component>*2, [[<minecraft:obsidian>, <modularmachinery:itemmodularium>, <minecraft:obsidian>],[<embers:ingot_dawnstone>, <embers:ancient_motive_core>, <embers:ingot_dawnstone>], [<minecraft:obsidian>, <modularmachinery:itemmodularium>, <minecraft:obsidian>]]);
recipes.addShaped(<valkyrielib:modifier_component> * 4, [[<minecraft:concrete:15>, <astralsorcery:itemcraftingcomponent:3>, <minecraft:concrete:15>],[<astralsorcery:itemusabledust:1>, <enderio:item_material:66>, <astralsorcery:itemusabledust:1>], [<minecraft:concrete:15>, <botania:manaresource:1>, <minecraft:concrete:15>]]);
recipes.addShaped(<valkyrielib:modifier_component> * 8, [[<mekanism:reinforcedplasticblock>, <enderio:block_reinforced_obsidian>, <mekanism:reinforcedplasticblock>],[<deepmoblearning:soot_covered_redstone>, <enderio:item_material:66>, <deepmoblearning:soot_covered_redstone>], [<mekanism:reinforcedplasticblock>, <enderio:block_reinforced_obsidian>, <mekanism:reinforcedplasticblock>]]);

//互联方块
recipes.remove(<environmentaltech:interconnect>);
recipes.addShaped(<environmentaltech:interconnect>*4, [[null, <environmentaltech:connector>, null],[<environmentaltech:connector>, <valkyrielib:modifier_component>, <environmentaltech:connector>], [null, <environmentaltech:connector>, null]]);

//结构镶板
recipes.remove(<environmentaltech:structure_panel>);
recipes.remove(<environmentaltech:structure_panel_clear>);
recipes.addShaped(<environmentaltech:structure_panel_clear>*2, [[<thermalfoundation:material:33>, <enderio:block_fused_quartz>, <thermalfoundation:material:33>],[<enderio:block_fused_quartz>, <environmentaltech:interconnect>, <enderio:block_fused_quartz>], [<thermalfoundation:material:33>, <enderio:block_fused_quartz>, <thermalfoundation:material:33>]]);
recipes.addShaped(<environmentaltech:structure_panel_clear>, [[<thermalfoundation:material:33>, <enderio:block_fused_quartz>, <thermalfoundation:material:33>],[<enderio:block_fused_quartz>, <tconstruct:materials:14>, <enderio:block_fused_quartz>], [<thermalfoundation:material:33>, <enderio:block_fused_quartz>, <thermalfoundation:material:33>]]);
recipes.addShaped(<environmentaltech:structure_panel>*2, [[<thermalfoundation:material:33>, <enderio:block_dark_iron_bars>, <thermalfoundation:material:33>],[<enderio:block_dark_iron_bars>, <environmentaltech:interconnect>, <enderio:block_dark_iron_bars>], [<thermalfoundation:material:33>, <enderio:block_dark_iron_bars>, <thermalfoundation:material:33>]]);
recipes.addShaped(<environmentaltech:structure_panel>, [[<thermalfoundation:material:33>, <enderio:block_dark_iron_bars>, <thermalfoundation:material:33>],[<enderio:block_dark_iron_bars>, <tconstruct:materials:14>, <enderio:block_dark_iron_bars>], [<thermalfoundation:material:33>, <enderio:block_dark_iron_bars>, <thermalfoundation:material:33>]]);

//一级矿机/植物/资源
recipes.remove(<environmentaltech:void_ore_miner_cont_1>);
recipes.remove(<environmentaltech:void_botanic_miner_cont_1>);
recipes.remove(<environmentaltech:void_res_miner_cont_1>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_1>, [[<environmentaltech:litherite>, <immersiveengineering:drillhead>, <environmentaltech:litherite>],[<environmentaltech:litherite>, <minecraft:beacon>, <environmentaltech:litherite>], [<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>]]);
recipes.addShaped(<environmentaltech:void_botanic_miner_cont_1>, [[<environmentaltech:litherite>, <tconstruct:broad_axe_head>, <environmentaltech:litherite>],[<environmentaltech:litherite>, <minecraft:beacon>, <environmentaltech:litherite>], [<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>]]);
recipes.addShaped(<environmentaltech:void_res_miner_cont_1>, [[<environmentaltech:litherite>, <plustic:osmiridiumblock>, <environmentaltech:litherite>],[<environmentaltech:litherite>, <minecraft:beacon>, <environmentaltech:litherite>], [<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>]]);

//避雷针
recipes.remove(<environmentaltech:lightning_cont_1>);
recipes.remove(<environmentaltech:lightning_cont_2>);
recipes.remove(<environmentaltech:lightning_cont_3>);
recipes.remove(<environmentaltech:lightning_cont_4>);
recipes.remove(<environmentaltech:lightning_cont_5>);
recipes.remove(<environmentaltech:lightning_cont_6>);
recipes.addShaped(<environmentaltech:lightning_cont_6>, [[<avaritia:resource:5>, <environmentaltech:lightning_rod_insulated>, <avaritia:resource:5>],[<contenttweaker:extremecircuit>, <environmentaltech:lightning_cont_5>, <contenttweaker:extremecircuit>], [<environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>, <environmentaltech:structure_frame_6>]]);
recipes.addShaped(<environmentaltech:lightning_cont_5>, [[<tconevo:metal:10>, <environmentaltech:lightning_rod_insulated>, <tconevo:metal:10>],[<contenttweaker:mastercircuit>, <environmentaltech:lightning_cont_4>, <contenttweaker:mastercircuit>], [<environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_5>]]);
recipes.addShaped(<environmentaltech:lightning_cont_4>, [[<tconevo:metal>, <environmentaltech:lightning_rod_insulated>, <tconevo:metal>],[<contenttweaker:epiccircuit>, <environmentaltech:lightning_cont_3>, <contenttweaker:epiccircuit>], [<environmentaltech:structure_frame_4>, <environmentaltech:structure_frame_4>, <environmentaltech:structure_frame_4>]]);
recipes.addShaped(<environmentaltech:lightning_cont_3>, [[<draconicevolution:draconic_core>, <environmentaltech:lightning_rod_insulated>, <draconicevolution:draconic_core>],[<mekanism:controlcircuit:2>, <environmentaltech:lightning_cont_2>, <mekanism:controlcircuit:2>], [<environmentaltech:structure_frame_3>, <environmentaltech:structure_frame_3>, <environmentaltech:structure_frame_3>]]);
recipes.addShaped(<environmentaltech:lightning_cont_2>, [[<cregtech:cleanstainlesssteelmachinecasing>, <environmentaltech:lightning_rod_insulated>, <cregtech:cleanstainlesssteelmachinecasing>],[<contenttweaker:advancedcircuit>, <environmentaltech:lightning_cont_2>, <contenttweaker:advancedcircuit>], [<environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>, <environmentaltech:structure_frame_2>]]);
recipes.addShaped(<environmentaltech:lightning_cont_1>, [[<cregtech:frost_proof_machine_casing>, <environmentaltech:lightning_rod_insulated>, <cregtech:frost_proof_machine_casing>],[<contenttweaker:basiccircuit>, <environmentaltech:lightning_rod_insulated>, <contenttweaker:basiccircuit>], [<environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>, <environmentaltech:structure_frame_1>]]);

//一级结构方块
recipes.remove(<environmentaltech:structure_frame_1>);
recipes.addShaped(<environmentaltech:structure_frame_1> * 4, [[<environmentaltech:structure_panel_clear>, <contenttweaker:crystal_1>, <environmentaltech:structure_panel_clear>],[<ore:ingotMagnesium>, <modularmachinery:blockcasing>, <ore:ingotMagnesium>], [<environmentaltech:structure_panel_clear>, <contenttweaker:crystal_1>, <environmentaltech:structure_panel_clear>]]);
recipes.addShaped(<environmentaltech:structure_frame_1> * 4, [[<environmentaltech:structure_panel>, <contenttweaker:crystal_1>, <environmentaltech:structure_panel>],[<ore:ingotMagnesium>, <modularmachinery:blockcasing>, <ore:ingotMagnesium>], [<environmentaltech:structure_panel>, <contenttweaker:crystal_1>, <environmentaltech:structure_panel>]]);

//二级结构方块
recipes.remove(<environmentaltech:structure_frame_2>);
recipes.addShaped(<environmentaltech:structure_frame_2> * 4, [[<environmentaltech:structure_frame_1>, <contenttweaker:crystal_2>, <environmentaltech:structure_frame_1>],[<contenttweaker:compressedresinplate>, <environmentaltech:interconnect>, <contenttweaker:compressedresinplate>], [<environmentaltech:structure_frame_1>, <contenttweaker:crystal_2>, <environmentaltech:structure_frame_1>]]);

//三级结构方块
recipes.remove(<environmentaltech:structure_frame_3>);
recipes.addShaped(<environmentaltech:structure_frame_3> * 4, [[<environmentaltech:structure_frame_2>, <contenttweaker:crystal_3>, <environmentaltech:structure_frame_2>],[<contenttweaker:advancedcircuit>, <enderio:item_material:66>,<contenttweaker:advancedcircuit>], [<environmentaltech:structure_frame_2>, <contenttweaker:crystal_3>, <environmentaltech:structure_frame_2>]]);

//四级结构方块
recipes.remove(<environmentaltech:structure_frame_4>);
recipes.addShaped(<environmentaltech:structure_frame_4> * 4, [[<environmentaltech:structure_frame_3>,<contenttweaker:mana_crystal1>, <environmentaltech:structure_frame_3>],[<contenttweaker:epiccircuit>, <contenttweaker:crystal_4>, <contenttweaker:epiccircuit>], [<environmentaltech:structure_frame_3>,<contenttweaker:mana_crystal1>, <environmentaltech:structure_frame_3>]]);

//五级结构方块
recipes.remove(<environmentaltech:structure_frame_5>);
recipes.addShaped(<environmentaltech:structure_frame_5> * 4, [[<environmentaltech:structure_frame_4>, <contenttweaker:mana_crystal3>, <environmentaltech:structure_frame_4>],[<contenttweaker:mastercircuit>, <contenttweaker:crystal_5>, <contenttweaker:mastercircuit>], [<environmentaltech:structure_frame_4>, <contenttweaker:mana_crystal3>, <environmentaltech:structure_frame_4>]]);

//六级结构方块
recipes.remove(<environmentaltech:structure_frame_6>);
recipes.addShaped(<environmentaltech:structure_frame_6> * 4, [[<environmentaltech:structure_frame_5>, <contenttweaker:soulgem2>, <environmentaltech:structure_frame_5>],[<contenttweaker:extremecircuit>, <contenttweaker:crystal_6>, <contenttweaker:extremecircuit>], [<environmentaltech:structure_frame_5>, <contenttweaker:soulgem2>, <environmentaltech:structure_frame_5>]]);

//一级太阳能
recipes.remove(<environmentaltech:solar_cell_litherite>);
recipes.addShaped(<environmentaltech:solar_cell_litherite>, [[<enderio:item_material:3>, <enderio:item_material:3>, <enderio:item_material:3>],[<environmentaltech:photovoltaic_cell>, <ore:blockLitherite>, <environmentaltech:photovoltaic_cell>], [<thermalfoundation:material:324>, <environmentaltech:interconnect>, <thermalfoundation:material:324>]]);

//一级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_1>);
recipes.addShaped(<environmentaltech:solar_cont_1>, [[<ore:blockLitherite>, <contenttweaker:basiccircuit>, <ore:blockLitherite>],[<contenttweaker:basiccircuit>, <environmentaltech:solar_cell_litherite>, <contenttweaker:basiccircuit>], [<ore:blockLitherite>, <contenttweaker:basiccircuit>, <ore:blockLitherite>]]);

//二级太阳能
recipes.remove(<environmentaltech:solar_cell_erodium>);
recipes.addShaped(<environmentaltech:solar_cell_erodium>, [[<enderio:block_solar_panel>, <enderio:block_solar_panel>, <enderio:block_solar_panel>],[<environmentaltech:photovoltaic_cell>, <environmentaltech:solar_cell_litherite>, <environmentaltech:photovoltaic_cell>], [<contenttweaker:stainless_ingot>, <ore:blockErodium>, <contenttweaker:stainless_ingot>]]);

//二级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_2>);
recipes.addShaped(<environmentaltech:solar_cont_2>, [[<ore:blockErodium>, <contenttweaker:advancedcircuit>, <ore:blockErodium>],[<contenttweaker:advancedcircuit>,<environmentaltech:solar_cont_1>, <contenttweaker:advancedcircuit>], [<ore:blockErodium>, <contenttweaker:advancedcircuit>, <ore:blockErodium>]]);

//三级太阳能
recipes.remove(<environmentaltech:solar_cell_kyronite>);
recipes.addShaped(<environmentaltech:solar_cell_kyronite>, [[<enderio:block_solar_panel:2>, <enderio:block_solar_panel:2>, <enderio:block_solar_panel:2>],[<environmentaltech:photovoltaic_cell>, <environmentaltech:solar_cell_erodium>, <environmentaltech:photovoltaic_cell>], [<draconicevolution:draconic_core>, <ore:blockKyronite>, <draconicevolution:draconic_core>]]);

//三级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_3>);
recipes.addShaped(<environmentaltech:solar_cont_3>, [[<ore:blockKyronite>, <contenttweaker:epiccircuit>, <ore:blockKyronite>],[<contenttweaker:epiccircuit>, <environmentaltech:solar_cont_2>, <contenttweaker:epiccircuit>], [<ore:blockKyronite>, <contenttweaker:epiccircuit>, <ore:blockKyronite>]]);

//四级太阳能
recipes.remove(<environmentaltech:solar_cell_pladium>);
recipes.addShaped(<environmentaltech:solar_cell_pladium>, [[<enderio:block_solar_panel:3>, <enderio:block_solar_panel:3>, <enderio:block_solar_panel:3>],[<environmentaltech:photovoltaic_cell>, <environmentaltech:solar_cell_kyronite>, <environmentaltech:photovoltaic_cell>], [<tconevo:metal>, <ore:blockPladium>, <tconevo:metal>]]);

//四级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_4>);
recipes.addShaped(<environmentaltech:solar_cont_4>, [[<ore:blockPladium>, <contenttweaker:mastercircuit>, <ore:blockPladium>],[<contenttweaker:mastercircuit>, <environmentaltech:solar_cont_3>, <contenttweaker:mastercircuit>], [<ore:blockPladium>, <contenttweaker:mastercircuit>, <ore:blockPladium>]]);

//五级太阳能
recipes.remove(<environmentaltech:solar_cell_ionite>);
recipes.addShaped(<environmentaltech:solar_cell_ionite> * 4, [[<enderio:block_solar_panel:4>, <enderio:block_solar_panel:4>, <enderio:block_solar_panel:4>],[<environmentaltech:solar_cell_pladium>, <tconevo:metal:14>, <environmentaltech:solar_cell_pladium>], [<environmentaltech:solar_cell_pladium>, <environmentaltech:ionite>, <environmentaltech:solar_cell_pladium>]]);

//五级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_5>);
recipes.addShaped(<environmentaltech:solar_cont_5>, [[<environmentaltech:ionite>, <contenttweaker:extremecircuit>, <environmentaltech:ionite>],[<contenttweaker:extremecircuit>, <environmentaltech:solar_cont_4>, <contenttweaker:extremecircuit>], [<environmentaltech:ionite>, <contenttweaker:extremecircuit>, <environmentaltech:ionite>]]);

//六级太阳能
recipes.remove(<environmentaltech:solar_cell_aethium>);
recipes.addShaped(<environmentaltech:solar_cell_aethium> * 4, [[<enderio:block_solar_panel:5>, <enderio:block_solar_panel:5>, <enderio:block_solar_panel:5>],[<environmentaltech:solar_cell_ionite>, <avaritia:resource:6>, <environmentaltech:solar_cell_ionite>], [<environmentaltech:solar_cell_ionite>, <environmentaltech:aethium>, <environmentaltech:solar_cell_ionite>]]);

//六级太阳能控制器
recipes.remove(<environmentaltech:solar_cont_6>);
recipes.addShaped(<environmentaltech:solar_cont_6>, [[<environmentaltech:aethium>, <contenttweaker:quantumcircuit>, <environmentaltech:aethium>],[<contenttweaker:quantumcircuit>, <environmentaltech:solar_cont_5>, <contenttweaker:quantumcircuit>], [<environmentaltech:aethium>, <contenttweaker:quantumcircuit>, <environmentaltech:aethium>]]);

//==================================================================================末影接口==================================================================================
//简易机器框架
recipes.remove(<enderio:item_material>);

//储罐NBT去除
recipes.addShapeless(<enderio:block_tank:1>, [<enderio:block_tank:1>]);
recipes.addShapeless(<enderio:block_tank>, [<enderio:block_tank>]);

//流体导管配方兼容
recipes.addShaped(<enderio:item_liquid_conduit:2> * 8, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<ore:ingotVibrantAlloy>, <ore:blockGlassHardened>, <ore:ingotVibrantAlloy>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_liquid_conduit:1> * 8, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_liquid_conduit> * 8, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<tconstruct:clear_glass>,<tconstruct:clear_glass>,<tconstruct:clear_glass>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_liquid_conduit> * 8, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<tconstruct:clear_stained_glass:*>,<tconstruct:clear_stained_glass:*>,<tconstruct:clear_stained_glass:*>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);

//充能/脉冲合金齿轮
recipes.addShaped(<enderio:item_material:12>, [[<enderio:item_alloy_nugget:1>, <enderio:item_alloy_nugget:1>, <enderio:item_alloy_nugget:1>],[<enderio:item_alloy_nugget:1>, <thermalfoundation:material:293>, <enderio:item_alloy_nugget:1>], [<enderio:item_alloy_nugget:1>, <enderio:item_alloy_nugget:1>, <enderio:item_alloy_nugget:1>]]);
recipes.addShaped(<enderio:item_material:13>, [[<enderio:item_alloy_nugget:2>, <enderio:item_alloy_nugget:2>, <enderio:item_alloy_nugget:2>],[<enderio:item_alloy_nugget:2>, <thermalfoundation:material:293>, <enderio:item_alloy_nugget:2>], [<enderio:item_alloy_nugget:2>, <enderio:item_alloy_nugget:2>, <enderio:item_alloy_nugget:2>]]);

//中子尘埃造基岩粉
recipes.addShapeless(<enderio:item_material:20>*4, [<avaritia:resource:2>]);

//移除感应炉烧工业框架
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material>,<enderio:item_material:51>);

//移除基岩磨粉
SagMill.removeRecipe(<minecraft:bedrock>);

//硬化框架
recipes.addShaped(<thermalexpansion:frame:129>*2, [[<enderio:block_infinity>, <thermalfoundation:storage_alloy:2>, <enderio:block_infinity>],[<thermalexpansion:frame:128>, <thermalfoundation:material:291>, <thermalexpansion:frame:128>], [<enderio:block_infinity>, <thermalfoundation:storage_alloy:2>, <enderio:block_infinity>]]);

//强化框架
mods.mekanism.infuser.addRecipe("REDSTONE", 3000, <thermalexpansion:frame:129>, <thermalexpansion:frame:130>);

//酿液桶
recipes.remove(<enderio:block_vat>);
recipes.addShaped(<enderio:block_vat>, [[<thermalfoundation:material:1024>, <thermalexpansion:machine:12>, <thermalfoundation:material:1024>],[<contenttweaker:stainless_ingot>, <enderio:item_material:1>, <contenttweaker:stainless_ingot>], [<minecraft:cauldron>, <enderio:block_infinity>, <minecraft:cauldron>]]);

//附魔器
recipes.remove(<enderio:block_enchanter>);
recipes.addShaped(<enderio:block_enchanter>, [[null, <minecraft:book>, null],[<contenttweaker:advancedcircuit>, <thermalexpansion:machine:13>, <contenttweaker:advancedcircuit>], [<enderio:block_alloy:6>, <enderio:block_dark_steel_anvil>, <enderio:block_alloy:6>]]);

//基础电容库
recipes.remove(<enderio:block_cap_bank:1>);
recipes.addShaped(<enderio:block_cap_bank:1>, [[<enderio:item_alloy_ingot>, <enderio:item_basic_capacitor>, <enderio:item_alloy_ingot>],[<enderio:item_basic_capacitor>, <thermalexpansion:frame:128>, <enderio:item_basic_capacitor>], [<enderio:item_alloy_ingot>, <enderio:item_basic_capacitor>, <enderio:item_alloy_ingot>]]);
recipes.addShaped(<enderio:block_cap_bank:1>, [[<enderio:item_alloy_ingot>, <enderio:item_capacitor_silver>, <enderio:item_alloy_ingot>],[<enderio:item_capacitor_silver>, <thermalexpansion:frame:128>, <enderio:item_capacitor_silver>], [<enderio:item_alloy_ingot>, <enderio:item_capacitor_silver>, <enderio:item_alloy_ingot>]]);

//电容库
recipes.remove(<enderio:block_cap_bank:2>);
recipes.addShaped(<enderio:block_cap_bank:2>, [[<enderio:item_alloy_ingot:1>, <enderio:item_basic_capacitor:1>, <enderio:item_alloy_ingot:1>],[<enderio:block_cap_bank:1>, <thermalexpansion:frame:129>, <enderio:block_cap_bank:1>], [<enderio:item_alloy_ingot:1>, <enderio:item_basic_capacitor:1>, <enderio:item_alloy_ingot:1>]]);
recipes.addShaped(<enderio:block_cap_bank:2>, [[<enderio:item_alloy_ingot:1>, <enderio:item_capacitor_energetic_silver>, <enderio:item_alloy_ingot:1>],[<enderio:block_cap_bank:1>, <thermalexpansion:frame:129>, <enderio:block_cap_bank:1>], [<enderio:item_alloy_ingot:1>, <enderio:item_capacitor_energetic_silver>, <enderio:item_alloy_ingot:1>]]);

//脉冲电容库
recipes.remove(<enderio:block_cap_bank:3>);
recipes.addShaped(<enderio:block_cap_bank:3>, [[<enderio:item_alloy_ingot:2>, <enderio:item_basic_capacitor:2>, <enderio:item_alloy_ingot:2>],[<enderio:block_cap_bank:2>, <thermalexpansion:frame:130>, <enderio:block_cap_bank:2>], [<enderio:item_alloy_ingot:2>, <enderio:item_basic_capacitor:2>, <enderio:item_alloy_ingot:2>]]);
recipes.addShaped(<enderio:block_cap_bank:3>, [[<enderio:item_alloy_ingot:2>, <enderio:item_capacitor_vivid>, <enderio:item_alloy_ingot:2>],[<enderio:block_cap_bank:2>, <thermalexpansion:frame:130>, <enderio:block_cap_bank:2>], [<enderio:item_alloy_ingot:2>, <enderio:item_capacitor_vivid>, <enderio:item_alloy_ingot:2>]]);

//脉冲光伏电池
recipes.remove(<enderio:block_solar_panel:3>);
recipes.addShaped(<enderio:block_solar_panel:3>, [[<enderio:item_material:3>, <enderio:block_solar_panel:2>, <enderio:item_material:3>],[<enderio:item_capacitor_vivid>, <enderio:block_dark_fused_quartz>, <enderio:item_capacitor_vivid>], [<enderio:block_alloy:2>, <minecraft:glowstone>, <enderio:block_alloy:2>]]);
recipes.addShaped(<enderio:block_solar_panel:3>, [[<enderio:item_material:3>, <enderio:block_solar_panel:2>, <enderio:item_material:3>],[<enderio:item_basic_capacitor:2>, <enderio:block_dark_fused_quartz>, <enderio:item_basic_capacitor:2>], [<enderio:block_alloy:2>, <minecraft:glowstone>, <enderio:block_alloy:2>]]);

//强化光伏电池
recipes.remove(<enderio:block_solar_panel:2>);
recipes.addShaped(<enderio:block_solar_panel:2>, [[<enderio:item_material:3>, <enderio:block_solar_panel:1>, <enderio:item_material:3>],[<enderio:item_basic_capacitor:1>, <enderio:block_enlightened_fused_quartz>, <enderio:item_basic_capacitor:1>], [<enderio:block_alloy:1>, <minecraft:daylight_detector>, <enderio:block_alloy:5>]]);
recipes.addShaped(<enderio:block_solar_panel:2>, [[<enderio:item_material:3>, <enderio:block_solar_panel:1>, <enderio:item_material:3>],[<enderio:item_capacitor_energetic_silver>, <enderio:block_enlightened_fused_quartz>, <enderio:item_capacitor_energetic_silver>], [<enderio:block_alloy:1>, <minecraft:daylight_detector>, <enderio:block_alloy:5>]]);

//光伏电池
recipes.remove(<enderio:block_solar_panel:1>);
recipes.addShaped(<enderio:block_solar_panel:1>, [[<enderio:block_solar_panel>, <enderio:block_solar_panel>, <enderio:block_solar_panel>],[<enderio:item_capacitor_silver>, <enderio:block_fused_quartz>, <enderio:item_capacitor_silver>], [<enderio:block_alloy:5>, <minecraft:daylight_detector>, <enderio:block_alloy:4>]]);
recipes.addShaped(<enderio:block_solar_panel:1>, [[<enderio:block_solar_panel>, <enderio:block_solar_panel>, <enderio:block_solar_panel>],[<enderio:item_basic_capacitor>, <enderio:block_fused_quartz>, <enderio:item_basic_capacitor>], [<enderio:block_alloy:5>, <minecraft:daylight_detector>, <enderio:block_alloy:4>]]);

//烈酒/火焰水(流体精炼/药水酿造)
mods.thermalexpansion.Refinery.addRecipe(<liquid:hootch>*500, <minecraft:sugar>,<liquid:ethanol>*1000, 16000);
mods.thermalexpansion.Imbuer.addRecipe(<liquid:fire_water>*1000, <thermalfoundation:material:1024>*4, <liquid:hootch>*1000, 16000);

//基岩粉(流体转置)
mods.thermalexpansion.Transposer.addFillRecipe(<enderio:item_material:20>*3,<botania:manaresource:8>,<liquid:fire_water>*1000, 16000);

//简易合金炉
recipes.remove(<enderio:block_simple_alloy_smelter>);
recipes.addShaped(<enderio:block_simple_alloy_smelter>, [[<contenttweaker:basiccircuit>, <extendedcrafting:material:8>, <contenttweaker:basiccircuit>],[<immersiveengineering:metal_decoration0:4>, <thermalexpansion:machine:3>, <immersiveengineering:metal_decoration0:4>], [<thermalfoundation:material:290>, <enderio:item_material>, <thermalfoundation:material:290>]]);

//简易SAG磨粉机
recipes.remove(<enderio:block_simple_sag_mill>);
recipes.addShaped(<enderio:block_simple_sag_mill>, [[<contenttweaker:basiccircuit>, <extendedcrafting:material:8>, <contenttweaker:basiccircuit>],[<immersiveengineering:metal_decoration0:4>, <thermalexpansion:machine:1>, <immersiveengineering:metal_decoration0:4>], [<thermalfoundation:material:290>, <enderio:item_material>, <thermalfoundation:material:290>]]);

//简易电炉
recipes.remove(<enderio:block_simple_furnace>);
recipes.addShaped(<enderio:block_simple_furnace>, [[<contenttweaker:basiccircuit>, <extendedcrafting:material:8>, <contenttweaker:basiccircuit>],[<immersiveengineering:metal_decoration0:4>, <thermalexpansion:machine>, <immersiveengineering:metal_decoration0:4>], [<thermalfoundation:material:290>, <enderio:item_material>, <thermalfoundation:material:290>]]);

//有机绿色染料
SagMill.addRecipe([<enderio:item_material:48>],[100 as float],<environmentaltech:litherite_crystal>,"NONE", 4000,[4.0 as float]);

//末影钢机器框架
recipes.remove(<enderio:item_material:66>);
recipes.addShaped(<enderio:item_material:66>, [[<enderio:block_end_iron_bars>, <enderio:item_alloy_ingot:8>, <enderio:block_end_iron_bars>],[<enderio:item_alloy_ingot:8>, <enderio:item_material:1>, <enderio:item_alloy_ingot:8>], [<enderio:block_end_iron_bars>, <enderio:item_alloy_ingot:8>, <enderio:block_end_iron_bars>]]);

//导管提取速率升级
recipes.remove(<enderio:item_extract_speed_upgrade>);
recipes.addShaped(<enderio:item_extract_speed_upgrade> * 2, [[<enderio:item_alloy_ingot:8>, <enderio:item_alloy_ingot:8>, <enderio:item_alloy_ingot:8>],[<enderio:item_alloy_ingot>, <minecraft:piston>, <enderio:item_alloy_ingot>], [<enderio:item_alloy_ingot>, <minecraft:redstone_torch>, <enderio:item_alloy_ingot>]]);

//==================================================================================实用拓展==================================================================================
//铁质外壳
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShapeless(<actuallyadditions:block_misc:9>, [<rftools:machine_frame>]);

//油菜压榨机/发酵桶
recipes.remove(<actuallyadditions:block_canola_press>);
recipes.remove(<actuallyadditions:block_fermenting_barrel>);

//小型板条箱
recipes.remove(<actuallyadditions:block_giant_chest>);
recipes.addShaped(<actuallyadditions:block_giant_chest>, [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],[<ore:plankWood>, <ironchest:iron_chest:2>, <ore:plankWood>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

//农场
recipes.remove(<actuallyadditions:block_farmer>);
recipes.addShaped(<actuallyadditions:block_farmer>, [[<actuallyadditions:block_crystal:5>, <minecraft:wheat_seeds>, <actuallyadditions:block_crystal:5>],[<contenttweaker:advancedcircuit>, <actuallyadditions:block_misc:9>, <contenttweaker:advancedcircuit>], [<actuallyadditions:block_crystal:5>, <minecraft:wheat_seeds>, <actuallyadditions:block_crystal:5>]]);

//原子再构机重组石英为赛特斯石英
AtomicReconstructor.addRecipe(<appliedenergistics2:material:10>,<appliedenergistics2:material:11>, 1000);

//矿工透镜
recipes.remove(<actuallyadditions:item_mining_lens>);
recipes.addShaped(<actuallyadditions:item_mining_lens>, [[<minecraft:redstone_ore>, <environmentaltech:kyronite_crystal>, <minecraft:iron_ore>],[<environmentaltech:kyronite_crystal>, <actuallyadditions:item_misc:18>, <environmentaltech:kyronite_crystal>], [<minecraft:gold_ore>, <environmentaltech:kyronite_crystal>, <minecraft:emerald_ore>]]);

//====================================================================================核电====================================================================================
//合金炉
recipes.remove(<nuclearcraft:alloy_furnace_idle>);
recipes.addShaped(<nuclearcraft:alloy_furnace_idle>, [[<nuclearcraft:part>, <nuclearcraft:part:10>, <nuclearcraft:part>],[<contenttweaker:advancedcircuit>, <enderio:block_alloy_smelter>,<contenttweaker:advancedcircuit>], [<nuclearcraft:part>, <nuclearcraft:part:5>, <nuclearcraft:part>]]);

//化学反应器糖液加水出乙醇
mods.nuclearcraft.chemical_reactor.removeRecipeWithInput([<liquid:sugar>*144,<liquid:water>*1000]);
mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:sugar>*1152,<liquid:water>*8000, <liquid:ethanol>*4000, <liquid:carbon_dioxide>*4000]);

//氟石通用
recipes.addShapeless(<mekanism:otherdust:7>, [<nuclearcraft:gem:2>]);
recipes.addShapeless(<nuclearcraft:gem:2>, [<mekanism:otherdust:7>]);
recipes.addShapeless(<nuclearcraft:gem_dust:5>, [<mekanism:otherdust:8>]);
recipes.addShapeless(<mekanism:otherdust:8>, [<nuclearcraft:gem_dust:5>]);

//合成用锂离子电池
recipes.addShaped(<contenttweaker:li_cell>, [[<nuclearcraft:alloy:4>, <nuclearcraft:alloy:4>, <nuclearcraft:alloy:4>],[<nuclearcraft:alloy:6>, <nuclearcraft:ingot:6>, <nuclearcraft:alloy:6>], [<nuclearcraft:alloy:2>, <nuclearcraft:alloy:2>, <nuclearcraft:alloy:2>]]);
recipes.addShapeless(<contenttweaker:li_cell>, [<nuclearcraft:lithium_ion_cell>]);

//基础锂离子电池补充配方
recipes.addShaped(<nuclearcraft:lithium_ion_battery_basic>, [[<nuclearcraft:part:3>, <contenttweaker:li_cell>, <nuclearcraft:part:3>],[<contenttweaker:li_cell>, <nuclearcraft:part:5>, <contenttweaker:li_cell>], [<nuclearcraft:part:3>, <contenttweaker:li_cell>, <nuclearcraft:part:3>]]);

//石墨锭浇筑移除
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:ingot:8>);

//太阳能
recipes.remove(<nuclearcraft:solar_panel_basic>);
recipes.remove(<nuclearcraft:solar_panel_advanced>);
recipes.remove(<nuclearcraft:solar_panel_du>);
recipes.remove(<nuclearcraft:solar_panel_elite>);

//垃圾桶
recipes.remove(<nuclearcraft:bin>);
recipes.addShaped(<nuclearcraft:bin>, [[<nuclearcraft:part>, <nuclearcraft:ingot:10>, <nuclearcraft:part>],[<nuclearcraft:ingot:10>, <appliedenergistics2:condenser>, <nuclearcraft:ingot:10>], [<nuclearcraft:part>, <nuclearcraft:ingot:10>, <nuclearcraft:part>]]);

//热交换外壳
recipes.remove(<nuclearcraft:heat_exchanger_wall>);
recipes.addShaped(<nuclearcraft:heat_exchanger_wall> * 4, [[<contenttweaker:stainless_ingot>, <mekanism:basicblock2:7>, <contenttweaker:stainless_ingot>],[<mekanism:basicblock2:7>, <nuclearcraft:part:10>, <mekanism:basicblock2:7>], [<contenttweaker:stainless_ingot>, <mekanism:basicblock2:7>, <contenttweaker:stainless_ingot>]]);

//涡轮外壳
recipes.removeShaped(<nuclearcraft:turbine_frame> * 4, [[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:15>, <nuclearcraft:alloy:15>],[<nuclearcraft:alloy:15>, <nuclearcraft:part:12>, <nuclearcraft:alloy:15>], [<nuclearcraft:alloy:15>, <nuclearcraft:alloy:15>, <nuclearcraft:alloy:15>]]);
recipes.addShaped(<nuclearcraft:turbine_wall> * 8, [[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:11>, <nuclearcraft:alloy:15>],[<nuclearcraft:alloy:11>, <nuclearcraft:part:12>, <nuclearcraft:alloy:11>], [<nuclearcraft:alloy:15>, <nuclearcraft:alloy:11>, <nuclearcraft:alloy:15>]]);

//电磁体
recipes.removeShaped(<nuclearcraft:fusion_electromagnet_idle>, [[<nuclearcraft:part:4>, <nuclearcraft:part:1>, <nuclearcraft:part:4>],[<nuclearcraft:part:1>, null, <nuclearcraft:part:1>], [<nuclearcraft:part:4>, <nuclearcraft:part:1>, <nuclearcraft:part:4>]]);
recipes.removeShaped(<nuclearcraft:fusion_electromagnet_transparent_idle>, [[<nuclearcraft:part:4>, <nuclearcraft:part:1>, <nuclearcraft:part:4>],[<nuclearcraft:part:1>, <minecraft:glass>, <nuclearcraft:part:1>], [<nuclearcraft:part:4>, <nuclearcraft:part:1>, <nuclearcraft:part:4>]]);
recipes.addShaped(<nuclearcraft:fusion_electromagnet_idle> * 2, [[<nuclearcraft:part:5>, <nuclearcraft:part:1>, <nuclearcraft:part:5>],[<nuclearcraft:part:1>, <enderio:item_capacitor_melodic>, <nuclearcraft:part:1>], [<nuclearcraft:part:5>, <nuclearcraft:part:1>, <nuclearcraft:part:5>]]);

//水晶粘合剂
recipes.remove(<nuclearcraft:compound:1>);
recipes.addShapeless(<nuclearcraft:compound:1>, [<nuclearcraft:gem_dust:1>,<nuclearcraft:compound>,<thermalfoundation:material:770>,<enderio:item_material:20>]);

//机器框架
recipes.remove(<nuclearcraft:part:10>);
recipes.addShaped(<nuclearcraft:part:10>, [[<contenttweaker:stainless_ingot>, <enderio:item_alloy_ingot:6>, <contenttweaker:stainless_ingot>],[<enderio:item_alloy_ingot:8>, <enderio:item_material>, <enderio:item_alloy_ingot:8>], [<contenttweaker:stainless_ingot>, <enderio:item_alloy_ingot:6>, <contenttweaker:stainless_ingot>]]);

//钢制框架
recipes.remove(<nuclearcraft:part:12>);
recipes.addShaped(<nuclearcraft:part:12>, [[<nuclearcraft:alloy:10>, <nuclearcraft:alloy:1>, <threng:material>],[<nuclearcraft:alloy:1>, <mekanism:basicblock:8>, <nuclearcraft:alloy:1>], [<threng:material>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:10>]]);

//聚变堆核心
recipes.remove(<nuclearcraft:fusion_core>);
//recipes.addShaped(<nuclearcraft:fusion_core>, [[<nuclearcraft:part:2>, <contenttweaker:extremecircuit>, <nuclearcraft:part:2>],[<nuclearcraft:fission_controller_new_fixed>, <nuclearcraft:block_depleted_curium>, <nuclearcraft:fission_controller_new_fixed>], [<nuclearcraft:part:2>, <nuclearcraft:part:12>, <nuclearcraft:part:2>]]);

//不锈钢粉
recipes.addShapeless(<contenttweaker:stainless_steel_dust> * 6, [<thermalfoundation:material:96>,<thermalfoundation:material:96>,<nuclearcraft:dust:11>,<thermalfoundation:material:96>,<thermalfoundation:material:96>,<contenttweaker:chrome_dust>,<thermalfoundation:material>,<thermalfoundation:material>,<thermalfoundation:material:69>]);
/*
//金属成型机
mods.jei.JEI.removeAndHide(<nuclearcraft:ingot_former_idle>);
*/
//粉碎菱锰
mods.thermalexpansion.Pulverizer.addRecipe(<nuclearcraft:gem_dust:1>,<minecraft:stone:1>, 16000);
mods.thermalexpansion.Pulverizer.addRecipe(<nuclearcraft:gem_dust:1>,<minecraft:stone:2>, 16000);

//红宝石粉
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:ruby_dust>,<contenttweaker:ruby>, 4000);
SagMill.addRecipe([<contenttweaker:ruby_dust>],[100 as float],<contenttweaker:ruby>,"NONE", 2000,[2.0 as float]);

//石墨粉
recipes.addShapeless(<nuclearcraft:dust:8>, [<immersiveengineering:material:18>]);
recipes.addShapeless(<immersiveengineering:material:18>, [<nuclearcraft:dust:8>]);

//熔融流明精华
mods.nuclearcraft.salt_mixer.addRecipe([<liquid:redstone>*100,<liquid:glowstone>*500,<liquid:lumium_liquid>*200]);

//高级板
recipes.remove(<nuclearcraft:part:1>);

//线圈
recipes.remove(<nuclearcraft:turbine_dynamo_coil>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:1>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:2>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:3>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:4>);
recipes.remove(<nuclearcraft:turbine_dynamo_coil:5>);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:5>, [[<thermalfoundation:material:130>, <thermalfoundation:material:130>, <thermalfoundation:material:130>],[<thermalfoundation:material:130>, <thermalfoundation:material:160>, <thermalfoundation:material:130>], [<thermalfoundation:material:130>, <thermalfoundation:material:130>, <thermalfoundation:material:130>]]);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:4>, [[<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>],[<thermalfoundation:material:128>, <thermalfoundation:material:160>, <thermalfoundation:material:128>], [<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>]]);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:3>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],[<minecraft:gold_ingot>, <thermalfoundation:material:160>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:2>, [[<thermalfoundation:material:132>, <thermalfoundation:material:132>, <thermalfoundation:material:132>],[<thermalfoundation:material:132>, <thermalfoundation:material:160>, <thermalfoundation:material:132>], [<thermalfoundation:material:132>, <thermalfoundation:material:132>, <thermalfoundation:material:132>]]);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:1>, [[<nuclearcraft:ingot:9>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:9>],[<nuclearcraft:ingot:9>, <thermalfoundation:material:160>, <nuclearcraft:ingot:9>], [<nuclearcraft:ingot:9>, <nuclearcraft:ingot:9>, <nuclearcraft:ingot:9>]]);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil>, [[<nuclearcraft:ingot:7>, <nuclearcraft:ingot:7>, <nuclearcraft:ingot:7>],[<nuclearcraft:ingot:7>, <thermalfoundation:material:160>, <nuclearcraft:ingot:7>], [<nuclearcraft:ingot:7>, <nuclearcraft:ingot:7>, <nuclearcraft:ingot:7>]]);

//不锈钢线圈
recipes.addShaped(<contenttweaker:stainless_steel_coil>, [[<contenttweaker:stainless_ingot>, <contenttweaker:stainless_ingot>, <contenttweaker:stainless_ingot>],[<contenttweaker:stainless_ingot>, <thermalfoundation:material:160>, <contenttweaker:stainless_ingot>], [<contenttweaker:stainless_ingot>, <contenttweaker:stainless_ingot>, <contenttweaker:stainless_ingot>]]);

//基础板
recipes.remove(<nuclearcraft:part>);
mods.thermalexpansion.InductionSmelter.addRecipe(<nuclearcraft:part>, <nuclearcraft:dust:8>,<thermalfoundation:material:131>, 4000);

//小制造机
recipes.remove(<nuclearcraft:manufactory_idle>);
recipes.addShaped(<nuclearcraft:manufactory_idle>, [[<nuclearcraft:part>, <minecraft:sticky_piston>, <nuclearcraft:part>],[<contenttweaker:basiccircuit>, <nuclearcraft:part:10>, <contenttweaker:basiccircuit>], [<nuclearcraft:part>, <nuclearcraft:part:4>, <nuclearcraft:part>]]);

//明胶(小制造机)
mods.nuclearcraft.manufactory.addRecipe([<minecraft:mutton>,<nuclearcraft:gelatin>*4]);
mods.nuclearcraft.manufactory.addRecipe([<minecraft:chicken>,<nuclearcraft:gelatin>*4]);
mods.nuclearcraft.manufactory.addRecipe([<minecraft:beef>,<nuclearcraft:gelatin>*8]);
mods.nuclearcraft.manufactory.addRecipe([<contenttweaker:xiaoyu>,<nuclearcraft:gelatin>*64]);
mods.nuclearcraft.manufactory.addRecipe([<minecraft:rotten_flesh>,<nuclearcraft:gelatin>*1]);

//涡轮机框架
recipes.remove(<nuclearcraft:turbine_frame>);
recipes.addShaped(<nuclearcraft:turbine_frame> * 4, [[<nuclearcraft:alloy:15>, <nuclearcraft:turbine_wall>, <nuclearcraft:alloy:15>],[<nuclearcraft:turbine_wall>, <contenttweaker:advancedcircuit>, <nuclearcraft:turbine_wall>], [<nuclearcraft:alloy:15>, <nuclearcraft:turbine_wall>, <nuclearcraft:alloy:15>]]);

//低合金高强度钢锭
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput([<nuclearcraft:alloy:15>*16]);
mods.nuclearcraft.alloy_furnace.addRecipe([<minecraft:iron_ingot>*3,<nuclearcraft:compound:9>,<nuclearcraft:alloy:15>*4]);

//====================================================================================通用机械====================================================================================
//电解核心
recipes.remove(<mekanism:electrolyticcore>);
recipes.addShaped(<mekanism:electrolyticcore>, [[<nuclearcraft:part>, <mekanism:dust:2>, <nuclearcraft:part>],[<thermalfoundation:material>, <contenttweaker:basiccircuit>, <thermalfoundation:material:1>], [<nuclearcraft:part>, <mekanism:dust:2>, <nuclearcraft:part>]]);

//配置器
recipes.remove(<mekanism:configurator>);
recipes.addShaped(<mekanism:configurator>, [[<minecraft:glass_pane>, <minecraft:dye:4>, <minecraft:glass_pane>],[<minecraft:glass_pane>, <thermalfoundation:wrench>, <minecraft:glass_pane>], [<minecraft:glass_pane>, <minecraft:stick>, <minecraft:glass_pane>]]);

//量子传送装置NBT清空
recipes.addShapeless(<mekanism:machineblock3>, [<mekanism:machineblock3>]);

//基础通用线缆
recipes.remove(<mekanism:transmitter>);
recipes.addShaped(<mekanism:transmitter> * 8, [[<contenttweaker:stainless_ingot>, <mekanism:controlcircuit>, <contenttweaker:stainless_ingot>],[null, null, null], [null, null, null]]);
recipes.addShaped(<mekanism:transmitter> * 8, [[null, null, null],[<contenttweaker:stainless_ingot>, <mekanism:controlcircuit>, <contenttweaker:stainless_ingot>], [null, null, null]]);
recipes.addShaped(<mekanism:transmitter> * 8, [[null, null, null], [null, null, null],[<contenttweaker:stainless_ingot>, <mekanism:controlcircuit>, <contenttweaker:stainless_ingot>]]);

//能量板合成用
recipes.addShaped(<mekanism:energytabletcraft>, [[<minecraft:redstone>, <mekanism:enrichedalloy>, <minecraft:redstone>],[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>], [<minecraft:redstone>, <mekanism:enrichedalloy>, <minecraft:redstone>]]);

//化学氧化机
recipes.remove(<mekanism:machineblock2:1>);
recipes.addShaped(<mekanism:machineblock2:1>, [[<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>],[<ironchest:iron_chest:6>, <mekanism:basicblock:9>, <mekanism:gastank>], [<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>]]);

//回旋式气液转换机
recipes.remove(<mekanism:machineblock2>);
recipes.addShaped(<mekanism:machineblock2>, [[<ore:blockGlass>, <mekanism:controlcircuit>, <ore:blockGlass>],[<mekanism:gastank>, <mekanism:energytablet>, <thermalexpansion:tank>], [<ore:blockGlass>, <mekanism:controlcircuit>, <ore:blockGlass>]]);

//提升物品堆叠上限
<mekanism:tierinstaller>.maxStackSize = 16;
<mekanism:tierinstaller:1>.maxStackSize = 16;
<mekanism:tierinstaller:2>.maxStackSize = 16;
<mekanism:tierinstaller:3>.maxStackSize = 16;

<mekanism:filterupgrade>.maxStackSize = 64;
<mekanism:energyupgrade>.maxStackSize = 64;
<mekanism:speedupgrade>.maxStackSize = 64;
<mekanism:mufflingupgrade>.maxStackSize = 64;

//钢制机壳
recipes.remove(<mekanism:basicblock:8>);

//终极控制电路
recipes.remove(<mekanism:controlcircuit:3>);

//冶金灌注机
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8>, [[<enderio:item_alloy_endergy_ingot:6>, <mekanism:basicblock>, <enderio:item_alloy_endergy_ingot:6>],[<contenttweaker:advancedcircuit>, <mekanism:basicblock:8>, <contenttweaker:advancedcircuit>], [<enderio:item_alloy_endergy_ingot:2>, <mekanism:basicblock>, <enderio:item_alloy_endergy_ingot:2>]]);

//化学清洗修改核废水产量
mods.mekanism.chemical.washer.removeRecipe(<gas:nuclearwaste>);
mods.mekanism.chemical.washer.addRecipe(<gas:fissilefuel>*1000, <gas:nuclearwaste>*1000);

//富集仓
recipes.remove(<mekanism:machineblock>);
recipes.addShaped(<mekanism:machineblock>, [[<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>],[<contenttweaker:advancedcircuit>, <mekanism:basicblock:8>, <contenttweaker:advancedcircuit>], [<mekanism:enrichedalloy>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>]]);

//富集合金
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>);
mods.mekanism.infuser.addRecipe("REDSTONE", 20, <contenttweaker:mana_stainless_ingot>, <mekanism:enrichedalloy>);

//基础控制电路
mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit>);
mods.mekanism.infuser.addRecipe("REDSTONE", 20, <contenttweaker:basiccircuit>, <mekanism:controlcircuit>);

//压缩红石/钻石/煤炭
mods.mekanism.enrichment.removeRecipe(<minecraft:redstone>);
mods.mekanism.enrichment.removeRecipe(<minecraft:diamond>);
mods.mekanism.enrichment.removeRecipe(<minecraft:coal>);
mods.mekanism.enrichment.removeRecipe(<minecraft:coal:1>);

mods.mekanism.enrichment.addRecipe(<botania:manaresource:8>,<mekanism:compressedredstone>);
mods.mekanism.enrichment.addRecipe(<botania:manaresource:2>,<mekanism:compresseddiamond>);
mods.mekanism.enrichment.addRecipe(<extrabotany:nightmarefuel>,<mekanism:compressedcarbon>);

//热力蒸馏方块
recipes.remove(<mekanism:basicblock2>);
recipes.addShaped(<mekanism:basicblock2> * 4, [[<mekanism:enrichedalloy>, <contenttweaker:stainless_ingot>, <mekanism:enrichedalloy>],[<contenttweaker:stainless_ingot>, <thermalfoundation:material:291>, <contenttweaker:stainless_ingot>], [<mekanism:enrichedalloy>, <contenttweaker:stainless_ingot>, <mekanism:enrichedalloy>]]);

//电解分离器
recipes.remove(<mekanism:machineblock2:4>);
recipes.addShaped(<mekanism:machineblock2:4>, [[<contenttweaker:stainless_ingot>, <minecraft:redstone_block>, <contenttweaker:stainless_ingot>],[<mekanism:enrichedalloy>, <mekanism:electrolyticcore>, <mekanism:enrichedalloy>], [<contenttweaker:stainless_ingot>, <minecraft:redstone_block>, <contenttweaker:stainless_ingot>]]);

//==================================================================================生物农场==================================================================================
//铁制
recipes.remove(<tinymobfarm:iron_farm>);
recipes.addShaped(<tinymobfarm:iron_farm>, [[<minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_rod>],[<tinymobfarm:stone_farm>, <contenttweaker:basiccircuit>, <tinymobfarm:stone_farm>], [<ore:blockIron>,<ore:blockIron>,<ore:blockIron>]]);

//==================================================================================星系==================================================================================
//NASA工作台
recipes.remove(<galacticraftcore:rocket_workbench>);

//一阶助推器
recipes.remove(<galacticraftcore:engine:1>);
recipes.addShaped(<galacticraftcore:engine:1>, [[<galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:9>],[<galacticraftcore:heavy_plating>,<forge:bucketfilled>.withTag({FluidName: "cetane_boosted_diese", Amount: 1000}), <galacticraftcore:heavy_plating>], [<galacticraftcore:heavy_plating>, <galacticraftcore:air_vent>, <galacticraftcore:heavy_plating>]]);

//一阶火箭引擎
recipes.remove(<galacticraftcore:engine>);

//晶圆
recipes.addShapeless(<galacticraftcore:basic_item:13>*2, [<contenttweaker:advancedcircuit>]);
recipes.addShapeless(<galacticraftcore:basic_item:14>*2, [<contenttweaker:epiccircuit>]);

//燃料装载机
recipes.remove(<galacticraftcore:fuel_loader>);

//通风孔
recipes.remove(<galacticraftcore:air_vent>);
recipes.addShaped(<galacticraftcore:air_vent>, [[<minecraft:iron_bars>, <galacticraftcore:basic_item:7>, <minecraft:iron_bars>],[<galacticraftcore:basic_item:7>, <galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:7>], [<minecraft:iron_bars>, <galacticraftcore:basic_item:7>, <minecraft:iron_bars>]]);

//铝土粉
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:bauxite_dust>*2,<immersiveengineering:ore:1>,2048);
mods.immersiveengineering.Crusher.addRecipe(<contenttweaker:bauxite_dust>*2, <immersiveengineering:ore:1>, 2048);

//铝土矿渣处理
mods.thermalexpansion.Centrifuge.addRecipe([<contenttweaker:rutile_dust>,<thermalfoundation:material> % 81],<contenttweaker:bauxite_residue>,null,2048);
//锡罐
recipes.remove(<galacticraftcore:canister>);
recipes.addShaped(<galacticraftcore:canister>,[[<thermalfoundation:material:321>,<galacticraftcore:basic_item:7>,<thermalfoundation:material:321>],[<galacticraftcore:basic_item:7>,<thermalfoundation:material:321>,<galacticraftcore:basic_item:7>],[<thermalfoundation:material:321>,<galacticraftcore:basic_item:7>,<thermalfoundation:material:321>]]);
//流体管道(EIO/GC转化)
recipes.addShapeless(<galacticraftcore:fluid_pipe>,[<enderio:item_liquid_conduit>]);
recipes.addShapeless(<enderio:item_liquid_conduit>,[<galacticraftcore:fluid_pipe>]);