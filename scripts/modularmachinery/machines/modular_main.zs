//本脚本由ohxihh创建，部分机器结构与配方由chengzhenjie设计
//未经ohxihh和chengzhenjie允许，任何人不允许发布修改过的脚本或将其应用于你的整合包或服务器

//#ikwid

#loader crafttweaker reloadable

//导包
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;

//========================================小型筛矿机========================================
//红宝石矿
MachineModifier.setMaxParallelism("mini_orescreening_machine", 4);
RecipeBuilder.newBuilder("红宝石","mini_orescreening_machine", 100)
.addEnergyPerTickInput(128)
.addFluidInput(<liquid:water>*1000)
.addItemInput(<minecraft:redstone>*16)
.addItemOutput(<contenttweaker:ruby>*5).setChance(0.7)
.addItemOutput(<contenttweaker:ruby>*4).setChance(0.6)
.addItemOutput(<contenttweaker:ruby>*3).setChance(0.5)
.addItemOutput(<contenttweaker:ruby>*2).setChance(0.4)
.build();

//基础矿物
RecipeBuilder.newBuilder("基础矿物1","mini_orescreening_machine", 1200)
.addEnergyPerTickInput(256)
.addFluidInput(<liquid:water>*2000)
.addItemInput(<minecraft:stone>*16)
.addItemInput(<minecraft:iron_ore>).setChance(0)
.addItemOutput(<minecraft:iron_ore>).setChance(0.4)
.addItemOutput(<minecraft:gold_ore>).setChance(0.4)
.addItemOutput(<thermalfoundation:ore>).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:1>).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:2>).setChance(0.4)
.build();

RecipeBuilder.newBuilder("基础矿物2","mini_orescreening_machine", 1200)
.addEnergyPerTickInput(256)
.addFluidInput(<liquid:water>*2000)
.addItemInput(<minecraft:stone>*16)
.addItemInput(<minecraft:coal_ore>).setChance(0)
.addItemOutput(<minecraft:coal_ore>).setChance(0.4)
.addItemOutput(<minecraft:redstone_ore>).setChance(0.4)
.addItemOutput(<minecraft:lapis_ore>).setChance(0.4)
.addItemOutput(<minecraft:quartz_ore>).setChance(0.4)
.addItemOutput(<minecraft:emerald_ore>).setChance(0.2)
.build();

//沙子筛海蓝宝石/油砂
RecipeBuilder.newBuilder("海蓝宝石油砂","mini_orescreening_machine", 200)
.addEnergyPerTickInput(128)
.addFluidInput(<liquid:water>*1000)
.addItemInput(<minecraft:sand>*8)
.addItemOutput(<astralsorcery:blockcustomsandore>)
.addItemOutput(<thermalfoundation:ore_fluid>).setChance(0.10)
.build();

//铁矿转换星辉矿
RecipeBuilder.newBuilder("星辉矿石","mini_orescreening_machine", 600)
.addEnergyPerTickInput(1024)
.addFluidInput(<liquid:astralsorcery.liquidstarlight>*2000)
.addItemInput(<astralsorcery:itemlinkingtool>).setChance(0)
.addItemInput(<minecraft:iron_ore>*8)
.addItemOutput(<astralsorcery:blockcustomore:1>*2)
.build();

//========================================大型温差电堆========================================
RecipeBuilder.newBuilder("温差发电","temp_energy", 1800)
.addItemInput(<ore:blockUranium>*1)
.addItemInput(<minecraft:ice>*1)
.addEnergyPerTickOutput(6144).setIgnoreOutputCheck(true)
.build();

//========================================物质转换机========================================
//混沌碎片
RecipeBuilder.newBuilder("混沌碎片","matter_transformer", 600)
.addEnergyPerTickInput(131072)
.addItemInput(<draconicevolution:dragon_heart>)
.addItemOutput(<draconicevolution:chaos_shard:1>*4)
.build();

//凋零骷髅头
RecipeBuilder.newBuilder("黑头","matter_transformer", 600)
.addEnergyPerTickInput(131072)
.addItemInput(<minecraft:skull>*5)
.addItemOutput(<minecraft:skull:1>*5)
.build();

//下界之星
RecipeBuilder.newBuilder("下界之星","matter_transformer", 600)
.addEnergyPerTickInput(131072)
.addItemInput(<minecraft:skull:1>*5)
.addItemOutput(<minecraft:nether_star>*5)
.build();

//铱锭
RecipeBuilder.newBuilder("铱锭","matter_transformer", 200)
.addEnergyPerTickInput(262144)
.addItemInput(<contenttweaker:stainless_ingot>*16)
.addItemOutput(<thermalfoundation:material:135>*16)
.build();

//盖亚一
RecipeBuilder.newBuilder("盖亚一","matter_transformer", 600)
.addEnergyPerTickInput(65536)
.addItemInput(<extrabotany:firstfractal>).setChance(0)
.addItemInput(<botania:manaresource:4>)
.addItemInput(<contenttweaker:mana_crystal1>)
.addItemOutput(<botania:manaresource:5>*8)
.build();

//盖亚二
RecipeBuilder.newBuilder("盖亚二","matter_transformer", 600)
.addEnergyPerTickInput(131072)
.addItemInput(<extrabotany:firstfractal>).setChance(0)
.addItemInput(<botania:manaresource:14>)
.addItemInput(<contenttweaker:mana_crystal2>)
.addItemOutput(<botania:manaresource:5>*16)
.addItemOutput(<extrabotany:rewardbag943>*3)
.build();

//盖亚三
RecipeBuilder.newBuilder("盖亚三","matter_transformer", 600)
.addEnergyPerTickInput(131072)
.addItemInput(<extrabotany:firstfractal>).setChance(0)
.addItemInput(<extrabotany:material:6>)
.addItemInput(<contenttweaker:mana_crystal3>)
.addItemOutput(<extrabotany:material:3>)
.addItemOutput(<extrabotany:rewardbag:3>.withTag({weight: 189})*9)
.addItemOutput(<extrabotany:rewardbag:2>.withTag({weight: 113})*9)
.addItemOutput(<extrabotany:rewardbag:1>.withTag({weight: 76})*12)
.addItemOutput(<extrabotany:rewardbag>.withTag({weight: 96})*20)
.build();

//终极合成组件
RecipeBuilder.newBuilder("终极合成组件","matter_transformer", 200)
.addEnergyPerTickInput(32768)
.addItemInput(<extendedcrafting:material:16>)
.addItemInput(<minecraft:emerald>*32)
.addItemOutput(<extendedcrafting:material:17>)
.build();

//末地石
RecipeBuilder.newBuilder("末地石","matter_transformer", 40)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:stone>*32)
.addItemOutput(<minecraft:end_stone>*32)
.build();

//泥土
RecipeBuilder.newBuilder("泥土","matter_transformer", 40)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:sand>*32)
.addItemOutput(<minecraft:dirt>*32)
.build();

//========================================树脂处理工厂========================================
//树脂板1
RecipeBuilder.newBuilder("树脂板1","factory", 40)
.addEnergyPerTickInput(2048)
.addItemInput(<ore:logWood>*16)
.addItemOutput(<contenttweaker:resinplate>*8)
.build();

//树脂板2
RecipeBuilder.newBuilder("树脂板2","factory", 40)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:resin>*400)
.addItemOutput(<contenttweaker:resinplate>*8)
.build();

//环氧树脂板
RecipeBuilder.newBuilder("环氧树脂板","factory", 10)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:epoxy_resin>*1152)
.addItemOutput(<cregtech:meta.material>*8)
.build();

//========================================小型组装机========================================
//ECO-可扩展存储子系统主机-L4-小组
RecipeBuilder.newBuilder("ECO-可扩展存储子系统主机-L4-小组","mini_assemble_machine", 1200)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:cryotheum>*16000)
.addItemInput(<contenttweaker:basiccircuit>*8)
.addItemInput(<appliedenergistics2:controller>*4)
.addItemInput(<appliedenergistics2:material:9>*32)
.addItemInput(<threng:material:4>*8)
.addItemInput(<threng:material:14>*4)
.addItemInput(<contenttweaker:stainless_plate>*16)
.addItemOutput(<novaeng_core:extendable_digital_storage_subsystem_l4>)
.build();

//ECO-存储矩阵-L4-小组
RecipeBuilder.newBuilder("ECO-物品存储矩阵-L4-小组","mini_assemble_machine", 400)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:basiccircuit>*2)
.addItemInput(<nae2:material:2>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<threng:material:14>*2)
.addItemInput(<contenttweaker:stainless_plate>*4)
.addItemOutput(<novaeng_core:estorage_cell_item_16m>)
.build();

RecipeBuilder.newBuilder("ECO-流体存储矩阵-L4-小组","mini_assemble_machine", 400)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:basiccircuit>*2)
.addItemInput(<nae2:material:6>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<threng:material:14>*2)
.addItemInput(<contenttweaker:stainless_plate>*4)
.addItemOutput(<novaeng_core:estorage_cell_fluid_16m>)
.build();

//机器框架
RecipeBuilder.newBuilder("机器框架","mini_assemble_machine", 1200)
.addEnergyPerTickInput(2048)
.addItemInput(<embers:mech_core>)
.addItemInput(<ore:scaffoldingSteel>*2)
.addItemInput(<immersiveengineering:metal_decoration0:5>*2)
.addItemInput(<modularmachinery:blockcasing>*4)
.addItemInput(<embers:ingot_dawnstone>*4)
.addItemInput(<thermalfoundation:material:291>*4)
.addItemInput(<minecraft:iron_bars>*8)
.addItemOutput(<thermalexpansion:frame>*2)
.build();

//简易机器框架
RecipeBuilder.newBuilder("简易机器框架","mini_assemble_machine", 2400)
.addEnergyPerTickInput(1024)
.addItemInput(<contenttweaker:resinmachineblock>*2)
.addItemInput(<contenttweaker:crystal_1>)
.addItemInput(<threng:big_assembler>*4)
.addItemInput(<thermalfoundation:material:324>*4)
.addItemInput(<enderio:block_dark_iron_bars>*8)
.addItemInput(<environmentaltech:connector>*8)
.addItemOutput(<enderio:item_material>*2)
.build();

//洁净不锈钢机械方块
RecipeBuilder.newBuilder("洁净不锈钢机械方块","mini_assemble_machine", 400)
.addEnergyPerTickInput(2048)
.addItemInput(<contenttweaker:stainless_plate>*6)
.addItemInput(<contenttweaker:stainless_rod>*4)
.addItemOutput(<cregtech:cleanstainlesssteelmachinecasing>)
.build();

//钢制机械方块
RecipeBuilder.newBuilder("钢制机械方块","mini_assemble_machine", 400)
.addEnergyPerTickInput(2048)
.addItemInput(<thermalfoundation:material:352>*6)
.addItemInput(<immersiveengineering:material:2>*4)
.addItemOutput(<cregtech:steelmachingcasing>)
.build();

//钛机械方块
RecipeBuilder.newBuilder("钛机械方块","mini_assemble_machine", 400)
.addEnergyPerTickInput(2048)
.addItemInput(<contenttweaker:titanium_plate>*6)
.addItemInput(<contenttweaker:titanium_rod>*4)
.addItemOutput(<cregtech:titanium_metal_casing>)
.build();

//钢制机械零件
RecipeBuilder.newBuilder("钢制机械零件","mini_assemble_machine", 60)
.addEnergyPerTickInput(1024)
.addItemInput(<immersiveengineering:material:8>)
.addItemInput(<thermalfoundation:material:352>*4)
.addItemOutput(<immersiveengineering:material:9>)
.build();

//轻型工程块
RecipeBuilder.newBuilder("轻型工程块","mini_assemble_machine", 400)
.addEnergyPerTickInput(1024)
.addItemInput(<immersiveengineering:stone_decoration:4>*2)
.addItemInput(<immersiveengineering:material:5>*2)
.addItemInput(<immersiveengineering:material:8>*2)
.addItemOutput(<immersiveengineering:metal_decoration0:4>*4)
.build();

//红石工程块
RecipeBuilder.newBuilder("红石工程块","mini_assemble_machine", 400)
.addEnergyPerTickInput(1024)
.addItemInput(<immersiveengineering:stone_decoration:4>*2)
.addItemInput(<immersiveengineering:material:8>*2)
.addItemInput(<minecraft:redstone>*12)
.addItemOutput(<immersiveengineering:metal_decoration0:3>*4)
.build();

//重型工程块
RecipeBuilder.newBuilder("重型工程块","mini_assemble_machine", 400)
.addEnergyPerTickInput(1024)
.addItemInput(<immersiveengineering:stone_decoration:4>*2)
.addItemInput(<immersiveengineering:metal_decoration0:4>*2)
.addItemInput(<immersiveengineering:material:9>*2)
.addItemOutput(<immersiveengineering:metal_decoration0:5>*4)
.build();

//========================================先进组装机========================================
//ECO-可扩展存储子系统主机-L4-先进
RecipeBuilder.newBuilder("ECO-可扩展存储子系统主机-L4-先进","advanced_assemble_machine", 600)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:cryotheum>*16000)
.addItemInput(<contenttweaker:basiccircuit>*8)
.addItemInput(<appliedenergistics2:controller>*4)
.addItemInput(<appliedenergistics2:material:9>*32)
.addItemInput(<threng:material:4>*8)
.addItemInput(<threng:material:14>*4)
.addItemInput(<contenttweaker:stainless_plate>*16)
.addItemOutput(<novaeng_core:extendable_digital_storage_subsystem_l4>)
.build();

//ECO-可扩展存储子系统主机-L6-先进
RecipeBuilder.newBuilder("ECO-可扩展存储子系统主机-L6-先进","advanced_assemble_machine", 1200)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:cryotheum>*64000)
.addItemInput(<novaeng_core:extendable_digital_storage_subsystem_l4>)
.addItemInput(<contenttweaker:advancedcircuit>*8)
.addItemInput(<appliedenergistics2:material:9>*32)
.addItemInput(<threng:material:4>*8)
.addItemInput(<draconicevolution:draconic_core>*4)
.addItemInput(<plustic:osmiridiumingot>*16)
.addItemOutput(<novaeng_core:extendable_digital_storage_subsystem_l6>)
.build();

//ECO-存储矩阵-L4-先进
RecipeBuilder.newBuilder("ECO-物品存储矩阵-L4-先进","advanced_assemble_machine", 200)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:basiccircuit>*2)
.addItemInput(<nae2:material:2>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<threng:material:14>*2)
.addItemInput(<contenttweaker:stainless_plate>*4)
.addItemOutput(<novaeng_core:estorage_cell_item_16m>)
.build();

RecipeBuilder.newBuilder("ECO-流体存储矩阵-L4-先进","advanced_assemble_machine", 200)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:basiccircuit>*2)
.addItemInput(<nae2:material:6>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<threng:material:14>*2)
.addItemInput(<contenttweaker:stainless_plate>*4)
.addItemOutput(<novaeng_core:estorage_cell_fluid_16m>)
.build();

//ECO-存储矩阵-L6-先进
RecipeBuilder.newBuilder("ECO-物品存储矩阵-L6-先进","advanced_assemble_machine", 400)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:advancedcircuit>*2)
.addItemInput(<nae2:material:3>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<draconicevolution:draconic_core>*2)
.addItemInput(<plustic:osmiridiumingot>*4)
.addItemOutput(<novaeng_core:estorage_cell_item_64m>)
.build();

RecipeBuilder.newBuilder("ECO-流体存储矩阵-L6-先进","advanced_assemble_machine", 400)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:advancedcircuit>*2)
.addItemInput(<nae2:material:7>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<draconicevolution:draconic_core>*2)
.addItemInput(<plustic:osmiridiumingot>*4)
.addItemOutput(<novaeng_core:estorage_cell_fluid_64m>)
.build();

//亚尔夫海姆-尘世维度之门集成控制器
RecipeBuilder.newBuilder("亚尔夫海姆-尘世维度之门集成控制器-先进组装","advanced_assemble_machine", 2400)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*4000)
.addItemInput(<mekanism:machineblock3>*1)
.addItemInput(<modularmachinery:mana_fusion_controller>*4)
.addItemInput(<botania:alfheimportal>*4)
.addItemInput(<botania:bifrostperm>*64)
.addItemInput(<contenttweaker:mana_crystal3>)
.addItemInput(<appliedenergistics2:material:59>*4)
.addItemInput(<appliedenergistics2:material:34>*4)
.addItemOutput(<modularmachinery:alfheim_portal_factory_controller>)
.build();

//水晶矩阵立场控制矩阵
RecipeBuilder.newBuilder("水晶矩阵立场控制矩阵-先进组装","advanced_assemble_machine", 200)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:electrical_steel>*11664)
.addItemInput(<avaritia:resource:1>*4)
.addItemInput(<contenttweaker:mana_crystal2>*4)
.addItemInput(<tconevo:material>*8)
.addItemInput(<matteroverdrive:s_magnet>*16)
.addItemInput(<matteroverdrive:forcefield_emitter>*16)
.addItemOutput(<contenttweaker:crystalmatrixforcefieldcontrolblock>)
.build();

//洁净不锈钢机械方块
RecipeBuilder.newBuilder("洁净不锈钢机械方块2","advanced_assemble_machine", 200)
.addEnergyPerTickInput(8192)
.addItemInput(<contenttweaker:stainless_plate>*6)
.addItemInput(<contenttweaker:stainless_rod>*4)
.addItemOutput(<cregtech:cleanstainlesssteelmachinecasing>)
.build();

//钢制机械方块
RecipeBuilder.newBuilder("钢制机械方块2","advanced_assemble_machine", 200)
.addEnergyPerTickInput(4096)
.addItemInput(<thermalfoundation:material:352>*6)
.addItemInput(<immersiveengineering:material:2>*4)
.addItemOutput(<cregtech:steelmachingcasing>)
.build();

//化工厂MK1控制器
RecipeBuilder.newBuilder("化工厂MK1控制器1","advanced_assemble_machine", 1200)
.addEnergyPerTickInput(16384)
.addFluidInput(<liquid:lubricant>*64000)
.addItemInput(<modularmachinery:large_chemical_reactor_controller>*4)
.addItemInput(<nuclearcraft:chemical_reactor_idle>*4)
.addItemInput(<contenttweaker:advancedcircuit>*32)
.addItemOutput(<modularmachinery:chemical_factory_mk1_controller>)
.build();

//机器框架2
RecipeBuilder.newBuilder("机器框架2","advanced_assemble_machine", 600)
.addEnergyPerTickInput(4096)
.addItemInput(<embers:mech_core>)
.addItemInput(<immersiveengineering:metal_decoration0:4>*2)
.addItemInput(<modularmachinery:blockcasing>*4)
.addItemInput(<embers:ingot_dawnstone>*4)
.addItemInput(<thermalfoundation:material:291>*4)
.addItemOutput(<thermalexpansion:frame>*2)
.build();

//钢制机壳
RecipeBuilder.newBuilder("钢制机壳","advanced_assemble_machine",600)
.addEnergyPerTickInput(4096)
.addItemInput(<enderio:item_material:66>)
.addItemInput(<contenttweaker:crystal_2>)
.addItemInput(<contenttweaker:stainless_ingot>*8)
.addItemInput(<nuclearcraft:alloy:15>*8)
.addFluidInput(<liquid:refined_fuel> * 1000)
.addItemOutput(<mekanism:basicblock:8>)
.build();

//钢制机械零件2
RecipeBuilder.newBuilder("钢制机械零件2","advanced_assemble_machine", 20)
.addEnergyPerTickInput(4096)
.addItemInput(<immersiveengineering:material:8>)
.addItemInput(<thermalfoundation:material:352>*4)
.addItemOutput(<immersiveengineering:material:9>*2)
.build();

//大型柴油引擎控制器
RecipeBuilder.newBuilder("大型柴油引擎控制器","advanced_assemble_machine",1200)
.addEnergyPerTickInput(8192)
.addItemInput(<draconicevolution:draconic_core>*8)
.addItemInput(<thermalexpansion:frame:129>*8)
.addItemInput(<contenttweaker:advancedcircuit>*8)
.addFluidInput(<liquid:creosote>*64000)
.addItemOutput(<modularmachinery:combustion_engine_controller>)
.build();

//加速机控制器
RecipeBuilder.newBuilder("加速机控制器","advanced_assemble_machine",1200)
.addEnergyPerTickInput(8192)
.addItemInput(<draconicevolution:celestial_manipulator>)
.addItemInput(<contenttweaker:bat>*64)
.addItemInput(<appliedenergistics2:material:30>*64)
.addItemInput(<nuclearcraft:upgrade>*64)
.addItemInput(<modularrouters:upgrade:1>*64)
.addItemInput(<mekanism:speedupgrade>*64)
.addItemInput(<thermalexpansion:augment:128>*64)
.addItemOutput(<modularmachinery:speeder_controller>)
.build();

//灾厄之泉控制器
RecipeBuilder.newBuilder("灾厄之泉控制器","advanced_assemble_machine",1200)
.addEnergyPerTickInput(32768)
.addItemInput(<astralsorcery:blockbore>)
.addItemInput(<contenttweaker:epiccircuit>*16)
.addItemInput(<tconevo:metal:34>*16)
.addItemInput(<tconevo:metal:29>*16)
.addFluidInput(<liquid:lifeessence>*64000)
.addItemOutput(<modularmachinery:blood_controller>)
.build();

//工业机械臂控制器
RecipeBuilder.newBuilder("工业机械臂控制器","advanced_assemble_machine",1200)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:epiccircuit>*16)
.addItemInput(<immersiveengineering:metal_decoration0:3>*64)
.addItemInput(<immersiveengineering:metal_decoration0:4>*64)
.addItemInput(<immersiveengineering:metal_decoration0:5>*64)
.addFluidInput(<liquid:lubricant>*64000)
.addItemOutput(<modularmachinery:machine_arm_controller>)
.build();

//一阶科研基站控制器
RecipeBuilder.newBuilder("一阶科研基站控制器","advanced_assemble_machine",1200)
.addEnergyPerTickInput(16384)
.addItemInput(<mekanism:controlcircuit:1>*32)
.addItemInput(<contenttweaker:modularblock>*1)
.addItemInput(<contenttweaker:nova>*100)
.addItemOutput(<modularmachinery:research1_controller>)
.build();

//计算机控制器
RecipeBuilder.newBuilder("计算机控制器","advanced_assemble_machine",1200)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:epiccircuit>*32)
.addItemInput(<enderio:item_data_conduit>*128)
.addItemInput(<enderutilities:enderpart:50>*128)
.addItemInput(<contenttweaker:modularblock>*1)
.addFluidInput(<liquid:lubricant>*32000)
.addItemOutput(<modularmachinery:computer_controller>)
.build();

//简易机器框架
RecipeBuilder.newBuilder("简易机器框架2","advanced_assemble_machine",600)
.addEnergyPerTickInput(4096)
.addItemInput(<contenttweaker:resinmachineblock>)
.addItemInput(<contenttweaker:crystal_1>)
.addItemInput(<enderio:block_dark_iron_bars>*4)
.addItemInput(<thermalfoundation:material:324>*4)
.addItemOutput(<enderio:item_material>*2)
.build();

//轻型工程块
RecipeBuilder.newBuilder("轻型工程块2","advanced_assemble_machine", 200)
.addEnergyPerTickInput(2048)
.addItemInput(<immersiveengineering:stone_decoration:4>*2)
.addItemInput(<immersiveengineering:material:5>*2)
.addItemInput(<immersiveengineering:material:8>*2)
.addItemOutput(<immersiveengineering:metal_decoration0:4>*6)
.build();

//红石工程块
RecipeBuilder.newBuilder("红石工程块2","advanced_assemble_machine", 200)
.addEnergyPerTickInput(2048)
.addItemInput(<immersiveengineering:stone_decoration:4>*2)
.addItemInput(<minecraft:redstone>*12)
.addItemOutput(<immersiveengineering:metal_decoration0:3>*6)
.build();

//重型工程块
RecipeBuilder.newBuilder("重型工程块2","advanced_assemble_machine", 200)
.addEnergyPerTickInput(2048)
.addItemInput(<immersiveengineering:stone_decoration:4>*2)
.addItemInput(<immersiveengineering:metal_decoration0:4>*2)
.addItemInput(<immersiveengineering:material:9>*2)
.addItemOutput(<immersiveengineering:metal_decoration0:5>*6)
.build();

//空白模型
RecipeBuilder.newBuilder("空白模型","advanced_assemble_machine", 2400)
.addEnergyPerTickInput(4096)
.addItemInput(<contenttweaker:stainless_ingot>*16)
.addItemInput(<nuclearcraft:alloy:15>*16)
.addItemInput(<extendedcrafting:material:24>*4)
.addItemInput(<draconicevolution:draconic_core>*4)
.addItemInput(<mekanism:atomicalloy>*4)
.addItemInput(<mekanism:controlcircuit:1>*4)
.addFluidInput(<liquid:liquidlithium>*12000)
.addItemOutput(<deepmoblearning:data_model_blank>*4)
.build();

//精英电路基板1
RecipeBuilder.newBuilder("精英电路基板1","advanced_assemble_machine", 600)
.addEnergyPerTickInput(4096)
.addItemInput(<avaritia:resource:3>*8)
.addItemInput(<mekanism:polyethene:2>*8)
.addItemInput(<cregtech:meta.material>*8)
.addItemInput(<plustic:osmiridiumingot>*4)
.addFluidInput(<liquid:sulfuric_acid>*4000)
.addItemOutput(<contenttweaker:epiccircuitplate>*8)
.build();

RecipeBuilder.newBuilder("精英电路基板2","advanced_assemble_machine", 600)
.addEnergyPerTickInput(4096)
.addItemInput(<avaritia:resource:3>*8)
.addItemInput(<mekanism:polyethene:2>*8)
.addItemInput(<cregtech:meta.material>*8)
.addItemInput(<plustic:osmiridiumingot>*4)
.addFluidInput(<liquid:sulfuricacid>*4000)
.addItemOutput(<contenttweaker:epiccircuitplate>*8)
.build();

//精英集成电路
RecipeBuilder.newBuilder("精英集成电路1", "advanced_assemble_machine", 1200)
.addItemInput(<astralsorcery:itemcraftingcomponent:4>*8)
.addItemInput(<mekanism:controlcircuit:2>*4)
.addItemInput(<enderio:item_material:20>*16)
.addFluidInput(<liquid:boric_acid>*1000)
.addItemOutput(<contenttweaker:epiccircuit>*4)
.addEnergyPerTickInput(4096)
.build();

//小型电路组装机控制器
RecipeBuilder.newBuilder("小型电路组装机控制器", "advanced_assemble_machine", 3600)
.addItemInput(<contenttweaker:epiccircuit>*8)
.addItemInput(<avaritia:resource:4>*8)
.addItemInput(<mekanism:machineblock2:13>*4)
.addItemInput(<modularmachinery:mini_assemble_machine_controller>)
.addFluidInput(<liquid:tree_oil>*16000)
.addFluidInput(<liquid:sulfuric_acid>*16000)
.addItemOutput(<modularmachinery:mini_circuit_assembler_controller>)
.addEnergyPerTickInput(8192)
.build();

RecipeBuilder.newBuilder("小型电路组装机控制器2", "advanced_assemble_machine", 3600)
.addItemInput(<contenttweaker:epiccircuit>*8)
.addItemInput(<avaritia:resource:4>*8)
.addItemInput(<mekanism:machineblock2:13>*4)
.addItemInput(<modularmachinery:mini_assemble_machine_controller>)
.addFluidInput(<liquid:tree_oil>*16000)
.addFluidInput(<liquid:sulfuricacid>*16000)
.addItemOutput(<modularmachinery:mini_circuit_assembler_controller>)
.addEnergyPerTickInput(8192)
.build();

//中子汇聚装置控制器
RecipeBuilder.newBuilder("中子汇聚装置控制器", "advanced_assemble_machine", 3600)
.addItemInput(<contenttweaker:mastercircuit>*16)
.addItemInput(<avaritia:neutron_collector>*4)
.addItemInput(<contenttweaker:crystal_3>*4)
.addItemOutput(<modularmachinery:neutron_collector_controller>)
.addEnergyPerTickInput(8192)
.build();

//一阶火箭引擎
RecipeBuilder.newBuilder("一阶火箭引擎", "advanced_assemble_machine", 4200)
.addItemInput(<modularmachinery:combustion_engine_controller>*1)
.addItemInput(<modularmachinery:blockfluidinputhatch>*2)
.addItemInput(<modularmachinery:blockcasing:1>*8)
.addItemInput(<modularmachinery:blockcasing:3>*2)
.addItemInput(<modularmachinery:blockcasing:0>*22)
.addItemOutput(<galacticraftcore:engine>)
.addEnergyPerTickInput(8192)
.build();

//一阶火箭
RecipeBuilder.newBuilder("一阶火箭", "advanced_assemble_machine", 6000)
.addItemInput(<galacticraftcore:nose_cone>*1)
.addItemInput(<galacticraftcore:heavy_plating>*12)
.addItemInput(<galacticraftcore:engine>*2)
.addItemInput(<galacticraftcore:engine:1>*4)
.addItemInput(<galacticraftcore:rocket_fins>*4)
.addItemInput(<appliedenergistics2:controller>*1)
.addItemInput(<contenttweaker:epiccircuit>*4)
.addFluidInput(<liquid:cryotheum>*8000)
.addItemOutput(<galacticraftcore:rocket_t1>*1)
.addEnergyPerTickInput(16384)
.build();

RecipeBuilder.newBuilder("钛机械方块2","advanced_assemble_machine", 200)
.addEnergyPerTickInput(8196)
.addItemInput(<contenttweaker:titanium_plate>*6)
.addItemInput(<contenttweaker:titanium_rod>*4)
.addItemOutput(<cregtech:titanium_metal_casing>)
.build();

//========================================中子汇聚装置========================================
RecipeBuilder.newBuilder("中子汇聚","neutron_collector",6000)
.addItemOutput(<avaritia:resource:4>)
.build();

//========================================大型中子汇聚装置========================================
RecipeBuilder.newBuilder("中子汇聚2","large_neutron_collector",1200)
.addItemInput(<avaritia:resource:4>).setChance(0)
.addItemOutput(<avaritia:resource:4>)
.addItemOutput(<avaritia:resource:4>).setChance(0.5)
.build();

RecipeBuilder.newBuilder("中子汇聚3","large_neutron_collector",100)
.addFluidInput(<liquid:neutron> * 800)
.addItemOutput(<avaritia:resource:4>*2)
.addItemOutput(<avaritia:resource:4>*2).setChance(0.5)
.build();

//========================================魔力凝聚器========================================
RecipeBuilder.newBuilder("产魔2级","mana_creation",100)
.addItemInput(<contenttweaker:mana_crystal2>*1).setChance(0.2)
.addItemInput(<contenttweaker:crystal_flower>*1).setChance(0)
.addManaOutput(240000)
.build();

RecipeBuilder.newBuilder("产魔3级","mana_creation",100)
.addItemInput(<contenttweaker:mana_crystal3>*1).setChance(0.1)
.addItemInput(<contenttweaker:crystal_flower>*1).setChance(0)
.addManaOutput(800000)
.build();

RecipeBuilder.newBuilder("产魔蒲公英","mana_creation",100)
.addItemInput(<botania:specialflower>.withTag({type: "asgardandelion"})*1).setChance(0)
.addManaOutput(800000)
.build();

RecipeBuilder.newBuilder("产魔中子","mana_creation",30)
.addItemInput(<avaritia:resource:4>*1)
.addManaOutput(150000)
.build();

//========================================魔力聚合装置========================================
//蕴魔水晶
RecipeBuilder.newBuilder("一级蕴魔水晶","mana_fusion",100)
.addItemInput(<astralsorcery:itemcraftingcomponent:4>*1)
.addManaInput(80000)
.addItemOutput(<contenttweaker:mana_crystal1>)
.build();

RecipeBuilder.newBuilder("二级蕴魔水晶","mana_fusion",200)
.addItemInput(<contenttweaker:mana_crystal1>*2)
.addItemInput(<nuclearcraft:compound:1>*4)
.addManaInput(300000)
.addItemOutput(<contenttweaker:mana_crystal2>)
.build();

RecipeBuilder.newBuilder("三级蕴魔水晶","mana_fusion",300)
.addItemInput(<contenttweaker:mana_crystal2>*2)
.addItemInput(<avaritia:resource:4>*4)
.addItemInput(<nuclearcraft:compound:1>*8)
.addManaInput(800000)
.addItemOutput(<contenttweaker:mana_crystal3>)
.build();

RecipeBuilder.newBuilder("三级蕴魔水晶","mana_fusion",300)
.addItemInput(<contenttweaker:soulgem>*2)
.addItemInput(<avaritia:resource:4>*2)
.addItemInput(<nuclearcraft:compound:1>*2)
.addManaInput(500000)
.addItemOutput(<contenttweaker:mana_crystal3>)
.build();

//骷髅头
RecipeBuilder.newBuilder("骷髅头","mana_fusion",300)
.addItemInput(<minecraft:bone_block>*5)
.addItemInput(<minecraft:bone>*4)
.addManaInput(300000)
.addItemOutput(<minecraft:skull>)
.build();

//魔力曲奇
RecipeBuilder.newBuilder("魔力曲奇", "mana_fusion", 20)
.addManaInput(160000)
.addItemInput(<minecraft:cookie>*8)
.addItemOutput(<botania:manacookie>*8)
.build();

//锻造石板
RecipeBuilder.newBuilder("锻造石板", "mana_fusion", 20)
.addManaInput(32000)
.addItemInput(<bloodmagic:slate:1>*8)
.addItemOutput(<contenttweaker:forgeplate>*8)
.build();

//活木
RecipeBuilder.newBuilder("活木", "mana_fusion", 600)
.addItemInput(<ore:logWood>*32)
.addItemInput(<botania:specialflower>.withTag({type: "puredaisy"})*4).setChance(0)
.addItemOutput(<botania:livingwood>*32)
.build();

//活石
RecipeBuilder.newBuilder("活石", "mana_fusion", 600)
.addItemInput(<astralsorcery:blockmarble>*32)
.addItemInput(<botania:specialflower>.withTag({type: "puredaisy"})*4).setChance(0)
.addItemOutput(<botania:livingrock>*32)
.build();

//共振宝石1
RecipeBuilder.newBuilder("共振宝石1", "mana_fusion", 100)
.addItemInput(<contenttweaker:aquamarine_essence>)
.addManaInput(20000)
.addItemOutput(<astralsorcery:itemcraftingcomponent:4>)
.build();

//共振宝石2
RecipeBuilder.newBuilder("共振宝石2", "mana_fusion", 100)
.addItemInput(<astralsorcery:itemcraftingcomponent>*4)
.addManaInput(80000)
.addItemOutput(<astralsorcery:itemcraftingcomponent:4>)
.build();

//魔力尘
RecipeBuilder.newBuilder("魔力尘", "mana_fusion", 20)
.addItemInput(<minecraft:gunpowder>*32)
.addManaInput(16000)
.addItemOutput(<botania:manaresource:23>*32)
.build();

RecipeBuilder.newBuilder("魔力尘2", "mana_fusion", 20)
.addItemInput(<minecraft:redstone>*32)
.addManaInput(16000)
.addItemOutput(<botania:manaresource:23>*32)
.build();

RecipeBuilder.newBuilder("魔力尘3", "mana_fusion", 20)
.addItemInput(<minecraft:glowstone_dust>*32)
.addManaInput(16000)
.addItemOutput(<botania:manaresource:23>*32)
.build();

var dust as IItemStack[]=[
<botania:dye>,
<botania:dye:1>,
<botania:dye:2>,
<botania:dye:3>,
<botania:dye:4>,
<botania:dye:5>,
<botania:dye:6>,
<botania:dye:7>,
<botania:dye:8>,
<botania:dye:9>,
<botania:dye:10>,
<botania:dye:11>,
<botania:dye:12>,
<botania:dye:13>,
<botania:dye:14>,
<botania:dye:15>
];  
for item in dust
{
RecipeBuilder.newBuilder("魔力尘4", "mana_fusion", 20)
.addItemInput( item * 32)
.addManaInput(16000)
.addItemOutput(<botania:manaresource:23>*32)
.build();
}


RecipeBuilder.newBuilder("魔力尘5", "mana_fusion", 20)
.addItemInput(<minecraft:gunpowder>*32)
.addManaInput(16000)
.addItemOutput(<botania:manaresource:23>*32)
.build();
//魔力钢锭
RecipeBuilder.newBuilder("魔力钢锭", "mana_fusion", 20)
.addItemInput(<thermalfoundation:material:160>*32)
.addManaInput(96000)
.addItemOutput(<botania:manaresource:0>*32)
.build();

//魔力珍珠
RecipeBuilder.newBuilder("魔力珍珠", "mana_fusion", 20)
.addItemInput(<minecraft:ender_pearl>*32)
.addManaInput(192000)
.addItemOutput(<botania:manaresource:1>*32)
.build();

//魔力钻石
RecipeBuilder.newBuilder("魔力钻石", "mana_fusion", 20)
.addItemInput(<minecraft:diamond>*32)
.addManaInput(320000)
.addItemOutput(<botania:manaresource:2>*32)
.build();

//源质钢锭
RecipeBuilder.newBuilder("源质钢锭", "mana_fusion", 20)
.addItemInput(<botania:pylon:1>*2).setChance(0)
.addItemInput(<botania:manaresource:0>*32)
.addManaInput(8000)
.addItemOutput(<botania:manaresource:7>*16)
.build();

//精灵尘
RecipeBuilder.newBuilder("精灵尘", "mana_fusion", 20)
.addItemInput(<botania:pylon:1>*2).setChance(0)
.addItemInput(<botania:manaresource:1>*32)
.addManaInput(16000)
.addItemOutput(<botania:manaresource:8>*32)
.build();

//龙石
RecipeBuilder.newBuilder("龙石", "mana_fusion", 20)
.addItemInput(<botania:pylon:1>*2).setChance(0)
.addItemInput(<botania:manaresource:2>*32)
.addManaInput(16000)
.addItemOutput(<botania:manaresource:9>*32)
.build();

//梦之木
RecipeBuilder.newBuilder("梦之木", "mana_fusion", 20)
.addItemInput(<botania:pylon:1>*2).setChance(0)
.addItemInput(<botania:livingwood>*32)
.addManaInput(16000)
.addItemOutput(<botania:dreamwood>*32)
.build();

//魔力玻璃
RecipeBuilder.newBuilder("魔力玻璃", "mana_fusion", 20)
.addItemInput(<minecraft:glass>*32)
.addManaInput(4800)
.addItemOutput(<botania:managlass>*32)
.build();

//增强末影合金
RecipeBuilder.newBuilder("增强末影合金", "mana_fusion", 400)
.addItemInput(<enderutilities:enderpart:0>*8)
.addManaInput(160000)
.addItemOutput(<enderutilities:enderpart:1>*8)
.build();

//精灵玻璃
RecipeBuilder.newBuilder("精灵玻璃", "mana_fusion", 20)
.addItemInput(<botania:pylon:1>*2).setChance(0)
.addItemInput(<botania:managlass>*32)
.addManaInput(16000)
.addItemOutput(<botania:elfglass>*32)
.build();

//泰拉钢锭
RecipeBuilder.newBuilder("泰拉钢锭", "mana_fusion", 20)
.addItemInput(<botania:manaresource:0>)
.addItemInput(<botania:manaresource:1>)
.addItemInput(<botania:manaresource:2>)
.addManaInput(500000)
.addItemOutput(<botania:manaresource:4>*1)
.build();

//光子锭
RecipeBuilder.newBuilder("光子锭", "mana_fusion", 20)
.addItemInput(<botania:manaresource:7>)
.addItemInput(<extrabotany:material>*3)
.addItemInput(<extrabotany:gildedmashedpotato>)
.addManaInput(4000)
.addItemOutput(<extrabotany:material:8>*1)
.build();

//暗影锭
RecipeBuilder.newBuilder("暗影锭", "mana_fusion", 20)
.addItemInput(<botania:manaresource:7>)
.addItemInput(<extrabotany:nightmarefuel>*3)
.addItemInput(<extrabotany:gildedmashedpotato>)
.addManaInput(4000)
.addItemOutput(<extrabotany:material:5>*1)
.build();

//奥利哈钢锭
RecipeBuilder.newBuilder("奥利哈钢锭", "mana_fusion", 20)
.addItemInput(<botania:manaresource:5>*4)
.addItemInput(<botania:manaresource:14>*2)
.addItemInput(<extrabotany:material:3>)
.addItemInput(<extrabotany:gildedmashedpotato>)
.addManaInput(1000000)
.addItemOutput(<extrabotany:material:1>*1)
.build();

//梦魇燃料
RecipeBuilder.newBuilder("梦魇燃料", "mana_fusion", 20)
.addItemInput(<minecraft:coal>*32)
.addManaInput(64000)
.addItemOutput(<extrabotany:nightmarefuel>*32)
.build();

//精神碎片
RecipeBuilder.newBuilder("精神碎片", "mana_fusion", 20)
.addItemInput(<extrabotany:ultimatehammer>).setChance(0)
.addItemInput(<extrabotany:nightmarefuel>*32)
.addManaInput(100000)
.addItemOutput(<extrabotany:material>*32)
.build();

//镀金土豆泥
RecipeBuilder.newBuilder("镀金土豆泥", "mana_fusion", 20)
.addItemInput(<extrabotany:ultimatehammer>).setChance(0)
.addItemInput(<minecraft:gold_nugget>*32)
.addItemInput(<minecraft:potato>*32)
.addManaInput(200000)
.addItemOutput(<extrabotany:gildedmashedpotato>*32)
.build();

//======================================小型电路组装机======================================
//基础集成电路
RecipeBuilder.newBuilder("基础集成电路2", "mini_circuit_assembler", 200)
.addItemInput(<extendedcrafting:material:8>*8)
.addItemInput(<contenttweaker:compressedresinplate>*8)
.addItemInput(<immersiveengineering:material:27>*8)
.addFluidInput(<liquid:sulfuric_acid>*1000)
.addItemOutput(<contenttweaker:basiccircuit>*8)
.addEnergyPerTickInput(2048)
.build();

//基础集成电路
RecipeBuilder.newBuilder("基础集成电路2.1", "mini_circuit_assembler", 200)
.addItemInput(<extendedcrafting:material:8>*8)
.addItemInput(<contenttweaker:compressedresinplate>*8)
.addItemInput(<immersiveengineering:material:27>*8)
.addFluidInput(<liquid:sulfuricacid>*1000)
.addItemOutput(<contenttweaker:basiccircuit>*8)
.addEnergyPerTickInput(2048)
.build();

//进阶集成电路
RecipeBuilder.newBuilder("进阶集成电路2", "mini_circuit_assembler", 200)
.addItemInput(<contenttweaker:advancedcircuitplate>*4)
.addItemInput(<extendedcrafting:material:9>*4)
.addItemInput(<immersiveengineering:material:27>*4)
.addItemInput(<plustic:osmiridiumingot>*8)
.addFluidInput(<liquid:sulfuric_acid>*1000)
.addItemOutput(<contenttweaker:advancedcircuit>*4)
.addEnergyPerTickInput(4096)
.build();

RecipeBuilder.newBuilder("进阶集成电路2.1", "mini_circuit_assembler", 200)
.addItemInput(<contenttweaker:advancedcircuitplate>*4)
.addItemInput(<extendedcrafting:material:9>*4)
.addItemInput(<immersiveengineering:material:27>*4)
.addItemInput(<plustic:osmiridiumingot>*8)
.addFluidInput(<liquid:sulfuricacid>*1000)
.addItemOutput(<contenttweaker:advancedcircuit>*4)
.addEnergyPerTickInput(4096)
.build();

//精英集成电路
RecipeBuilder.newBuilder("精英集成电路2", "mini_circuit_assembler", 400)
.addItemInput(<astralsorcery:itemcraftingcomponent:4>*8)
.addItemInput(<contenttweaker:epiccircuitplate>*4)
.addItemInput(<enderio:item_material:20>*16)
.addFluidInput(<liquid:boric_acid>*1000)
.addItemOutput(<contenttweaker:epiccircuit>*4)
.addEnergyPerTickInput(4096)
.build();

//终极控制电路
RecipeBuilder.newBuilder("终极控制电路1.1", "mini_circuit_assembler", 600)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<mekanism:atomicalloy>*16)
.addItemInput(<mekanism:controlcircuit:2>*4)
.addItemInput(<contenttweaker:epiccircuit>*4)
.addItemInput(<environmentaltech:pladium_crystal>*8)
.addFluidInput(<liquid:nak>*1440)
.addItemOutput(<mekanism:controlcircuit:3>*8)
.addEnergyPerTickInput(4096)
.build();

RecipeBuilder.newBuilder("终极控制电路1.2", "mini_circuit_assembler", 600)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<mekanism:atomicalloy>*16)
.addItemInput(<mekanism:controlcircuit:2>*4)
.addItemInput(<contenttweaker:epiccircuit>*4)
.addItemInput(<environmentaltech:pladium_crystal>*8)
.addFluidInput(<liquid:nak>*1440)
.addItemOutput(<mekanism:controlcircuit:3>*8)
.addEnergyPerTickInput(4096)
.build();

RecipeBuilder.newBuilder("终极控制电路1.3", "mini_circuit_assembler", 600)
.addItemInput(<contenttweaker:circuit3>).setChance(0)
.addItemInput(<mekanism:atomicalloy>*16)
.addItemInput(<mekanism:controlcircuit:2>*4)
.addItemInput(<contenttweaker:epiccircuit>*4)
.addItemInput(<environmentaltech:pladium_crystal>*8)
.addFluidInput(<liquid:nak>*1440)
.addItemOutput(<mekanism:controlcircuit:3>*8)
.addEnergyPerTickInput(4096)
.build();

//大师集成电路
RecipeBuilder.newBuilder("大师集成电路1.1", "mini_circuit_assembler", 1200)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<contenttweaker:mastercircuitplate>*2)
.addItemInput(<mekanism:controlcircuit:3>*2)
.addItemInput(<enderio:item_capacitor_stellar>*4)
.addItemInput(<environmentaltech:pladium_crystal>*16)
.addItemInput(<minecraft:glass>*32)
.addFluidInput(<liquid:hydrofluoric_acid>*4000)
.addItemOutput(<contenttweaker:mastercircuit>*4)
.addEnergyPerTickInput(8192)
.build();

RecipeBuilder.newBuilder("大师集成电路1.2", "mini_circuit_assembler", 1200)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<contenttweaker:mastercircuitplate>*2)
.addItemInput(<mekanism:controlcircuit:3>*2)
.addItemInput(<enderio:item_capacitor_stellar>*4)
.addItemInput(<environmentaltech:pladium_crystal>*16)
.addItemInput(<minecraft:glass>*32)
.addFluidInput(<liquid:hydrofluoric_acid>*4000)
.addItemOutput(<contenttweaker:mastercircuit>*4)
.addEnergyPerTickInput(8192)
.build();

RecipeBuilder.newBuilder("大师集成电路1.3", "mini_circuit_assembler", 1200)
.addItemInput(<contenttweaker:circuit3>).setChance(0)
.addItemInput(<contenttweaker:mastercircuitplate>*2)
.addItemInput(<mekanism:controlcircuit:3>*2)
.addItemInput(<enderio:item_capacitor_stellar>*4)
.addItemInput(<environmentaltech:pladium_crystal>*16)
.addItemInput(<minecraft:glass>*32)
.addFluidInput(<liquid:hydrofluoric_acid>*4000)
.addItemOutput(<contenttweaker:mastercircuit>*4)
.addEnergyPerTickInput(8192)
.build();

//======================================计算机======================================
//科研点1
RecipeBuilder.newBuilder("科研点1", "computer", 2400)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:basiccircuit>)
.addFluidInput(<liquid:liquidhelium>*100)
.addItemOutput(<contenttweaker:nova>*3).setChance(0.5)
.build();

//科研点2
RecipeBuilder.newBuilder("科研点2", "computer", 1800)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:advancedcircuit>).setChance(0.5)
.addFluidInput(<liquid:liquidhelium>*200)
.addItemOutput(<contenttweaker:nova>*3)
.build();

//科研点3
RecipeBuilder.newBuilder("科研点3", "computer", 1200)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:epiccircuit>).setChance(0.25)
.addFluidInput(<liquid:liquidhelium>*600)
.addItemOutput(<contenttweaker:nova>*7)
.build();

//科研点4
RecipeBuilder.newBuilder("科研点4", "computer", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:mastercircuit>).setChance(0.2)
.addFluidInput(<liquid:liquidhelium>*1600)
.addItemOutput(<contenttweaker:nova>*16)
.build();

//======================================并行计算机======================================
MachineModifier.setMaxParallelism("parallel_computer", 8);
//科研点1
RecipeBuilder.newBuilder("科研点1.1", "parallel_computer", 2400)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:basiccircuit>)
.addFluidInput(<liquid:liquidhelium>*100)
.addItemOutput(<contenttweaker:nova>*3).setChance(0.5)
.build();

//科研点2
RecipeBuilder.newBuilder("科研点2.1", "parallel_computer", 1800)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:advancedcircuit>).setChance(0.5)
.addFluidInput(<liquid:liquidhelium>*200)
.addItemOutput(<contenttweaker:nova>*3)
.build();

//科研点3
RecipeBuilder.newBuilder("科研点3.1", "parallel_computer", 1200)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:epiccircuit>).setChance(0.25)
.addFluidInput(<liquid:liquidhelium>*600)
.addItemOutput(<contenttweaker:nova>*7)
.build();

//科研点4
RecipeBuilder.newBuilder("科研点4.1", "parallel_computer", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:mastercircuit>).setChance(0.2)
.addFluidInput(<liquid:liquidhelium>*1600)
.addItemOutput(<contenttweaker:nova>*16)
.build();

//======================================科研站======================================
//装配精通
RecipeBuilder.newBuilder("装配精通1", "research1", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*60)
.addItemInput(<embers:mech_core>*32)
.addItemInput(<thermalexpansion:frame>*32)
.addItemOutput(<contenttweaker:assemble1>)
.build();

RecipeBuilder.newBuilder("装配精通1.2", "research2", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*50)
.addItemInput(<embers:mech_core>*32)
.addItemInput(<thermalexpansion:frame>*32)
.addItemOutput(<contenttweaker:assemble1>)
.build();

RecipeBuilder.newBuilder("装配精通1.3", "research3", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*40)
.addItemInput(<embers:mech_core>*32)
.addItemInput(<thermalexpansion:frame>*32)
.addItemOutput(<contenttweaker:assemble1>)
.build();

RecipeBuilder.newBuilder("装配精通2", "research2", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:nova2>*200)
.addItemInput(<nuclearcraft:part:10>*48)
.addItemInput(<enderio:item_material>*48)
.addItemOutput(<contenttweaker:assemble2>)
.build();

RecipeBuilder.newBuilder("装配精通2.2", "research3", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:nova2>*180)
.addItemInput(<nuclearcraft:part:10>*48)
.addItemInput(<enderio:item_material>*48)
.addItemOutput(<contenttweaker:assemble2>)
.build();

RecipeBuilder.newBuilder("装配精通3", "research3", 600)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addItemInput(<contenttweaker:nova2>*768)
.addItemInput(<nuclearcraft:part:12>*64)
.addItemInput(<mekanism:basicblock:8>*64)
.addItemOutput(<contenttweaker:assemble3>)
.build();

//产物保护
RecipeBuilder.newBuilder("产物保护1", "research1", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*60)
.addItemInput(<minecraft:shield>)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemOutput(<contenttweaker:protect1>)
.build();

RecipeBuilder.newBuilder("产物保护1.2", "research2", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*60)
.addItemInput(<minecraft:shield>)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemOutput(<contenttweaker:protect1>)
.build();

RecipeBuilder.newBuilder("产物保护1.3", "research3", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*50)
.addItemInput(<minecraft:shield>)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemOutput(<contenttweaker:protect1>)
.build();

RecipeBuilder.newBuilder("产物保护2", "research2", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:nova2>*200)
.addItemInput(<minecraft:shield>)
.addItemInput(<contenttweaker:protect1>).setChance(0)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addItemOutput(<contenttweaker:protect2>)
.build();

RecipeBuilder.newBuilder("产物保护2.2", "research3", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:nova2>*180)
.addItemInput(<minecraft:shield>)
.addItemInput(<contenttweaker:protect1>).setChance(0)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addItemOutput(<contenttweaker:protect2>)
.build();

RecipeBuilder.newBuilder("产物保护3", "research3", 600)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:nova2>*768)
.addItemInput(<minecraft:shield>)
.addItemInput(<contenttweaker:protect2>).setChance(0)
.addItemInput(<contenttweaker:circuit3>).setChance(0)
.addItemInput(<contenttweaker:assemble3>).setChance(0)
.addItemOutput(<contenttweaker:protect3>)
.build();

//电路专精
RecipeBuilder.newBuilder("电路专精1", "research1", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*60)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:basiccircuit>*64)
.addItemInput(<contenttweaker:advancedcircuit>*64)
.addItemOutput(<contenttweaker:circuit1>)
.build();

RecipeBuilder.newBuilder("电路专精1.2", "research2", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*50)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:basiccircuit>*64)
.addItemInput(<contenttweaker:advancedcircuit>*64)
.addItemOutput(<contenttweaker:circuit1>)
.build();

RecipeBuilder.newBuilder("电路专精1.3", "research3", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*40)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:basiccircuit>*64)
.addItemInput(<contenttweaker:advancedcircuit>*64)
.addItemOutput(<contenttweaker:circuit1>)
.build();

RecipeBuilder.newBuilder("电路专精2", "research2", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*200)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<mekanism:controlcircuit:1>*64)
.addItemInput(<mekanism:controlcircuit:2>*64)
.addItemInput(<contenttweaker:epiccircuit>*64)
.addItemOutput(<contenttweaker:circuit2>)
.build();

RecipeBuilder.newBuilder("电路专精2.2", "research3", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*180)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<mekanism:controlcircuit:1>*64)
.addItemInput(<mekanism:controlcircuit:2>*64)
.addItemInput(<contenttweaker:epiccircuit>*64)
.addItemOutput(<contenttweaker:circuit2>)
.build();

RecipeBuilder.newBuilder("电路专精3", "research3", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:nova2>*768)
.addItemInput(<contenttweaker:assemble3>).setChance(0)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<mekanism:controlcircuit:3>*64)
.addItemInput(<contenttweaker:mastercircuit>*64)
.addItemOutput(<contenttweaker:circuit3>)
.build();

//研究专长
RecipeBuilder.newBuilder("研究专长1", "research1", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:nova2>*200)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<contenttweaker:protect1>).setChance(0)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<contenttweaker:dig1>).setChance(0)
.addItemOutput(<contenttweaker:tech1>)
.build();

RecipeBuilder.newBuilder("研究专长2", "research2", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:nova2>*180)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<contenttweaker:protect1>).setChance(0)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<contenttweaker:dig1>).setChance(0)
.addItemOutput(<contenttweaker:tech1>)
.build();

RecipeBuilder.newBuilder("研究专长3", "research3", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:nova2>*160)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<contenttweaker:protect1>).setChance(0)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<contenttweaker:dig1>).setChance(0)
.addItemOutput(<contenttweaker:tech1>)
.build();

//研究精通
RecipeBuilder.newBuilder("研究精通1", "research2", 600)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:nova2>*400)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<contenttweaker:protect2>).setChance(0)
.addItemInput(<contenttweaker:furance2>).setChance(0)
.addItemInput(<contenttweaker:dig2>).setChance(0)
.addItemInput(<contenttweaker:tech1>).setChance(0)
.addItemOutput(<contenttweaker:tech2>)
.build();

RecipeBuilder.newBuilder("研究精通2", "research3", 600)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:nova2>*360)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<contenttweaker:protect2>).setChance(0)
.addItemInput(<contenttweaker:furance2>).setChance(0)
.addItemInput(<contenttweaker:dig2>).setChance(0)
.addItemInput(<contenttweaker:tech1>).setChance(0)
.addItemOutput(<contenttweaker:tech2>)
.build();

//量子学说
RecipeBuilder.newBuilder("量子学说", "research3", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:nova2>*768)
.addItemInput(<contenttweaker:magicalingot>*16)
.addItemInput(<contenttweaker:circuit3>).setChance(0)
.addItemInput(<contenttweaker:protect3>).setChance(0)
.addItemInput(<contenttweaker:furance3>).setChance(0)
.addItemInput(<contenttweaker:dig3>).setChance(0)
.addItemInput(<contenttweaker:tech2>).setChance(0)
.addItemOutput(<contenttweaker:tech3>)
.build();

//熔炼加速
RecipeBuilder.newBuilder("熔炼加速1.1", "research1", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:furnace>*64)
.addItemInput(<contenttweaker:nova2>*60)
.addItemOutput(<contenttweaker:furance1>)
.build();

RecipeBuilder.newBuilder("熔炼加速1.2", "research2", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:furnace>*64)
.addItemInput(<contenttweaker:nova2>*50)
.addItemOutput(<contenttweaker:furance1>)
.build();

RecipeBuilder.newBuilder("熔炼加速1.3", "research3", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:furnace>*64)
.addItemInput(<contenttweaker:nova2>*40)
.addItemOutput(<contenttweaker:furance1>)
.build();

RecipeBuilder.newBuilder("熔炼加速2.1", "research2", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<enderutilities:machine_0>*64)
.addItemInput(<contenttweaker:nova2>*200)
.addItemOutput(<contenttweaker:furance2>)
.build();

RecipeBuilder.newBuilder("熔炼加速2.2", "research3", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<enderutilities:machine_0>*64)
.addItemInput(<contenttweaker:nova2>*180)
.addItemOutput(<contenttweaker:furance2>)
.build();

RecipeBuilder.newBuilder("熔炼加速3", "research3", 600)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:furance2>).setChance(0)
.addItemInput(<nuclearcraft:nuclear_furnace_idle>*64)
.addItemInput(<contenttweaker:nova2>*768)
.addItemOutput(<contenttweaker:furance3>)
.build();

//挖掘升级
RecipeBuilder.newBuilder("挖掘升级1.1", "research1", 1200)
.addEnergyPerTickInput(16384)
.addItemInput(<environmentaltech:litherite>*64)
.addItemInput(<contenttweaker:nova2>*60)
.addItemOutput(<contenttweaker:dig1>)
.build();

RecipeBuilder.newBuilder("挖掘升级1.2", "research2", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<environmentaltech:litherite>*64)
.addItemInput(<contenttweaker:nova2>*50)
.addItemOutput(<contenttweaker:dig1>)
.build();

RecipeBuilder.newBuilder("挖掘升级1.3", "research3", 600)
.addEnergyPerTickInput(16384)
.addItemInput(<environmentaltech:litherite>*64)
.addItemInput(<contenttweaker:nova2>*40)
.addItemOutput(<contenttweaker:dig1>)
.build();

RecipeBuilder.newBuilder("挖掘升级2.1", "research2", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:dig1>).setChance(0)
.addItemInput(<environmentaltech:erodium>*64)
.addItemInput(<contenttweaker:nova2>*200)
.addItemOutput(<contenttweaker:dig2>)
.build();

RecipeBuilder.newBuilder("挖掘升级2.2", "research3", 600)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:dig1>).setChance(0)
.addItemInput(<environmentaltech:erodium>*64)
.addItemInput(<contenttweaker:nova2>*180)
.addItemOutput(<contenttweaker:dig2>)
.build();

RecipeBuilder.newBuilder("挖掘升级3", "research3", 600)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:dig2>).setChance(0)
.addItemInput(<environmentaltech:kyronite>*64)
.addItemInput(<environmentaltech:pladium>*64)
.addItemInput(<contenttweaker:nova2>*768)
.addItemOutput(<contenttweaker:dig3>)
.build();

//========================================土高炉========================================
//钢
RecipeBuilder.newBuilder("钢-1", "primitive_blast_furnace", 400)
.addItemInput(<minecraft:iron_ingot>*1)
.addItemInput(<minecraft:coal:*>*2)
.addItemOutput(<thermalfoundation:material:160>*1)
.build();

RecipeBuilder.newBuilder("钢-0.5", "primitive_blast_furnace", 400)
.addItemInput(<minecraft:iron_ingot>*1)
.addItemInput(<immersiveengineering:material:6>*1)
.addItemOutput(<thermalfoundation:material:160>*1)
.build();

//======================================聚爆压缩机======================================
RecipeBuilder.newBuilder("中子粒1", "implosion_compressor", 1)
.addItemInput(<avaritia:resource:2>*18)
.addItemInput(<minecraft:tnt>*4)
.addItemOutput(<avaritia:resource:3>*2)
.build();

RecipeBuilder.newBuilder("中子粒2", "implosion_compressor", 1)
.addItemInput(<avaritia:resource:2>*18)
.addItemInput(<contenttweaker:tnt1>)
.addItemOutput(<avaritia:resource:3>*2)
.build();

RecipeBuilder.newBuilder("中子锭1", "implosion_compressor", 1)
.addItemInput(<avaritia:resource:3>*9)
.addItemInput(<minecraft:tnt>*4)
.addItemOutput(<avaritia:resource:4>*1)
.build();

RecipeBuilder.newBuilder("中子锭2", "implosion_compressor", 1)
.addItemInput(<avaritia:resource:3>*9)
.addItemInput(<contenttweaker:tnt1>)
.addItemOutput(<avaritia:resource:4>*1)
.build();

RecipeBuilder.newBuilder("永恒奇点1", "implosion_compressor", 1)
.addItemInput(<avaritia:singularity>)
.addItemInput(<avaritia:singularity:1>)
.addItemInput(<avaritia:singularity:2>)
.addItemInput(<avaritia:singularity:3>)
.addItemInput(<avaritia:singularity:4>)
.addItemInput(<avaritia:singularity:5>)
.addItemInput(<avaritia:singularity:6>)
.addItemInput(<avaritia:singularity:7>)
.addItemInput(<avaritia:singularity:8>)
.addItemInput(<avaritia:singularity:9>)
.addItemInput(<avaritia:singularity:10>)
.addItemInput(<avaritia:singularity:11>)
.addItemInput(<avaritia:singularity:13>)
.addItemInput(<avaritia:singularity:14>)
.addItemInput(<minecraft:tnt>*64)
.addItemOutput(<eternalsingularity:eternal_singularity>*1)
.build();

RecipeBuilder.newBuilder("永恒奇点2", "implosion_compressor", 1)
.addItemInput(<avaritia:singularity>)
.addItemInput(<avaritia:singularity:1>)
.addItemInput(<avaritia:singularity:2>)
.addItemInput(<avaritia:singularity:3>)
.addItemInput(<avaritia:singularity:4>)
.addItemInput(<avaritia:singularity:5>)
.addItemInput(<avaritia:singularity:6>)
.addItemInput(<avaritia:singularity:7>)
.addItemInput(<avaritia:singularity:8>)
.addItemInput(<avaritia:singularity:9>)
.addItemInput(<avaritia:singularity:10>)
.addItemInput(<avaritia:singularity:11>)
.addItemInput(<avaritia:singularity:13>)
.addItemInput(<avaritia:singularity:14>)
.addItemInput(<contenttweaker:tnt1>*16)
.addItemOutput(<eternalsingularity:eternal_singularity>*1)
.build();

RecipeBuilder.newBuilder("高级板1", "implosion_compressor", 1)
.addItemInput(<contenttweaker:stainless_ingot>*8)
.addItemInput(<nuclearcraft:alloy:1>*8)
.addItemInput(<minecraft:diamond>*2)
.addItemInput(<minecraft:tnt>*4)
.addItemOutput(<nuclearcraft:part:1>*2)
.build();

RecipeBuilder.newBuilder("高级板2", "implosion_compressor", 1)
.addItemInput(<contenttweaker:stainless_ingot>*8)
.addItemInput(<nuclearcraft:alloy:1>*8)
.addItemInput(<minecraft:diamond>*2)
.addItemInput(<contenttweaker:tnt1>*1)
.addItemOutput(<nuclearcraft:part:1>*2)
.build();

RecipeBuilder.newBuilder("无尽锭1", "implosion_compressor", 1)
.addItemInput(<avaritia:resource:4>*24)
.addItemInput(<avaritia:resource:1>*10)
.addItemInput(<avaritia:resource:5>*11)
.addItemInput(<minecraft:tnt>*64)
.addItemOutput(<avaritia:resource:6>*1)
.build();

RecipeBuilder.newBuilder("无尽锭2", "implosion_compressor", 1)
.addItemInput(<avaritia:resource:4>*24)
.addItemInput(<avaritia:resource:1>*10)
.addItemInput(<avaritia:resource:5>*11)
.addItemInput(<contenttweaker:tnt1>*16)
.addItemOutput(<avaritia:resource:6>*1)
.build();

RecipeBuilder.newBuilder("水晶矩阵锭1", "implosion_compressor", 1)
.addItemInput(<avaritia:resource>*4)
.addItemInput(<minecraft:nether_star>*2)
.addItemInput(<minecraft:tnt>*4)
.addItemOutput(<avaritia:resource:1>*1)
.build();

RecipeBuilder.newBuilder("水晶矩阵锭2", "implosion_compressor", 1)
.addItemInput(<avaritia:resource>*4)
.addItemInput(<minecraft:nether_star>*2)
.addItemInput(<contenttweaker:tnt1>*1)
.addItemOutput(<avaritia:resource:1>*1)
.build();

RecipeBuilder.newBuilder("致密钢板", "implosion_compressor", 1)
.addItemInput(<thermalfoundation:material:352>*9)
.addItemInput(<minecraft:tnt>*4)
.addItemOutput(<galacticraftcore:basic_item:9>*1)
.build();

RecipeBuilder.newBuilder("致密铝板", "implosion_compressor", 1)
.addItemInput(<thermalfoundation:material:324>*9)
.addItemInput(<minecraft:tnt>*4)
.addItemOutput(<galacticraftcore:basic_item:8>*1)
.build();

RecipeBuilder.newBuilder("致密锡板", "implosion_compressor", 1)
.addItemInput(<thermalfoundation:material:321>*9)
.addItemInput(<minecraft:tnt>*4)
.addItemOutput(<galacticraftcore:basic_item:7>*1)
.build();

RecipeBuilder.newBuilder("致密铁板", "implosion_compressor", 1)
.addItemInput(<thermalfoundation:material:32>*9)
.addItemInput(<minecraft:tnt>*4)
.addItemOutput(<galacticraftcore:basic_item:11>*1)
.build();

RecipeBuilder.newBuilder("致密铜板", "implosion_compressor", 1)
.addItemInput(<thermalfoundation:material:320>*9)
.addItemInput(<minecraft:tnt>*4)
.addItemOutput(<galacticraftcore:basic_item:6>*1)
.build();

RecipeBuilder.newBuilder("一阶重型防护板", "implosion_compressor", 1)
.addItemInput(<galacticraftcore:basic_item:9>*3)
.addItemInput(<galacticraftcore:basic_item:8>*3)
.addItemInput(<galacticraftcore:basic_item:7>*3)
.addItemInput(<minecraft:tnt>*16)
.addItemOutput(<galacticraftcore:heavy_plating>*1)
.build();

//======================================急速衰变反应堆======================================
RecipeBuilder.newBuilder("铀", "fast-decay_reactor", 100)
.addItemInput(<nuclearcraft:fuel_uranium:6>*4)
.addFluidInput(<liquid:cryotheum>*5000)
.addEnergyPerTickOutput(85536)
.build();

RecipeBuilder.newBuilder("钍", "fast-decay_reactor", 500)
.addItemInput(<nuclearcraft:fuel_thorium>*4)
.addFluidInput(<liquid:cryotheum>*25000)
.addEnergyPerTickOutput(14520)
.build();

RecipeBuilder.newBuilder("钚", "fast-decay_reactor", 150)
.addItemInput(<nuclearcraft:fuel_plutonium:2>*4)
.addFluidInput(<liquid:cryotheum>*7500)
.addEnergyPerTickOutput(213840)
.build();

RecipeBuilder.newBuilder("锔", "fast-decay_reactor", 20)
.addItemInput(<nuclearcraft:fuel_curium:2>*4)
.addFluidInput(<liquid:cryotheum>*1000)
.addEnergyPerTickOutput(1452000)
.build();

RecipeBuilder.newBuilder("锫", "fast-decay_reactor", 20)
.addItemInput(<nuclearcraft:fuel_berkelium:2>*4)
.addFluidInput(<liquid:cryotheum>*1000)
.addEnergyPerTickOutput(2508000)
.build();

RecipeBuilder.newBuilder("锎", "fast-decay_reactor", 80)
.addItemInput(<nuclearcraft:fuel_californium:2>*4)
.addFluidInput(<liquid:cryotheum>*4000)
.addEnergyPerTickOutput(62772600)
.build();

//======================================真空冷冻机======================================
RecipeBuilder.newBuilder("觉醒龙锭", "vacuum_freezer", 100)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:liquidhelium>*400)
.addItemInput(<contenttweaker:dragon_hotingot>*1)
.addItemOutput(<draconicevolution:draconic_ingot>*1)
.build();

RecipeBuilder.newBuilder("教皇锭", "vacuum_freezer", 100)
.addEnergyPerTickInput(1024)
.addFluidInput(<liquid:cryotheum>*1000)
.addItemInput(<contenttweaker:zl_hotingot>*1)
.addItemOutput(<contenttweaker:zl_ingot>*1)
.build();

RecipeBuilder.newBuilder("极寒", "vacuum_freezer", 100)
.addFluidInput(<liquid:pyrotheum>*1000)
.addFluidOutput(<liquid:cryotheum>*1000)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("冰", "vacuum_freezer", 20)
.addFluidInput(<liquid:water>*1000)
.addItemOutput(<minecraft:ice>*1)
.addEnergyPerTickInput(64)
.build();

RecipeBuilder.newBuilder("浮冰", "vacuum_freezer", 20)
.addItemInput(<minecraft:ice>*1)
.addItemOutput(<minecraft:packed_ice>*1)
.addEnergyPerTickInput(64)
.build();

RecipeBuilder.newBuilder("黑曜石1", "vacuum_freezer", 80)
.addFluidInput(<liquid:lava>*1000)
.addItemOutput(<minecraft:obsidian>*1)
.addEnergyPerTickInput(128)
.build();

RecipeBuilder.newBuilder("黑曜石2", "vacuum_freezer", 40)
.addItemInput(<minecraft:magma>*1)
.addItemOutput(<minecraft:obsidian>*1)
.addEnergyPerTickInput(64)
.build();

RecipeBuilder.newBuilder("热钛锭", "vacuum_freezer", 80)
.addItemInput(<contenttweaker:hot_titanium_ingot>*1)
.addItemOutput(<contenttweaker:titanium_ingot>*1)
.addEnergyPerTickInput(1024)
.build();
//======================================批量真空冷冻机======================================
MachineModifier.setMaxParallelism("large_vacuum_freezer", 32);
RecipeBuilder.newBuilder("觉醒龙锭-批量", "large_vacuum_freezer", 50)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:liquidhelium>*405)
.addItemInput(<contenttweaker:dragon_hotingot>*1)
.addItemOutput(<draconicevolution:draconic_ingot>*1)
.build();

RecipeBuilder.newBuilder("凛冰粉-批量", "large_vacuum_freezer", 50)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:liquidhelium>*100)
.addItemInput(<ore:dustCryotheum>*1)
.addItemInput(<minecraft:packed_ice>*2)
.addItemOutput(<ore:dustCryotheum>*3)
.build();

RecipeBuilder.newBuilder("教皇锭-批量", "large_vacuum_freezer", 50)
.addEnergyPerTickInput(1024)
.addFluidInput(<liquid:cryotheum>*1000)
.addFluidInput(<liquid:liquidhelium>*5)
.addItemInput(<contenttweaker:zl_hotingot>*1)
.addItemOutput(<contenttweaker:zl_ingot>*1)
.build();

RecipeBuilder.newBuilder("极寒-批量", "large_vacuum_freezer", 50)
.addEnergyPerTickInput(1024)
.addFluidInput(<liquid:liquidhelium>*5)
.addFluidInput(<liquid:pyrotheum>*1000)
.addFluidOutput(<liquid:cryotheum>*1000)
.build();

RecipeBuilder.newBuilder("冰-批量", "large_vacuum_freezer", 10)
.addEnergyPerTickInput(64)
.addFluidInput(<liquid:liquidhelium>*5)
.addFluidInput(<liquid:water>*1000)
.addItemOutput(<minecraft:ice>*1)
.build();

RecipeBuilder.newBuilder("浮冰-批量", "large_vacuum_freezer", 10)
.addEnergyPerTickInput(64)
.addFluidInput(<liquid:liquidhelium>*5)
.addItemInput(<minecraft:ice>*1)
.addItemOutput(<minecraft:packed_ice>*1)
.build();

RecipeBuilder.newBuilder("黑曜石1-批量", "large_vacuum_freezer", 40)
.addEnergyPerTickInput(128)
.addFluidInput(<liquid:liquidhelium>*5)
.addFluidInput(<liquid:lava>*1000)
.addItemOutput(<minecraft:obsidian>*1)
.build();

RecipeBuilder.newBuilder("黑曜石2-批量", "large_vacuum_freezer", 20)
.addEnergyPerTickInput(64)
.addFluidInput(<liquid:liquidhelium>*5)
.addItemInput(<minecraft:magma>*1)
.addItemOutput(<minecraft:obsidian>*1)
.build();

RecipeBuilder.newBuilder("热钛锭-批量", "large_vacuum_freezer", 40)
.addItemInput(<contenttweaker:hot_titanium_ingot>*1)
.addFluidInput(<liquid:liquidhelium>*10)
.addItemOutput(<contenttweaker:titanium_ingot>*1)
.addEnergyPerTickInput(1024)
.build();
//========================================大型柴油引擎========================================
RecipeBuilder.newBuilder("石油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:crude_oil>*41)
.addFluidInput(<liquid:liquidoxygen>*41)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("杂酚油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:creosote>*410)
.addFluidInput(<liquid:liquidoxygen>*410)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("石脑油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:refined_oil>*16)
.addFluidInput(<liquid:liquidoxygen>*16)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("石脑油-氧-1", "combustion_engine", 1,0)
.addFluidInput(<liquid:naphtha>*16)
.addFluidInput(<liquid:liquidoxygen>*16)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("精炼油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:refined_fuel>*11)
.addFluidInput(<liquid:liquidoxygen>*11)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("树油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:tree_oil>*102)
.addFluidInput(<liquid:liquidoxygen>*102)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("种子油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:seed_oil>*205)
.addFluidInput(<liquid:liquidoxygen>*205)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("生物柴油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:biodiesel>*32)
.addFluidInput(<liquid:liquidoxygen>*32)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("火箭燃料-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:rocket_fuel>*16)
.addFluidInput(<liquid:liquidoxygen>*16)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("烈酒-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:hootch>*55)
.addFluidInput(<liquid:liquidoxygen>*55)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("藿香碱-氧", "combustion_engine", 2,0)
.addFluidInput(<liquid:refined_biofuel>*51)
.addFluidInput(<liquid:liquidoxygen>*51)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("高十六-氧", "combustion_engine", 5,0)
.addFluidInput(<liquid:cetane_boosted_diese>*4)
.addFluidInput(<liquid:liquidoxygen>*2)
.addEnergyPerTickOutput(61400)
.build();

RecipeBuilder.newBuilder("含硫轻燃油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:sulfuric_light_fuel>*307)
.addFluidInput(<liquid:liquidoxygen>*153)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("轻燃油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:light_fuel>*40)
.addFluidInput(<liquid:liquidoxygen>*20)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("柴油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:diesel>*30)
.addFluidInput(<liquid:liquidoxygen>*15)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("汽油-氧", "combustion_engine", 5,0)
.addFluidInput(<liquid:gasoline>*4)
.addFluidInput(<liquid:liquidoxygen>*2)
.addEnergyPerTickOutput(67540)
.build();

RecipeBuilder.newBuilder("液化石油气-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:lpg>*15)
.addFluidInput(<liquid:liquidoxygen>*7)
.addEnergyPerTickOutput(36864)
.build();

RecipeBuilder.newBuilder("混合燃油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:saturated_fuel>*10)
.addFluidInput(<liquid:liquidoxygen>*10)
.addEnergyPerTickOutput(38400)
.build();

RecipeBuilder.newBuilder("优质燃油-氧", "combustion_engine", 1,0)
.addFluidInput(<liquid:high_quality_fuel>*6)
.addFluidInput(<liquid:liquidoxygen>*6)
.addEnergyPerTickOutput(41472)
.build();

//===========================================无氧增幅===================================================
RecipeBuilder.newBuilder("石油", "combustion_engine", 1,1)
.addFluidInput(<liquid:crude_oil>*21)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("杂酚油", "combustion_engine", 1,1)
.addFluidInput(<liquid:creosote>*205)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("石脑油", "combustion_engine", 1,1)
.addFluidInput(<liquid:refined_oil>*8)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("石脑油-1", "combustion_engine", 1,1)
.addFluidInput(<liquid:naphtha>*8)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("精炼油", "combustion_engine", 1,1)
.addFluidInput(<liquid:refined_fuel>*6)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("树油", "combustion_engine", 1,1)
.addFluidInput(<liquid:tree_oil>*51)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("种子油", "combustion_engine", 1,1)
.addFluidInput(<liquid:seed_oil>*103)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("生物柴油", "combustion_engine", 1,1)
.addFluidInput(<liquid:biodiesel>*16)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("火箭燃料", "combustion_engine", 1,1)
.addFluidInput(<liquid:rocket_fuel>*8)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("烈酒", "combustion_engine", 1,1)
.addFluidInput(<liquid:hootch>*23)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("藿香碱", "combustion_engine", 2,1)
.addFluidInput(<liquid:refined_biofuel>*22)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("高十六", "combustion_engine", 5,1)
.addFluidInput(<liquid:cetane_boosted_diese>*2)
.addEnergyPerTickOutput(20480)
.build();

RecipeBuilder.newBuilder("含硫轻燃油", "combustion_engine", 1,1)
.addFluidInput(<liquid:sulfuric_light_fuel>*153)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("轻燃油", "combustion_engine", 1,1)
.addFluidInput(<liquid:light_fuel>*20)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("柴油", "combustion_engine", 1,1)
.addFluidInput(<liquid:light_fuel>*15)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("汽油", "combustion_engine", 5,1)
.addFluidInput(<liquid:gasoline>*2)
.addEnergyPerTickOutput(22528)
.build();

RecipeBuilder.newBuilder("液化石油气", "combustion_engine", 1,1)
.addFluidInput(<liquid:lpg>*6)
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("混合燃油", "combustion_engine", 1,1)
.addFluidInput(<liquid:saturated_fuel>*5)
.addEnergyPerTickOutput(12800)
.build();

RecipeBuilder.newBuilder("优质燃油", "combustion_engine", 1,1)
.addFluidInput(<liquid:high_quality_fuel>*3)
.addEnergyPerTickOutput(13824)
.build();

//========================================钛强化柴油引擎========================================
RecipeBuilder.newBuilder("钛-柴油-氧", "titanium_combustion_engine", 1,0)
.addFluidInput(<liquid:diesel>*200)
.addFluidInput(<liquid:liquidoxygen>*80)
.addEnergyPerTickOutput(147456)
.build();

RecipeBuilder.newBuilder("钛-汽油-氧", "titanium_combustion_engine", 3,0)
.addFluidInput(<liquid:gasoline>*48)
.addFluidInput(<liquid:liquidoxygen>*16)
.addEnergyPerTickOutput(270160)
.build();

RecipeBuilder.newBuilder("钛-高十六-氧", "titanium_combustion_engine", 3,0)
.addFluidInput(<liquid:cetane_boosted_diese>*48)
.addFluidInput(<liquid:liquidoxygen>*8)
.addEnergyPerTickOutput(245600)
.build();

RecipeBuilder.newBuilder("钛-生物柴油-氧", "titanium_combustion_engine", 1,0)
.addFluidInput(<liquid:biodiesel>*384)
.addFluidInput(<liquid:liquidoxygen>*128)
.addEnergyPerTickOutput(147456)
.build();

RecipeBuilder.newBuilder("钛-火箭燃料-氧", "titanium_combustion_engine", 1,0)
.addFluidInput(<liquid:rocket_fuel>*192)
.addFluidInput(<liquid:liquidoxygen>*64)
.addEnergyPerTickOutput(147456)
.build();

//========================================工业机械臂========================================
//ECO-可扩展存储子系统主机-L4-机械臂
RecipeBuilder.newBuilder("ECO-可扩展存储子系统主机-L4-机械臂","machine_arm", 300)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:cryotheum>*16000)
.addItemInput(<contenttweaker:basiccircuit>*8)
.addItemInput(<appliedenergistics2:controller>*4)
.addItemInput(<appliedenergistics2:material:9>*32)
.addItemInput(<threng:material:4>*8)
.addItemInput(<threng:material:14>*4)
.addItemInput(<contenttweaker:stainless_plate>*16)
.addItemOutput(<novaeng_core:extendable_digital_storage_subsystem_l4>)
.build();

//ECO-可扩展存储子系统主机-L6-机械臂
RecipeBuilder.newBuilder("ECO-可扩展存储子系统主机-L6-机械臂","machine_arm", 600)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:cryotheum>*64000)
.addItemInput(<novaeng_core:extendable_digital_storage_subsystem_l4>)
.addItemInput(<contenttweaker:advancedcircuit>*8)
.addItemInput(<appliedenergistics2:material:9>*32)
.addItemInput(<threng:material:4>*8)
.addItemInput(<draconicevolution:draconic_core>*4)
.addItemInput(<plustic:osmiridiumingot>*16)
.addItemOutput(<novaeng_core:extendable_digital_storage_subsystem_l6>)
.build();

//ECO-可扩展存储子系统主机-L6-机械臂
RecipeBuilder.newBuilder("ECO-可扩展存储子系统主机-L9-机械臂","machine_arm", 1200)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:cryotheum>*256000)
.addItemInput(<novaeng_core:extendable_digital_storage_subsystem_l6>)
.addItemInput(<contenttweaker:epiccircuit>*8)
.addItemInput(<appliedenergistics2:material:9>*32)
.addItemInput(<threng:material:4>*8)
.addItemInput(<draconicevolution:awakened_core>*4)
.addItemInput(<tconevo:metal>*8)
.addItemOutput(<novaeng_core:extendable_digital_storage_subsystem_l9>)
.build();

//ECO-存储矩阵-L4-机械臂
RecipeBuilder.newBuilder("ECO-物品存储矩阵-L4-机械臂","machine_arm", 100)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:basiccircuit>*2)
.addItemInput(<nae2:material:2>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<threng:material:14>*2)
.addItemInput(<contenttweaker:stainless_plate>*4)
.addItemOutput(<novaeng_core:estorage_cell_item_16m>)
.build();

RecipeBuilder.newBuilder("ECO-流体存储矩阵-L4-机械臂","machine_arm", 100)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:basiccircuit>*2)
.addItemInput(<nae2:material:6>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<threng:material:14>*2)
.addItemInput(<contenttweaker:stainless_plate>*4)
.addItemOutput(<novaeng_core:estorage_cell_fluid_16m>)
.build();

//ECO-存储矩阵-L6-机械臂
RecipeBuilder.newBuilder("ECO-物品存储矩阵-L6-机械臂","machine_arm", 200)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:advancedcircuit>*2)
.addItemInput(<nae2:material:3>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<draconicevolution:draconic_core>*2)
.addItemInput(<plustic:osmiridiumingot>*4)
.addItemOutput(<novaeng_core:estorage_cell_item_64m>)
.build();

RecipeBuilder.newBuilder("ECO-流体存储矩阵-L6-机械臂","machine_arm", 200)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:advancedcircuit>*2)
.addItemInput(<nae2:material:7>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<draconicevolution:draconic_core>*2)
.addItemInput(<plustic:osmiridiumingot>*4)
.addItemOutput(<novaeng_core:estorage_cell_fluid_64m>)
.build();

//ECO-存储矩阵-L9-机械臂
RecipeBuilder.newBuilder("ECO-物品存储矩阵-L9-机械臂","machine_arm", 400)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:epiccircuit>*2)
.addItemInput(<nae2:material:4>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<draconicevolution:awakened_core>*2)
.addItemInput(<tconevo:metal>*4)
.addItemOutput(<novaeng_core:estorage_cell_item_256m>)
.build();

RecipeBuilder.newBuilder("ECO-流体存储矩阵-L9-机械臂","machine_arm", 400)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluix_steel>*9216)
.addItemInput(<contenttweaker:epiccircuit>*2)
.addItemInput(<nae2:material:8>*4)
.addItemInput(<appliedenergistics2:material:39>*4)
.addItemInput(<threng:material:4>*4)
.addItemInput(<draconicevolution:awakened_core>*2)
.addItemInput(<tconevo:metal>*4)
.addItemOutput(<novaeng_core:estorage_cell_fluid_256m>)
.build();

//洁净不锈钢机械方块
RecipeBuilder.newBuilder("洁净不锈钢机械方块3","machine_arm", 20)
.addEnergyPerTickInput(4096)
.addItemInput(<contenttweaker:stainless_plate>*6)
.addItemInput(<contenttweaker:stainless_rod>*4)
.addItemOutput(<cregtech:cleanstainlesssteelmachinecasing>)
.build();

//钢制机械方块
RecipeBuilder.newBuilder("钢制机械方块3","machine_arm", 20)
.addEnergyPerTickInput(4096)
.addItemInput(<thermalfoundation:material:352>*6)
.addItemInput(<immersiveengineering:material:2>*4)
.addItemOutput(<cregtech:steelmachingcasing>)
.build();

//龙芯
RecipeBuilder.newBuilder("龙芯机械臂","machine_arm", 40)
.addEnergyPerTickInput(4096)
.addItemInput(<draconicevolution:draconium_ingot>*16)
.addItemInput(<minecraft:gold_ingot>*16)
.addItemOutput(<draconicevolution:draconic_core>*4)
.build();

//亚尔夫海姆-尘世维度之门集成控制器-机械臂
RecipeBuilder.newBuilder("亚尔夫海姆-尘世维度之门集成控制器-机械臂","machine_arm", 1200)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*4000)
.addItemInput(<mekanism:machineblock3>*1)
.addItemInput(<modularmachinery:mana_fusion_controller>*4)
.addItemInput(<botania:alfheimportal>*4)
.addItemInput(<botania:bifrostperm>*64)
.addItemInput(<contenttweaker:mana_crystal3>)
.addItemInput(<appliedenergistics2:material:59>*4)
.addItemInput(<appliedenergistics2:material:34>*4)
.addItemOutput(<modularmachinery:alfheim_portal_factory_controller>)
.build();

//生物质培养仓控制器
RecipeBuilder.newBuilder("生物质培养仓控制器","machine_arm", 1200)
.addEnergyPerTickInput(32768)
.addFluidInput(<liquid:lubricant>*64000)
.addItemInput(<minecraft:rotten_flesh>*64)
.addItemInput(<thermalfoundation:material:819>*64)
.addItemInput(<thermalfoundation:fertilizer:2>*64)
.addItemInput(<nuclearcraft:part:8>*64)
.addItemInput(<contenttweaker:part>*64)
.addItemInput(<draconicevolution:chaotic_core>)
.addItemInput(<contenttweaker:modularblock>)
.addItemOutput(<modularmachinery:peiyang_factory_controller>)
.build();

//装配线控制器
RecipeBuilder.newBuilder("装配线控制器","machine_arm", 1200)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:tech3>).setChance(0)
.addItemInput(<modularmachinery:advanced_assemble_machine_controller>)
.addItemInput(<contenttweaker:mastercircuit>*64)
.addItemInput(<mekanism:basicblock:8>*32)
.addItemInput(<nuclearcraft:part:12>*32)
.addItemInput(<contenttweaker:magicalingot>*16)
.addItemOutput(<modularmachinery:assembly_line_controller>)
.build();

//钢制机械零件3
RecipeBuilder.newBuilder("钢制机械零件3","machine_arm", 1)
.addEnergyPerTickInput(16384)
.addItemInput(<thermalfoundation:material:256>)
.addItemInput(<thermalfoundation:material:352>*4)
.addItemOutput(<immersiveengineering:material:9>*2)
.build();

//机械构件
RecipeBuilder.newBuilder("机械构件1","machine_arm", 400)
.addEnergyPerTickInput(16384)
.addFluidInput(<liquid:lubricant>*4000)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:dig3>).setChance(0)
.addItemInput(<modularmachinery:blockcasing:3>*4)
.addItemInput(<minecraft:lapis_block>*8)
.addItemOutput(<contenttweaker:part>)
.build();

RecipeBuilder.newBuilder("机械构件2","machine_arm", 200)
.addEnergyPerTickInput(16384)
.addFluidInput(<liquid:lubricant>*2000)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addItemInput(<contenttweaker:dig3>).setChance(0)
.addItemInput(<modularmachinery:blockcasing:3>*2)
.addItemInput(<minecraft:lapis_block>*8)
.addItemOutput(<contenttweaker:part>)
.build();

RecipeBuilder.newBuilder("机械构件3","machine_arm", 100)
.addEnergyPerTickInput(16384)
.addFluidInput(<liquid:lubricant>*1000)
.addItemInput(<contenttweaker:assemble3>).setChance(0)
.addItemInput(<contenttweaker:dig3>).setChance(0)
.addItemInput(<modularmachinery:blockcasing:3>)
.addItemInput(<minecraft:lapis_block>*8)
.addItemOutput(<contenttweaker:part>)
.build();

//轻型工程块
RecipeBuilder.newBuilder("轻型工程块3","machine_arm", 100)
.addEnergyPerTickInput(4096)
.addItemInput(<immersiveengineering:stone_decoration:4>*2)
.addItemInput(<immersiveengineering:material:8>*2)
.addItemOutput(<immersiveengineering:metal_decoration0:4>*8)
.build();

//红石工程块
RecipeBuilder.newBuilder("红石工程块3","machine_arm", 100)
.addEnergyPerTickInput(4096)
.addItemInput(<immersiveengineering:stone_decoration:4>*2)
.addItemInput(<minecraft:redstone>*8)
.addItemOutput(<immersiveengineering:metal_decoration0:3>*8)
.build();

//重型工程块
RecipeBuilder.newBuilder("重型工程块3","machine_arm", 100)
.addEnergyPerTickInput(4096)
.addItemInput(<immersiveengineering:stone_decoration:4>*2)
.addItemInput(<immersiveengineering:metal_decoration0:4>*2)
.addItemInput(<immersiveengineering:material:9>*2)
.addItemOutput(<immersiveengineering:metal_decoration0:5>*8)
.build();

//铜线（机械臂）
RecipeBuilder.newBuilder("铜线机械臂","machine_arm",10)
.addEnergyPerTickInput(16384)
.addItemInput(<thermalfoundation:material:128>*8)
.addItemOutput(<immersiveengineering:material:20>*32)
.build();

//铝线（机械臂）
RecipeBuilder.newBuilder("铝线机械臂","machine_arm",10)
.addEnergyPerTickInput(16384)
.addItemInput(<thermalfoundation:material:132>*8)
.addItemOutput(<immersiveengineering:material:22>*32)
.build();


//琥珀金线（机械臂）
RecipeBuilder.newBuilder("琥珀金线机械臂","machine_arm",10)
.addEnergyPerTickInput(16384)
.addItemInput(<thermalfoundation:material:161>*8)
.addItemOutput(<immersiveengineering:material:21>*32)
.build();

//钢线（机械臂）
RecipeBuilder.newBuilder("钢线机械臂","machine_arm",10)
.addEnergyPerTickInput(16384)
.addItemInput(<thermalfoundation:material:160>*8)
.addItemOutput(<immersiveengineering:material:23>*32)
.build();

//并行控制器(16*)
RecipeBuilder.newBuilder("并行控制器4","machine_arm",1200)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:tech1>).setChance(0)
.addItemInput(<modularmachinery:blockcasing:5>*4)
.addItemInput(<contenttweaker:mastercircuit>*2)
.addItemInput(<modularmachinery:blockparallelcontroller>)
.addItemOutput(<modularmachinery:blockparallelcontroller:1>)
.build();

//超精电路蚀刻机控制器
RecipeBuilder.newBuilder("超精电路蚀刻机控制器","machine_arm",1200)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addFluidInput(<liquid:lubricant>*64000)
.addItemInput(<contenttweaker:mastercircuit>*32)
.addItemInput(<environmentaltech:laser_core>*64)
.addItemInput(<plustic:laser_medium>.withTag({Material: "prismarine"})*64)
.addItemInput(<plustic:laser_medium>.withTag({Material: "starmetal"})*64)
.addItemInput(<plustic:laser_medium>.withTag({Material: "refined_glowstone"})*64)
.addItemInput(<plustic:laser_medium>.withTag({Material: "blaze"})*64)
.addItemInput(<plustic:laser_medium>.withTag({Material: "endrod"})*64)
.addItemInput(<plustic:laser_medium>.withTag({Material: "refined_obsidian"})*64)
.addItemInput(<plustic:laser_medium>.withTag({Material: "fluix"})*64)
.addItemOutput(<modularmachinery:machine_circuit_controller>)
.build();

//汇星合金炉控制器
RecipeBuilder.newBuilder("汇星合金炉控制器","machine_arm",1200)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addFluidInput(<liquid:lubricant>*64000)
.addItemInput(<contenttweaker:epiccircuit>*16)
.addItemInput(<enderio:block_enhanced_alloy_smelter>*32)
.addItemInput(<nuclearcraft:alloy_furnace_idle>*32)
.addItemInput(<botania:prism>*64)
.addItemOutput(<modularmachinery:star_alloy_furance_controller>)
.build();

//烹饪锅控制器
RecipeBuilder.newBuilder("烹饪锅控制器","machine_arm",1200)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:furance3>).setChance(0)
.addFluidInput(<liquid:pyrotheum>*160000)
.addItemInput(<minecraft:cauldron>*64)
.addItemInput(<enderio:block_alloy:6>*64)
.addItemInput(<botania:blazeblock>*32)
.addItemOutput(<modularmachinery:pengrenguo_controller>)
.build();

//二阶科研基站控制器
RecipeBuilder.newBuilder("二阶科研基站控制器","machine_arm",1200)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:tech1>).setChance(0)
.addItemInput(<modularmachinery:research1_controller>)
.addItemInput(<contenttweaker:nova2>*100)
.addItemInput(<mekanism:controlcircuit:2>*32)
.addItemOutput(<modularmachinery:research2_controller>)
.build();

//三阶科研基站控制器
RecipeBuilder.newBuilder("三阶科研基站控制器","machine_arm",1200)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:tech2>).setChance(0)
.addItemInput(<modularmachinery:research2_controller>)
.addItemInput(<contenttweaker:nova2>*320)
.addItemInput(<mekanism:controlcircuit:3>*32)
.addItemOutput(<modularmachinery:research3_controller>)
.build();

//飞龙能量核心
RecipeBuilder.newBuilder("飞龙能量核心", "machine_arm", 100)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addFluidInput(<liquid:lubricant>*200)
.addItemInput(<draconicevolution:draconium_ingot>*32)
.addItemInput(<minecraft:redstone_block>*16)
.addItemInput(<draconicevolution:draconic_core>*4)
.addItemOutput(<draconicevolution:wyvern_energy_core>*4)
.build();

RecipeBuilder.newBuilder("飞龙能量核心2", "machine_arm", 70)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addFluidInput(<liquid:lubricant>*200)
.addItemInput(<draconicevolution:draconium_ingot>*32)
.addItemInput(<minecraft:redstone_block>*16)
.addItemInput(<draconicevolution:draconic_core>*4)
.addItemOutput(<draconicevolution:wyvern_energy_core>*4)
.build();

RecipeBuilder.newBuilder("飞龙能量核心3", "machine_arm", 40)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:assemble3>).setChance(0)
.addFluidInput(<liquid:lubricant>*200)
.addItemInput(<draconicevolution:draconium_ingot>*32)
.addItemInput(<minecraft:redstone_block>*16)
.addItemInput(<draconicevolution:draconic_core>*4)
.addItemOutput(<draconicevolution:wyvern_energy_core>*4)
.build();

//机械核心
RecipeBuilder.newBuilder("机械核心1", "machine_arm", 80)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addFluidInput(<liquid:lubricant>*150)
.addItemInput(<minecraft:iron_ingot>*4)
.addItemInput(<thermalfoundation:material:352>*4)
.addItemInput(<embers:ancient_motive_core>)
.addItemOutput(<embers:mech_core>)
.build();

RecipeBuilder.newBuilder("机械核心1.1", "machine_arm", 80)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addFluidInput(<liquid:lubricant>*150)
.addItemInput(<minecraft:iron_ingot>*4)
.addItemInput(<thermalfoundation:material:352>*4)
.addItemInput(<contenttweaker:north_compass>)
.addItemOutput(<embers:mech_core>)
.build();

RecipeBuilder.newBuilder("机械核心2", "machine_arm", 40)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addFluidInput(<liquid:lubricant>*100)
.addItemInput(<minecraft:iron_ingot>*4)
.addItemInput(<thermalfoundation:material:352>*4)
.addItemInput(<embers:ancient_motive_core>)
.addItemOutput(<embers:mech_core>)
.build();

RecipeBuilder.newBuilder("机械核心2.2", "machine_arm", 40)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addFluidInput(<liquid:lubricant>*100)
.addItemInput(<minecraft:iron_ingot>*4)
.addItemInput(<thermalfoundation:material:352>*4)
.addItemInput(<contenttweaker:north_compass>)
.addItemOutput(<embers:mech_core>)
.build();

RecipeBuilder.newBuilder("机械核心3", "machine_arm", 20)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:assemble3>).setChance(0)
.addFluidInput(<liquid:lubricant>*50)
.addItemInput(<minecraft:iron_ingot>*4)
.addItemInput(<thermalfoundation:material:352>*4)
.addItemInput(<embers:ancient_motive_core>)
.addItemOutput(<embers:mech_core>)
.build();

RecipeBuilder.newBuilder("机械核心3.2", "machine_arm", 20)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:assemble3>).setChance(0)
.addFluidInput(<liquid:lubricant>*50)
.addItemInput(<minecraft:iron_ingot>*4)
.addItemInput(<thermalfoundation:material:352>*4)
.addItemInput(<contenttweaker:north_compass>)
.addItemOutput(<embers:mech_core>)
.build();

//热力框架
RecipeBuilder.newBuilder("热力框架", "machine_arm", 160)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addFluidInput(<liquid:lubricant>*150)
.addItemInput(<thermalfoundation:material:291>*4)
.addItemInput(<embers:ingot_dawnstone>*4)
.addItemInput(<modularmachinery:blockcasing>*4)
.addItemOutput(<thermalexpansion:frame>*2)
.build();

RecipeBuilder.newBuilder("热力框架2", "machine_arm", 80)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addFluidInput(<liquid:lubricant>*100)
.addItemInput(<thermalfoundation:material:291>*4)
.addItemInput(<embers:ingot_dawnstone>*4)
.addItemInput(<modularmachinery:blockcasing>*4)
.addItemOutput(<thermalexpansion:frame>*2)
.build();

RecipeBuilder.newBuilder("热力框架3", "machine_arm", 40)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:assemble3>).setChance(0)
.addFluidInput(<liquid:lubricant>*50)
.addItemInput(<thermalfoundation:material:291>*4)
.addItemInput(<embers:ingot_dawnstone>*4)
.addItemInput(<modularmachinery:blockcasing>*4)
.addItemOutput(<thermalexpansion:frame>*2)
.build();

//EIO框架
RecipeBuilder.newBuilder("EIO框架", "machine_arm", 40)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addFluidInput(<liquid:lubricant>*200)
.addItemInput(<contenttweaker:resinplate>*8)
.addItemInput(<enderio:item_material:20>*8)
.addItemInput(<contenttweaker:crystal_1>)
.addItemOutput(<enderio:item_material>*2)
.build();

RecipeBuilder.newBuilder("EIO框架2", "machine_arm", 20)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:assemble3>).setChance(0)
.addFluidInput(<liquid:lubricant>*100)
.addItemInput(<contenttweaker:resinplate>*8)
.addItemInput(<enderio:item_material:20>*8)
.addItemInput(<contenttweaker:crystal_1>)
.addItemOutput(<enderio:item_material>*2)
.build();

//核电框架
RecipeBuilder.newBuilder("核电框架", "machine_arm", 40)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:assemble2>).setChance(0)
.addFluidInput(<liquid:lubricant>*200)
.addItemInput(<contenttweaker:resinplate>*8)
.addItemInput(<contenttweaker:stainless_ingot>*4)
.addItemInput(<contenttweaker:crystal_1>)
.addItemOutput(<nuclearcraft:part:10>*2)
.build();

RecipeBuilder.newBuilder("核电框架2", "machine_arm", 20)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:assemble3>).setChance(0)
.addFluidInput(<liquid:lubricant>*100)
.addItemInput(<contenttweaker:resinplate>*8)
.addItemInput(<contenttweaker:stainless_ingot>*4)
.addItemInput(<contenttweaker:crystal_1>)
.addItemOutput(<nuclearcraft:part:10>*2)
.build();

//MEK框架
RecipeBuilder.newBuilder("MEK框架", "machine_arm", 40)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:assemble3>).setChance(0)
.addFluidInput(<liquid:lubricant>*250)
.addItemInput(<enderio:item_material>)
.addItemInput(<contenttweaker:crystal_2>)
.addItemInput(<contenttweaker:stainless_ingot>*4)
.addItemInput(<nuclearcraft:alloy:15>*4)
.addItemOutput(<mekanism:basicblock:8>)
.build();

//核电钢制框架
RecipeBuilder.newBuilder("核电钢制框架", "machine_arm", 40)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:assemble3>).setChance(0)
.addFluidInput(<liquid:lubricant>*250)
.addItemInput(<enderio:item_material>)
.addItemInput(<contenttweaker:crystal_2>)
.addItemInput(<contenttweaker:stainless_ingot>*8)
.addItemInput(<threng:material>*2)
.addItemInput(<nuclearcraft:alloy:10>*2)
.addItemInput(<nuclearcraft:alloy:15>*8)
.addItemOutput(<nuclearcraft:part:12>)
.build();

//钛强化燃油引擎
RecipeBuilder.newBuilder("钛强化燃油引擎", "machine_arm", 320)
.addEnergyPerTickInput(131072)
.addItemInput(<contenttweaker:assemble1>).setChance(0)
.addItemInput(<contenttweaker:titanium_gearbox_casing>*2)
.addItemInput(<cregtech:titanium_metal_casing>*8)
.addItemInput(<mekanism:controlcircuit:3>*4)
.addItemInput(<enderio:item_material:66>*4)
.addItemInput(<modularmachinery:combustion_engine_controller>*4)
.addItemOutput(<modularmachinery:titanium_combustion_engine_controller>*1)
.build();
//========================================超精电路蚀刻机========================================
//基础集成电路
RecipeBuilder.newBuilder("基础集成电路3.1", "machine_circuit", 80)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<immersiveengineering:material:27>)
.addItemInput(<contenttweaker:compressedresinplate>*4)
.addItemOutput(<contenttweaker:basiccircuit>*4)
.build();

RecipeBuilder.newBuilder("基础集成电路3.2", "machine_circuit", 40)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<immersiveengineering:material:27>)
.addItemInput(<contenttweaker:compressedresinplate>*4)
.addItemOutput(<contenttweaker:basiccircuit>*4)
.build();

RecipeBuilder.newBuilder("基础集成电路3.3", "machine_circuit", 20)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:circuit3>).setChance(0)
.addItemInput(<immersiveengineering:material:27>)
.addItemInput(<contenttweaker:compressedresinplate>*4)
.addItemOutput(<contenttweaker:basiccircuit>*4)
.build();

//进阶集成电路
RecipeBuilder.newBuilder("进阶集成电路3.1", "machine_circuit", 80)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:circuit1>).setChance(0)
.addItemInput(<immersiveengineering:material:27>)
.addItemInput(<contenttweaker:advancedcircuitplate>*4)
.addItemInput(<plustic:osmiridiumingot>*8)
.addItemOutput(<contenttweaker:advancedcircuit>*4)
.build();

RecipeBuilder.newBuilder("进阶集成电路3.2", "machine_circuit", 40)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<immersiveengineering:material:27>)
.addItemInput(<contenttweaker:advancedcircuitplate>*4)
.addItemInput(<plustic:osmiridiumingot>*8)
.addItemOutput(<contenttweaker:advancedcircuit>*4)
.build();

RecipeBuilder.newBuilder("进阶集成电路3.3", "machine_circuit", 20)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:circuit3>).setChance(0)
.addItemInput(<immersiveengineering:material:27>)
.addItemInput(<contenttweaker:advancedcircuitplate>*4)
.addItemInput(<plustic:osmiridiumingot>*8)
.addItemOutput(<contenttweaker:advancedcircuit>*4)
.build();

//高级控制电路
RecipeBuilder.newBuilder("高级控制电路1.1", "machine_circuit", 80)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<mekanism:controlcircuit>*4)
.addItemInput(<mekanism:enrichedalloy>*8)
.addItemOutput(<mekanism:controlcircuit:1>*4)
.build();

RecipeBuilder.newBuilder("高级控制电路1.2", "machine_circuit", 40)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:circuit3>).setChance(0)
.addItemInput(<mekanism:controlcircuit>*4)
.addItemInput(<mekanism:enrichedalloy>*8)
.addItemOutput(<mekanism:controlcircuit:1>*4)
.build();

//精英控制电路
RecipeBuilder.newBuilder("精英控制电路1.1", "machine_circuit", 80)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<mekanism:controlcircuit:1>*2)
.addItemInput(<mekanism:reinforcedalloy>*8)
.addItemOutput(<mekanism:controlcircuit:2>*4)
.build();

RecipeBuilder.newBuilder("精英控制电路1.2", "machine_circuit", 40)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:circuit3>).setChance(0)
.addItemInput(<mekanism:controlcircuit:1>*2)
.addItemInput(<mekanism:reinforcedalloy>*8)
.addItemOutput(<mekanism:controlcircuit:2>*4)
.build();

//精英集成电路3
RecipeBuilder.newBuilder("精英集成电路3.1", "machine_circuit", 80)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:circuit2>).setChance(0)
.addItemInput(<contenttweaker:epiccircuitplate>*2)
.addFluidInput(<liquid:boric_acid>*1000)
.addItemOutput(<contenttweaker:epiccircuit>*4)
.build();

RecipeBuilder.newBuilder("精英集成电路3.2", "machine_circuit", 40)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:circuit3>).setChance(0)
.addItemInput(<contenttweaker:epiccircuitplate>*2)
.addFluidInput(<liquid:boric_acid>*1000)
.addItemOutput(<contenttweaker:epiccircuit>*4)
.build();

//终极控制电路2
RecipeBuilder.newBuilder("终极控制电路2", "machine_circuit", 40)
.addEnergyPerTickInput(131072)
.addItemInput(<contenttweaker:circuit3>).setChance(0)
.addItemInput(<mekanism:atomicalloy>*8)
.addItemInput(<mekanism:controlcircuit:2>*4)
.addItemInput(<environmentaltech:pladium_crystal>*8)
.addFluidInput(<liquid:nak>*500)
.addItemOutput(<mekanism:controlcircuit:3>*4)
.build();

//大师集成电路2
RecipeBuilder.newBuilder("大师集成电路2", "machine_circuit", 40)
.addEnergyPerTickInput(131072)
.addItemInput(<contenttweaker:circuit3>).setChance(0)
.addItemInput(<contenttweaker:mastercircuitplate>*4)
.addItemInput(<environmentaltech:pladium_crystal>*8)
.addFluidInput(<liquid:hydrofluoric_acid>*2000)
.addItemOutput(<contenttweaker:mastercircuit>*4)
.build();

//极限集成电路1
RecipeBuilder.newBuilder("极限集成电路1", "machine_circuit", 160)
.addEnergyPerTickInput(131072)
.addItemInput(<contenttweaker:tech3>).setChance(0)
.addItemInput(<contenttweaker:mastercircuit>*2)
.addItemInput(<contenttweaker:magicalingot>)
.addItemInput(<contenttweaker:extremecircuitplate>*2)
.addFluidInput(<liquid:hydrofluoric_acid>*2000)
.addItemOutput(<contenttweaker:extremecircuit>*4)
.build();
//========================================汇星合金炉========================================
//运行调整
MMEvents.onMachinePostTick("star_alloy_furance", function(event as MachineTickEvent) {
    val controller as IMachineController = event.controller;
    val data = controller.customData;
    val map = data.asMap();
    val starlight_energy = isNull(map["starlight"]) ? 100 as float : map["starlight"].asFloat();

    if (controller.isWorking) {
        //运行时增加星光汇聚量
        val newEnergy = starlight_energy + increaseEnergy(starlight_energy);
        //if (newEnergy != starlight_energy) {
            map["starlight"] = newEnergy;
            controller.customData = data;
            //10000与实际星光汇聚量比值，与10比较，输出较小值，作为配方时间乘数(即实际时长为配方时长*乘数)，上限为10
            val modifier as float = min(10000 as float / starlight_energy, 10);
            //添加配方运行调整器
            controller.addModifier("efficiency", RecipeModifierBuilder.create("modularmachinery:duration", "input", modifier, 1, false).build());
        //}
    } else {
        //停止时减少星光汇聚量
        val newEnergy = starlight_energy - decreaseEnergy(starlight_energy);
        if (newEnergy != starlight_energy) {
            map["starlight"] = newEnergy;
            controller.customData = data;
        }
    }
});

//显示调整
MMEvents.onControllerGUIRender("star_alloy_furance", function(event as ControllerGUIRenderEvent) {
    val controller as IMachineController = event.controller;
    val data = controller.customData.asMap();
    //如果星光汇聚量为空，则设定为100，否则显示为实际值
    val starlight_energy = isNull(data["starlight"]) ? 100 as float : data["starlight"].asFloat();
    val modifier as float = min(20000 as float / starlight_energy, 5) * 100;
    var info as string[] = [
        "§a通过接引星光加快冶炼速度，星光越少速度越慢，星光越多速度越快；在汇星合金炉停止运转期间，星光会不断流失。",
        " ",
        "§d星光汇聚量:§b" + (starlight_energy as float),
        //根据处理处理时长倍率调整字体颜色，高于100为红，低于100为绿
        "§6处理时长倍率:" + (modifier >= 100 ? "§c" : "§a") + (((modifier * 10000) as int) as float) / 10000  + "%",
    ];
    //设定在GUI显示
    event.extraInfo = info;
});

//输出a与b较小值
function min(a as float, b as float) as float {
    return a <= b ? a : b;
}

//星光汇聚速率在不同汇聚量下增加速度
function increaseEnergy(starlight as float) as float {
    if (starlight >= 100000) {
        return 0 as float;
    } else if (starlight >= 80000) {
        return 1 as float;
    } else if (starlight >= 50000) {
        return 3 as float;
    } else if (starlight >= 20000) {
        return 5 as float;
    } else {
        return 8 as float;
    }
}

//星光汇聚速率在不同汇聚量下减少速度
function decreaseEnergy(starlight as float) as float {
    if (starlight >= 80000) {
        return 6 as float;
    } else if (starlight >= 50000) {
        return 4 as float;
    } else if (starlight >= 20000) {
        return 3 as float;
    } else if (starlight >= 10000) {
        return 2 as float;
    } else if (starlight >= 100) {
        return 1 as float;
    } else {
        return 0 as float;
    }
}

//龙矿烧炼
RecipeBuilder.newBuilder("龙矿烧炼1", "star_alloy_furance", 400)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<draconicevolution:draconium_ore>)
.addItemOutput(<draconicevolution:draconium_ingot>*8)
.build();

RecipeBuilder.newBuilder("龙矿烧炼2", "star_alloy_furance", 200)
.addEnergyPerTickInput(24576)
.addItemInput(<contenttweaker:furance2>).setChance(0)
.addItemInput(<draconicevolution:draconium_ore>)
.addItemOutput(<draconicevolution:draconium_ingot>*8)
.build();

RecipeBuilder.newBuilder("龙矿烧炼3", "star_alloy_furance", 60)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:furance3>).setChance(0)
.addItemInput(<draconicevolution:draconium_ore>)
.addItemOutput(<draconicevolution:draconium_ingot>*8)
.build();

//宇宙能量锭
RecipeBuilder.newBuilder("宇宙能量锭", "star_alloy_furance", 30000)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:furance3>).setChance(0)
.addItemInput(<avaritia:resource:6>)
.addItemInput(<contenttweaker:galaxy_ingot>)
.addItemInput(<contenttweaker:magicalingot>)
.addItemOutput(<contenttweaker:universe_ingot>)
.build();

//紫晶锭
RecipeBuilder.newBuilder("紫晶锭1", "star_alloy_furance", 15000)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<extrabotany:material:1>)
.addItemInput(<tconstruct:ingots:2>*8)
.addItemInput(<mekanism:ingot>*8)
.addItemInput(<threng:material>*8)
.addItemInput(<draconicevolution:draconium_ingot>*8)
.addItemOutput(<contenttweaker:purpleingot>*2)
.build();

RecipeBuilder.newBuilder("紫晶锭2", "star_alloy_furance", 12000)
.addEnergyPerTickInput(24576)
.addItemInput(<contenttweaker:furance2>).setChance(0)
.addItemInput(<extrabotany:material:1>)
.addItemInput(<tconstruct:ingots:2>*8)
.addItemInput(<mekanism:ingot>*8)
.addItemInput(<threng:material>*8)
.addItemInput(<draconicevolution:draconium_ingot>*8)
.addItemOutput(<contenttweaker:purpleingot>*3)
.build();

RecipeBuilder.newBuilder("紫晶锭3", "star_alloy_furance", 9000)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:furance3>).setChance(0)
.addItemInput(<extrabotany:material:1>)
.addItemInput(<tconstruct:ingots:2>*8)
.addItemInput(<mekanism:ingot>*8)
.addItemInput(<threng:material>*8)
.addItemInput(<draconicevolution:draconium_ingot>*8)
.addItemOutput(<contenttweaker:purpleingot>*4)
.build();

//赤晶锭
RecipeBuilder.newBuilder("赤晶锭1", "star_alloy_furance", 3600)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<enderio:item_alloy_ingot:3>*8)
.addItemInput(<contenttweaker:ruby_dust>*8)
.addItemOutput(<contenttweaker:redingot>*8)
.build();

RecipeBuilder.newBuilder("赤晶锭2", "star_alloy_furance", 2400)
.addEnergyPerTickInput(24576)
.addItemInput(<contenttweaker:furance2>).setChance(0)
.addItemInput(<enderio:item_alloy_ingot:3>*8)
.addItemInput(<contenttweaker:ruby_dust>*8)
.addItemOutput(<contenttweaker:redingot>*12)
.build();

RecipeBuilder.newBuilder("赤晶锭3", "star_alloy_furance", 1200)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:furance3>).setChance(0)
.addItemInput(<enderio:item_alloy_ingot:3>*8)
.addItemInput(<contenttweaker:ruby_dust>*8)
.addItemOutput(<contenttweaker:redingot>*16)
.build();

//蓝晶锭
RecipeBuilder.newBuilder("蓝晶锭1", "star_alloy_furance", 15000)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<contenttweaker:galaxy_ingot>)
.addItemInput(<extendedcrafting:material:24>)
.addItemInput(<tconstruct:ingots>*8)
.addItemInput(<botania:manaresource>*8)
.addItemInput(<enderio:item_alloy_endergy_ingot:1>*8)
.addItemInput(<thermalfoundation:material:167>*8)
.addItemInput(<enderio:item_alloy_endergy_ingot:6>*8)
.addItemOutput(<contenttweaker:blueingot>*2)
.build();

RecipeBuilder.newBuilder("蓝晶锭2", "star_alloy_furance", 12000)
.addEnergyPerTickInput(24576)
.addItemInput(<contenttweaker:furance2>).setChance(0)
.addItemInput(<contenttweaker:galaxy_ingot>)
.addItemInput(<extendedcrafting:material:24>)
.addItemInput(<tconstruct:ingots>*8)
.addItemInput(<botania:manaresource>*8)
.addItemInput(<enderio:item_alloy_endergy_ingot:1>*8)
.addItemInput(<thermalfoundation:material:167>*8)
.addItemInput(<enderio:item_alloy_endergy_ingot:6>*8)
.addItemOutput(<contenttweaker:blueingot>*3)
.build();

RecipeBuilder.newBuilder("蓝晶锭3", "star_alloy_furance", 9000)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:furance3>).setChance(0)
.addItemInput(<contenttweaker:galaxy_ingot>)
.addItemInput(<extendedcrafting:material:24>)
.addItemInput(<tconstruct:ingots>*8)
.addItemInput(<botania:manaresource>*8)
.addItemInput(<enderio:item_alloy_endergy_ingot:1>*8)
.addItemInput(<thermalfoundation:material:167>*8)
.addItemInput(<enderio:item_alloy_endergy_ingot:6>*8)
.addItemOutput(<contenttweaker:blueingot>*4)
.build();

//绿晶锭
RecipeBuilder.newBuilder("绿晶锭1", "star_alloy_furance", 15000)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<deepmoblearning:glitch_infused_ingot>)
.addItemInput(<botania:manaresource:4>)
.addItemInput(<plustic:osgloglasingot>*8)
.addItemInput(<nuclearcraft:ingot_oxide:2>*8)
.addItemInput(<nuclearcraft:ingot_oxide:1>*8)
.addItemInput(<enderio:item_alloy_ingot:5>*8)
.addItemOutput(<contenttweaker:greeningot>*2)
.build();

RecipeBuilder.newBuilder("绿晶锭2", "star_alloy_furance", 12000)
.addEnergyPerTickInput(24576)
.addItemInput(<contenttweaker:furance2>).setChance(0)
.addItemInput(<deepmoblearning:glitch_infused_ingot>)
.addItemInput(<botania:manaresource:4>)
.addItemInput(<plustic:osgloglasingot>*8)
.addItemInput(<nuclearcraft:ingot_oxide:2>*8)
.addItemInput(<nuclearcraft:ingot_oxide:1>*8)
.addItemInput(<enderio:item_alloy_ingot:5>*8)
.addItemOutput(<contenttweaker:greeningot>*3)
.build();

RecipeBuilder.newBuilder("绿晶锭3", "star_alloy_furance", 9000)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:furance3>).setChance(0)
.addItemInput(<deepmoblearning:glitch_infused_ingot>)
.addItemInput(<botania:manaresource:4>)
.addItemInput(<plustic:osgloglasingot>*8)
.addItemInput(<nuclearcraft:ingot_oxide:2>*8)
.addItemInput(<nuclearcraft:ingot_oxide:1>*8)
.addItemInput(<enderio:item_alloy_ingot:5>*8)
.addItemOutput(<contenttweaker:greeningot>*4)
.build();

//金晶锭
RecipeBuilder.newBuilder("金晶锭1", "star_alloy_furance", 15000)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<mekanism:ingot:3>*8)
.addItemInput(<thermalfoundation:material:166>*8)
.addItemInput(<tconstruct:ingots:5>*8)
.addItemInput(<enderio:item_alloy_ingot:1>*8)
.addItemInput(<embers:ingot_dawnstone>*8)
.addItemInput(<enderio:item_alloy_ingot:8>*8)
.addItemOutput(<contenttweaker:goldeningot>*2)
.build();

RecipeBuilder.newBuilder("金晶锭2", "star_alloy_furance", 12000)
.addEnergyPerTickInput(24576)
.addItemInput(<contenttweaker:furance2>).setChance(0)
.addItemInput(<mekanism:ingot:3>*8)
.addItemInput(<thermalfoundation:material:166>*8)
.addItemInput(<tconstruct:ingots:5>*8)
.addItemInput(<enderio:item_alloy_ingot:1>*8)
.addItemInput(<embers:ingot_dawnstone>*8)
.addItemInput(<enderio:item_alloy_ingot:8>*8)
.addItemOutput(<contenttweaker:goldeningot>*3)
.build();

RecipeBuilder.newBuilder("金晶锭3", "star_alloy_furance", 9000)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:furance3>).setChance(0)
.addItemInput(<mekanism:ingot:3>*8)
.addItemInput(<thermalfoundation:material:166>*8)
.addItemInput(<tconstruct:ingots:5>*8)
.addItemInput(<enderio:item_alloy_ingot:1>*8)
.addItemInput(<embers:ingot_dawnstone>*8)
.addItemInput(<enderio:item_alloy_ingot:8>*8)
.addItemOutput(<contenttweaker:goldeningot>*4)
.build();

//蕴魔合金锭
RecipeBuilder.newBuilder("蕴魔合金锭1", "star_alloy_furance", 30000)
.addEnergyPerTickInput(16384)
.addItemInput(<contenttweaker:furance1>).setChance(0)
.addItemInput(<contenttweaker:purpleingot>)
.addItemInput(<contenttweaker:goldeningot>)
.addItemInput(<contenttweaker:redingot>)
.addItemInput(<contenttweaker:greeningot>)
.addItemInput(<contenttweaker:blueingot>)
.addItemInput(<tconevo:metal:10>)
.addItemOutput(<contenttweaker:magicalingot>*2)
.build();

RecipeBuilder.newBuilder("蕴魔合金锭2", "star_alloy_furance", 24000)
.addEnergyPerTickInput(24576)
.addItemInput(<contenttweaker:furance2>).setChance(0)
.addItemInput(<contenttweaker:purpleingot>)
.addItemInput(<contenttweaker:goldeningot>)
.addItemInput(<contenttweaker:redingot>)
.addItemInput(<contenttweaker:greeningot>)
.addItemInput(<contenttweaker:blueingot>)
.addItemInput(<tconevo:metal:10>)
.addItemOutput(<contenttweaker:magicalingot>*3)
.build();

RecipeBuilder.newBuilder("蕴魔合金锭3", "star_alloy_furance", 18000)
.addEnergyPerTickInput(32768)
.addItemInput(<contenttweaker:furance3>).setChance(0)
.addItemInput(<contenttweaker:purpleingot>)
.addItemInput(<contenttweaker:goldeningot>)
.addItemInput(<contenttweaker:redingot>)
.addItemInput(<contenttweaker:greeningot>)
.addItemInput(<contenttweaker:blueingot>)
.addItemInput(<tconevo:metal:10>)
.addItemOutput(<contenttweaker:magicalingot>*4)
.build();

//========================================牛牛机========================================
//牛奶
RecipeBuilder.newBuilder("牛奶-牛牛机", "niu_niu", 10)
.addEnergyPerTickInput(4096)
.addItemInput(<cregtech:mode:1>).setChance(0)
.addFluidOutput(<liquid:milk> * 500)
.build();

//星能液
RecipeBuilder.newBuilder("星能液-牛牛机", "niu_niu", 10)
.addEnergyPerTickInput(4096)
.addItemInput(<cregtech:mode:2>).setChance(0)
.addFluidOutput(<liquid:astralsorcery.liquidstarlight> * 200)
.build();

//========================================艾雅法拉========================================
//老婆饼
RecipeBuilder.newBuilder("老婆饼", "zl2", 20)
.addEnergyPerTickInput(4096)
.addItemInput(<contenttweaker:shadow_zl>)
.addItemOutput(<contenttweaker:pastry>)
.build();

//========================================低烈度核裂变增殖反应堆========================================
RecipeBuilder.newBuilder("低密度U-235", "low_intensity_nuclear_fission_breeder_reactor", 6000)
.addEnergyPerTickOutput(144)
.addFluidInput(<liquid:cryotheum>*3000)
.addFluidOutput(<liquid:pyrotheum>*3000)
.addItemInput(<nuclearcraft:fuel_uranium:4>*2).setChance(0.33)
.addItemOutput(<nuclearcraft:fuel_neptunium>*1).setChance(0.48)
.addItemOutput(<nuclearcraft:fuel_neptunium>*1).setChance(0.24)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.16)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.08)
.build();

RecipeBuilder.newBuilder("低密度镎-236", "low_intensity_nuclear_fission_breeder_reactor", 6000)
.addEnergyPerTickOutput(153)
.addFluidInput(<liquid:cryotheum>*3000)
.addFluidOutput(<liquid:pyrotheum>*3000)
.addItemInput(<nuclearcraft:fuel_neptunium>*2).setChance(0.33)
.addItemOutput(<nuclearcraft:fuel_neptunium>*1).setChance(0.04)
.addItemOutput(<nuclearcraft:fuel_neptunium>*1).setChance(0.02)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.32)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.16)
.addItemOutput(<nuclearcraft:fuel_americium>*1).setChance(0.28)
.addItemOutput(<nuclearcraft:fuel_americium>*1).setChance(0.14)
.build();

RecipeBuilder.newBuilder("低密度钚-239", "low_intensity_nuclear_fission_breeder_reactor", 6000)
.addEnergyPerTickOutput(162)
.addFluidInput(<liquid:cryotheum>*3000)
.addFluidOutput(<liquid:pyrotheum>*3000)
.addItemInput(<nuclearcraft:fuel_plutonium>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.32)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.16)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.32)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.16)
.build();

RecipeBuilder.newBuilder("低密度镅-242", "low_intensity_nuclear_fission_breeder_reactor", 6000)
.addEnergyPerTickOutput(173)
.addFluidInput(<liquid:cryotheum>*3000)
.addFluidOutput(<liquid:pyrotheum>*3000)
.addItemInput(<nuclearcraft:fuel_americium>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.64)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.80)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.96)
.build();

RecipeBuilder.newBuilder("低密度锔-243", "low_intensity_nuclear_fission_breeder_reactor", 6000)
.addEnergyPerTickOutput(180)
.addFluidInput(<liquid:cryotheum>*3000)
.addFluidOutput(<liquid:pyrotheum>*3000)
.addItemInput(<nuclearcraft:fuel_curium>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.32)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.16)
.addItemOutput(<nuclearcraft:fuel_berkelium>*1).setChance(0.24)
.addItemOutput(<nuclearcraft:fuel_berkelium>*1).setChance(0.12)
.addItemOutput(<nuclearcraft:fuel_californium>*1).setChance(0.08)
.addItemOutput(<nuclearcraft:fuel_californium>*1).setChance(0.04)
.build();

RecipeBuilder.newBuilder("低密度锫-248", "low_intensity_nuclear_fission_breeder_reactor", 6000)
.addEnergyPerTickOutput(195)
.addFluidInput(<liquid:cryotheum>*3000)
.addFluidOutput(<liquid:pyrotheum>*3000)
.addItemInput(<nuclearcraft:fuel_berkelium>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_californium>*1).setChance(0.64)
.addItemOutput(<nuclearcraft:fuel_californium>*1).setChance(0.80)
.addItemOutput(<nuclearcraft:fuel_californium>*1).setChance(0.96)
.build();

//========================================高烈度核裂变增殖反应堆========================================
RecipeBuilder.newBuilder("低密度U-235-高烈", "high_intensity_nuclear_fission_breeder_reactor", 300)
.addEnergyPerTickOutput(2880)
.addFluidInput(<liquid:cryotheum>*6000)
.addFluidOutput(<liquid:pyrotheum>*6000)
.addItemInput(<nuclearcraft:fuel_uranium:4>*2).setChance(0.33)
.addItemOutput(<nuclearcraft:fuel_neptunium>*1).setChance(0.96)
.addItemOutput(<nuclearcraft:fuel_neptunium>*1).setChance(0.48)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.32)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.16)
.build();

RecipeBuilder.newBuilder("低密度镎-236-高烈", "high_intensity_nuclear_fission_breeder_reactor", 300)
.addEnergyPerTickOutput(3060)
.addFluidInput(<liquid:cryotheum>*6000)
.addFluidOutput(<liquid:pyrotheum>*6000)
.addItemInput(<nuclearcraft:fuel_neptunium>*2).setChance(0.33)
.addItemOutput(<nuclearcraft:fuel_neptunium>*1).setChance(0.08)
.addItemOutput(<nuclearcraft:fuel_neptunium>*1).setChance(0.04)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.64)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.32)
.addItemOutput(<nuclearcraft:fuel_americium>*1).setChance(0.56)
.addItemOutput(<nuclearcraft:fuel_americium>*1).setChance(0.28)
.build();

RecipeBuilder.newBuilder("低密度钚-239-高烈", "high_intensity_nuclear_fission_breeder_reactor", 300)
.addEnergyPerTickOutput(3240)
.addFluidInput(<liquid:cryotheum>*6000)
.addFluidOutput(<liquid:pyrotheum>*6000)
.addItemInput(<nuclearcraft:fuel_plutonium>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.64)
.addItemOutput(<nuclearcraft:fuel_plutonium>*1).setChance(0.32)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.64)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.32)
.build();

RecipeBuilder.newBuilder("低密度镅-242-高烈", "high_intensity_nuclear_fission_breeder_reactor", 300)
.addEnergyPerTickOutput(3560)
.addFluidInput(<liquid:cryotheum>*6000)
.addFluidOutput(<liquid:pyrotheum>*6000)
.addItemInput(<nuclearcraft:fuel_americium>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.72)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.88)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.96)
.build();

RecipeBuilder.newBuilder("低密度锔-243-高烈", "high_intensity_nuclear_fission_breeder_reactor", 300)
.addEnergyPerTickOutput(3600)
.addFluidInput(<liquid:cryotheum>*6000)
.addFluidOutput(<liquid:pyrotheum>*6000)
.addItemInput(<nuclearcraft:fuel_curium>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.64)
.addItemOutput(<nuclearcraft:fuel_curium>*1).setChance(0.32)
.addItemOutput(<nuclearcraft:fuel_berkelium>*1).setChance(0.48)
.addItemOutput(<nuclearcraft:fuel_berkelium>*1).setChance(0.24)
.addItemOutput(<nuclearcraft:fuel_californium>*1).setChance(0.16)
.addItemOutput(<nuclearcraft:fuel_californium>*1).setChance(0.08)
.build();

RecipeBuilder.newBuilder("低密度锫-248-高烈", "high_intensity_nuclear_fission_breeder_reactor", 300)
.addEnergyPerTickOutput(3900)
.addFluidInput(<liquid:cryotheum>*6000)
.addFluidOutput(<liquid:pyrotheum>*6000)
.addItemInput(<nuclearcraft:fuel_berkelium>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_californium>*1).setChance(0.72)
.addItemOutput(<nuclearcraft:fuel_californium>*1).setChance(0.88)
.addItemOutput(<nuclearcraft:fuel_californium>*1).setChance(0.96)
.build();

//高浓度
RecipeBuilder.newBuilder("TBU-高烈", "high_intensity_nuclear_fission_breeder_reactor", 300)
.addEnergyPerTickOutput(2880)
.addFluidInput(<liquid:cryotheum>*12000)
.addFluidOutput(<liquid:pyrotheum>*12000)
.addItemInput(<nuclearcraft:fuel_thorium>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_uranium:6>*1).setChance(0.06)
.addItemOutput(<nuclearcraft:fuel_uranium:6>*1).setChance(0.03)
.addItemOutput(<nuclearcraft:fuel_neptunium:2>*1).setChance(0.1)
.addItemOutput(<nuclearcraft:fuel_neptunium:2>*1).setChance(0.05)
.build();

RecipeBuilder.newBuilder("高密度U-235-高烈", "high_intensity_nuclear_fission_breeder_reactor", 600)
.addEnergyPerTickOutput(5760)
.addFluidInput(<liquid:cryotheum>*12000)
.addFluidOutput(<liquid:pyrotheum>*12000)
.addItemInput(<nuclearcraft:fuel_uranium:6>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_uranium:6>*1).setChance(0.10)
.addItemOutput(<nuclearcraft:fuel_uranium:6>*1).setChance(0.05)
.addItemOutput(<nuclearcraft:fuel_plutonium:2>*1).setChance(0.28)
.addItemOutput(<nuclearcraft:fuel_plutonium:2>*1).setChance(0.14)
.addItemOutput(<nuclearcraft:fuel_neptunium:2>*1).setChance(0.16)
.addItemOutput(<nuclearcraft:fuel_neptunium:2>*1).setChance(0.08)
.build();

RecipeBuilder.newBuilder("高密度镎-236-高烈", "high_intensity_nuclear_fission_breeder_reactor", 600)
.addEnergyPerTickOutput(6120)
.addFluidInput(<liquid:cryotheum>*12000)
.addFluidOutput(<liquid:pyrotheum>*12000)
.addItemInput(<nuclearcraft:fuel_neptunium:2>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_uranium:6>*1).setChance(0.16)
.addItemOutput(<nuclearcraft:fuel_neptunium:2>*1).setChance(0.08)
.addItemOutput(<nuclearcraft:fuel_plutonium:2>*1).setChance(0.48)
.addItemOutput(<nuclearcraft:fuel_plutonium:2>*1).setChance(0.24)
.build();

RecipeBuilder.newBuilder("高密度钚-239-高烈", "high_intensity_nuclear_fission_breeder_reactor", 600)
.addEnergyPerTickOutput(6480)
.addFluidInput(<liquid:cryotheum>*12000)
.addFluidOutput(<liquid:pyrotheum>*12000)
.addItemInput(<nuclearcraft:fuel_plutonium:2>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_americium:2>*1).setChance(0.32)
.addItemOutput(<nuclearcraft:fuel_americium:2>*1).setChance(0.16)
.addItemOutput(<nuclearcraft:fuel_curium:2>*1).setChance(0.32)
.addItemOutput(<nuclearcraft:fuel_curium:2>*1).setChance(0.16)
.build();

RecipeBuilder.newBuilder("高密度镅-242-高烈", "high_intensity_nuclear_fission_breeder_reactor", 600)
.addEnergyPerTickOutput(6920)
.addFluidInput(<liquid:cryotheum>*12000)
.addFluidOutput(<liquid:pyrotheum>*12000)
.addItemInput(<nuclearcraft:fuel_americium:2>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_curium:2>*1).setChance(0.56)
.addItemOutput(<nuclearcraft:fuel_curium:2>*1).setChance(0.28)
.addItemOutput(<nuclearcraft:fuel_berkelium:2>*1).setChance(0.08)
.addItemOutput(<nuclearcraft:fuel_berkelium:2>*1).setChance(0.04)
.build();

RecipeBuilder.newBuilder("高密度锔-243-高烈", "high_intensity_nuclear_fission_breeder_reactor", 600)
.addEnergyPerTickOutput(7200)
.addFluidInput(<liquid:cryotheum>*12000)
.addFluidOutput(<liquid:pyrotheum>*12000)
.addItemInput(<nuclearcraft:fuel_curium:2>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_curium:2>*1).setChance(0.06)
.addItemOutput(<nuclearcraft:fuel_curium:2>*1).setChance(0.03)
.addItemOutput(<nuclearcraft:fuel_berkelium:2>).setChance(0.32)
.addItemOutput(<nuclearcraft:fuel_berkelium:2>*1).setChance(0.16)
.addItemOutput(<nuclearcraft:fuel_californium:2>*1).setChance(0.08)
.addItemOutput(<nuclearcraft:fuel_californium:2>*1).setChance(0.04)
.build();

RecipeBuilder.newBuilder("高密度锫-248-高烈", "high_intensity_nuclear_fission_breeder_reactor", 600)
.addEnergyPerTickOutput(7800)
.addFluidInput(<liquid:cryotheum>*12000)
.addFluidOutput(<liquid:pyrotheum>*12000)
.addItemInput(<nuclearcraft:fuel_berkelium:2>*2).setChance(0.67)
.addItemOutput(<nuclearcraft:fuel_californium:2>*1).setChance(0.64)
.addItemOutput(<nuclearcraft:fuel_californium:2>*1).setChance(0.64)
.addItemOutput(<nuclearcraft:fuel_californium:2>*1).setChance(0.64)
.build();

//=======================================魔法泉水=======================================
//魔法泉水
RecipeBuilder.newBuilder("魔法泉水", "mana_water", 200)
.addFluidOutput(<liquid:mana_water>*1000)
.build();

//========================================烹饪锅========================================
//速效救心丸
RecipeBuilder.newBuilder("速效救心丸-烹饪锅", "pengrenguo", 40)
.addFluidInput(<liquid:potion>.withTag({Potion: "cofhcore:healing4"})*1000)
.addItemInput(<nuclearcraft:flour>*8)
.addItemInput(<nuclearcraft:gelatin>*4)
.addItemOutput(<contenttweaker:heal>*2)
.build();

//十全大补汤
RecipeBuilder.newBuilder("十全大补汤", "pengrenguo", 100)
.addGasInput("nutrientsolution",2000)
.addItemInput(<ore:ingotChocolate>*4)
.addItemInput(<minecraft:golden_apple>*4)
.addItemInput(<ore:cake>)
.addFluidOutput(<liquid:concentrated_nutrient_solution>*1000)
.build();

//超级煲
RecipeBuilder.newBuilder("超级煲", "pengrenguo", 100)
.addFluidInput(<liquid:concentrated_nutrient_solution>*2000)
.addItemInput(<avaritia:resource:3>*23)
.addItemInput(<contenttweaker:heal>*4)
.addItemInput(<quark:rune:16>*8)
.addItemInput(<nuclearcraft:smore>*12)
.addItemInput(<contenttweaker:bat>*3)
.addItemInput(<contenttweaker:pastry>*3)
.addItemInput(<contenttweaker:oganesson897>)
.addItemInput(<contenttweaker:chengzhenjie>)
.addItemInput(<contenttweaker:xiaoyu>)
.addItemInput(<contenttweaker:zhixiaoma>)
.addItemInput(<contenttweaker:moyi>)
.addItemInput(<contenttweaker:ibicir>)
.addItemInput(<contenttweaker:inkandsoul>)
.addItemInput(<contenttweaker:ximen>)
.addItemInput(<contenttweaker:sumlotus>)
.addItemInput(<contenttweaker:xb_asuna>)
.addItemOutput(<avaritia:ultimate_stew>*8)
.build();

//寰宇肉丸
RecipeBuilder.newBuilder("寰宇肉丸", "pengrenguo", 100)
.addFluidInput(<liquid:nutrient_distillation>*2000)
.addItemInput(<avaritia:resource:3>*16)
.addItemInput(<minecraft:cooked_fish>*8)
.addItemInput(<minecraft:cooked_fish:1>*8)
.addItemInput(<minecraft:cooked_mutton>*8)
.addItemInput(<minecraft:cooked_chicken>*8)
.addItemInput(<minecraft:cooked_porkchop>*8)
.addItemInput(<minecraft:cooked_rabbit>*8)
.addItemInput(<minecraft:cooked_beef>*8)
.addItemInput(<tconstruct:edible:20>*8)
.addItemInput(<tconstruct:edible:21>*8)
.addItemInput(<tconstruct:edible:10>*8)
.addItemInput(<tconstruct:edible:11>*8)
.addItemInput(<tconstruct:edible:12>*8)
.addItemInput(<tconstruct:edible:14>*8)
.addItemInput(<tconstruct:edible:15>*8)
.addItemOutput(<avaritia:cosmic_meatballs>*8)
.build();

//========================================装配线========================================
//显示调整
MMEvents.onControllerGUIRender("assembly_line", function(event as ControllerGUIRenderEvent) {
    val controller as IMachineController = event.controller;
    //val data = controller.customData.asMap();
    event.extraInfo = "§a你需要从最靠近控制器的物品输入仓按照材料在配方中显示顺序依次向远处输入仓输入材料(未实装)";
});

//创造模式强化头颅
RecipeBuilder.newBuilder("创造模式强化头颅", "assembly_line", 80)
.addEnergyPerTickInput(65536)
.addFluidInput(<liquid:ender_distillation>*2000)
.addItemInput(<contenttweaker:universe_ingot>)      //.setTag("input_0")
.addItemInput(<minecraft:skull:1>*2)                //.setTag("input_1")
.addItemInput(<minecraft:skull:4>*2)                //.setTag("input_2")
.addItemInput(<minecraft:skull:2>*2)                //.setTag("input_3")
.addItemInput(<minecraft:skull:5>*2)                //.setTag("input_4")
.addItemInput(<enderio:block_enderman_skull:2>*2)   //.setTag("input_5")
.addItemInput(<tconstruct:metal:6>*2)               //.setTag("input_6")
.addItemInput(<tconstruct:metal:2>*2)               //.setTag("input_7")
.addItemInput(<tconstruct:metal:3>*2)               //.setTag("input_8")
.addItemInput(<tconevo:metal_block:6>*2)            //.setTag("input_9")
.addItemInput(<tconevo:metal_block:7>*2)            //.setTag("input_10")
.addItemInput(<tconevo:metal_block:5>*2)            //.setTag("input_11")
.addItemInput(<contenttweaker:zl_block>*2)          //.setTag("input_12")
.addItemInput(<tconstruct:materials:11>*2)          //.setTag("input_13")
.addItemInput(<tconstruct:materials:9>*2)           //.setTag("input_14")
.addItemInput(<tconstruct:materials:10>*2)          //.setTag("input_15")
.addItemOutput(<tconstruct:materials:50>*2)
.build();

//数字化苦难之井
RecipeBuilder.newBuilder("数字化苦难之井", "assembly_line", 200)
.addEnergyPerTickInput(65536)
.addFluidInput(<liquid:rune>*40000)
.addItemInput(<deepmoblearning:machine_casing>)                     //.setTag("input_0")
.addItemInput(<deepmoblearning:simulation_chamber>)                 //.setTag("input_1")
.addItemInput(<bloodmagic:inscription_tool:6>)                      //.setTag("input_2")
.addItemInput(<bloodmagic:blood_rune:9>*8)                          //.setTag("input_3")
.addItemInput(<bloodmagic:blood_rune:1>*8)                          //.setTag("input_4")
.addItemInput(<bloodmagic:blood_rune:10>*8)                         //.setTag("input_5")
.addItemInput(<bloodmagic:blood_rune:3>*8)                          //.setTag("input_6")
.addItemInput(<bloodmagic:blood_rune:7>*8)                          //.setTag("input_7")
.addItemInput(<contenttweaker:soulgem2>*16)                         //.setTag("input_8")
.addItemInput(<contenttweaker:soulplate>*16)                        //.setTag("input_9")
.addItemInput(<bloodmagic:decorative_brick:2>*16)                   //.setTag("input_10")
.addItemInput(<deepmoblearningbm:blood_infused_glitch_ingot>*16)    //.setTag("input_11")
.addItemInput(<tconevo:metal:25>*32)                                //.setTag("input_12")
.addItemInput(<bloodmagic:blood_tank:3>)                            //.setTag("input_13")
.addItemInput(<bloodmagic:component:8>*16)                          //.setTag("input_14")
.addItemInput(<contenttweaker:universe_ingot>*2)                       //.setTag("input_15")
.addItemOutput(<deepmoblearningbm:digital_agonizer>)
.build();

//数字化恶魔意志
RecipeBuilder.newBuilder("数字化恶魔意志", "assembly_line", 200)
.addEnergyPerTickInput(65536)
.addFluidInput(<liquid:rune>*40000)
.addItemInput(<deepmoblearning:machine_casing>)                     //.setTag("input_0")
.addItemInput(<deepmoblearning:simulation_chamber>)                 //.setTag("input_1")
.addItemInput(<bloodmagic:inscription_tool:6>)                      //.setTag("input_2")
.addItemInput(<bloodmagic:demon_extras:10>*8)                       //.setTag("input_3")
.addItemInput(<bloodmagic:demon_extras:11>*8)                       //.setTag("input_4")
.addItemInput(<bloodmagic:demon_extras:12>*8)                       //.setTag("input_5")
.addItemInput(<bloodmagic:demon_extras:13>*8)                       //.setTag("input_6")
.addItemInput(<bloodmagic:demon_extras:14>*8)                       //.setTag("input_7")
.addItemInput(<contenttweaker:soulgem2>*16)                         //.setTag("input_8")
.addItemInput(<contenttweaker:soulplate>*16)                        //.setTag("input_9")
.addItemInput(<bloodmagic:decorative_brick:2>*16)                   //.setTag("input_10")
.addItemInput(<deepmoblearningbm:blood_infused_glitch_ingot>*16)    //.setTag("input_11")
.addItemInput(<tconevo:metal:30>*32)                                //.setTag("input_12")
.addItemInput(<bloodmagic:soul_gem:4>)                              //.setTag("input_13")
.addItemInput(<bloodmagic:points_upgrade>*16)                       //.setTag("input_14")
.addItemInput(<contenttweaker:universe_ingot>*2)                       //.setTag("input_15")
.addItemOutput(<deepmoblearningbm:digital_will_injector>)
.build();

//黑洞湮灭反应堆控制器
RecipeBuilder.newBuilder("黑洞湮灭反应堆控制器","assembly_line", 1200)
.addEnergyPerTickInput(65536)
.addItemInput(<matteroverdrive:tritanium_plate>*320)
.addItemInput(<matteroverdrive:forcefield_emitter>*64)
.addItemInput(<matteroverdrive:me_conversion_matrix>)
.addItemInput(<eternalsingularity:eternal_singularity>*4)
.addItemOutput(<modularmachinery:black_hole_annihilation_reactor_controller>)
.build();

//进阶电路基板2
RecipeBuilder.newBuilder("进阶电路基板2", "assembly_line", 80)
.addEnergyPerTickInput(65536)
.addItemInput(<contenttweaker:compressedresinplate>)
.addItemInput(<nuclearcraft:part:6>*2)
.addItemInput(<nuclearcraft:gelatin>)
.addItemInput(<nuclearcraft:part>)
.addItemInput(<contenttweaker:stainless_ingot>)
.addItemOutput(<contenttweaker:advancedcircuitplate>*4)
.build();

//精英电路基板3/4
RecipeBuilder.newBuilder("精英电路基板3", "assembly_line", 80)
.addEnergyPerTickInput(65536)
.addItemInput(<cregtech:meta.material>*2)
.addItemInput(<avaritia:resource:3>*2)
.addItemInput(<mekanism:polyethene:2>*2)
.addItemInput(<plustic:osmiridiumingot>)
.addFluidInput(<liquid:sulfuric_acid>*1000)
.addItemOutput(<contenttweaker:epiccircuitplate>*4)
.build();

RecipeBuilder.newBuilder("精英电路基板4", "assembly_line", 80)
.addEnergyPerTickInput(65536)
.addItemInput(<cregtech:meta.material>*2)
.addItemInput(<avaritia:resource:3>*2)
.addItemInput(<mekanism:polyethene:2>*2)
.addItemInput(<plustic:osmiridiumingot>)
.addFluidInput(<liquid:sulfuricacid>*1000)
.addItemOutput(<contenttweaker:epiccircuitplate>*4)
.build();

//大师电路基板2
RecipeBuilder.newBuilder("大师电路基板2", "assembly_line", 80)
.addEnergyPerTickInput(65536)
.addItemInput(<cregtech:meta.material>*2)
.addItemInput(<deepmoblearning:glitch_infused_ingot>)
.addItemInput(<nuclearcraft:compound:1>)
.addFluidInput(<liquid:nak>*1440)
.addItemOutput(<contenttweaker:mastercircuitplate>*4)
.build();

//极限电路基板
RecipeBuilder.newBuilder("极限电路基板", "assembly_line", 600)
.addEnergyPerTickInput(65536)
.addItemInput(<enderio:item_material:16>)//.setTag("0")
.addItemInput(<mekanism:plutoniumpellet>)//.setTag("1")
.addItemInput(<nuclearcraft:part:2>*4)//.setTag("2")
.addItemInput(<deepmoblearning:glitch_infused_ingot>*4)//.setTag("3")
.addItemInput(<contenttweaker:compressedresinplate>*4)//.setTag("4")
.addItemInput(<nuclearcraft:part:6>*8)//.setTag("5")
.addItemInput(<nuclearcraft:compound:1>*8)//.setTag("6")
.addItemInput(<environmentaltech:aethium_crystal>*8)//.setTag("7")
.addItemInput(<tconstruct:materials:9>*16)//.setTag("8")
.addItemInput(<enderio:item_material:15>*16)//.setTag("9")
.addItemInput(<threng:material:5>*16)//.setTag("10")
.addItemInput(<mekanism:crystal:7>*16)//.setTag("11")
.addItemInput(<minecraft:prismarine_shard>*16)//.setTag("12")
.addItemInput(<minecraft:prismarine_crystals>*16)//.setTag("13")
.addItemInput(<plustic:osgloglasingot>*16)//.setTag("14")
.addItemInput(<contenttweaker:zl_ingot>*16)//.setTag("15")
.addFluidInput(<liquid:nak>*2880)
.addItemOutput(<contenttweaker:extremecircuitplate>*4)
.build();

/*
RecipeBuilder.newBuilder("", "assembly_line", 100)
.addEnergyPerTickInput(32768)
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemInput()
.addItemOutput()
.build();
*/

//========================================生物质培养仓========================================
//牛肉
RecipeBuilder.newBuilder("牛肉", "peiyang", 100)
.addEnergyPerTickInput(8192)
.addItemInput(<minecraft:beef>).setChance(0)
.addItemInput(<minecraft:rotten_flesh>*16)
.addItemInput(<thermalfoundation:fertilizer:2>*4)
.addItemInput(<thermalfoundation:material:819>*4)
.addItemOutput(<minecraft:beef>*16)
.build();

//猪肉
RecipeBuilder.newBuilder("猪肉", "peiyang", 100)
.addEnergyPerTickInput(8192)
.addItemInput(<minecraft:porkchop>).setChance(0)
.addItemInput(<minecraft:rotten_flesh>*16)
.addItemInput(<thermalfoundation:fertilizer:2>*4)
.addItemInput(<thermalfoundation:material:819>*4)
.addItemOutput(<minecraft:porkchop>*16)
.build();

//鸡肉
RecipeBuilder.newBuilder("鸡肉", "peiyang", 100)
.addEnergyPerTickInput(8192)
.addItemInput(<minecraft:chicken>).setChance(0)
.addItemInput(<minecraft:rotten_flesh>*16)
.addItemInput(<thermalfoundation:fertilizer:2>*4)
.addItemInput(<thermalfoundation:material:819>*4)
.addItemOutput(<minecraft:chicken>*16)
.build();

//羊肉
RecipeBuilder.newBuilder("羊肉", "peiyang", 100)
.addEnergyPerTickInput(8192)
.addItemInput(<minecraft:mutton>).setChance(0)
.addItemInput(<minecraft:rotten_flesh>*16)
.addItemInput(<thermalfoundation:fertilizer:2>*4)
.addItemInput(<thermalfoundation:material:819>*4)
.addItemOutput(<minecraft:mutton>*16)
.build();

//兔肉
RecipeBuilder.newBuilder("兔肉", "peiyang", 100)
.addEnergyPerTickInput(8192)
.addItemInput(<minecraft:rabbit>).setChance(0)
.addItemInput(<minecraft:rotten_flesh>*16)
.addItemInput(<thermalfoundation:fertilizer:2>*4)
.addItemInput(<thermalfoundation:material:819>*4)
.addItemOutput(<minecraft:rabbit>*16)
.build();

//========================================机你太美========================================
//下蛋
RecipeBuilder.newBuilder("下蛋", "chicken", 200)
.addItemOutput(<minecraft:egg>)
.addItemOutput(<minecraft:feather>).setChance(0.5)
.build();

//========================================灾厄之泉========================================
//产血
RecipeBuilder.newBuilder("物质产血", "blood", 40)
.addEnergyPerTickInput(8192)
.addItemInput(<ore:matter>)
.addFluidOutput(<liquid:lifeessence>*24000)
.addItemOutput(<contenttweaker:soulgem>)
.build();

//========================================加速机========================================
//时间瓶充能30分钟
RecipeBuilder.newBuilder("时间瓶充能30分钟", "speeder", 1200)
.addItemInput(<contenttweaker:mana_crystal2>*2).setChance(0.5)
.addItemInput(<tiab:timeinabottle>)
.addItemOutput(<tiab:timeinabottle>.withTag({timeData: {storedTime: 36000}}))
.build();

//========================================压缩加速机========================================
//时间瓶充能5小时
RecipeBuilder.newBuilder("时间瓶充能5小时", "compressed_speeder", 1200)
.addItemInput(<contenttweaker:mana_crystal3>).setChance(0.5)
.addItemInput(<tiab:timeinabottle>)
.addItemOutput(<tiab:timeinabottle>.withTag({timeData: {storedTime: 360000}}))
.build();

//========================================高温烘干室========================================
{
var vanilla_cooked_meat as IItemStack[]=[
<minecraft:cooked_chicken>,
<minecraft:cooked_porkchop>,
<minecraft:cooked_fish>,
<minecraft:cooked_mutton>,
<minecraft:cooked_rabbit>,
<minecraft:cooked_fish:1>,
<tconstruct:edible:10>,
];  
for meat in vanilla_cooked_meat{
<ore:vanilla_cooked_meat>.add(meat);
}}
//熟肉转皮革
RecipeBuilder.newBuilder("熟肉转皮革", "hot_room", 2400)
.addItemInput(<ore:vanilla_cooked_meat>*16)
.addItemOutput(<minecraft:leather>*16)
.build();

//鸡肉干
RecipeBuilder.newBuilder("鸡肉干", "hot_room", 2400)
.addItemInput(<minecraft:chicken>*16)
.addItemOutput(<tconstruct:edible:12>*16)
.build();

//牛肉干
RecipeBuilder.newBuilder("牛肉干", "hot_room", 2400)
.addItemInput(<minecraft:beef>*16)
.addItemOutput(<tconstruct:edible:11>*16)
.build();

//培根干
RecipeBuilder.newBuilder("培根干", "hot_room", 2400)
.addItemInput(<minecraft:porkchop>*16)
.addItemOutput(<tconstruct:edible:13>*16)
.build();

//腐肉干
RecipeBuilder.newBuilder("腐肉干", "hot_room", 2400)
.addItemInput(<minecraft:rotten_flesh>*16)
.addItemOutput(<tconstruct:edible:10>*16)
.build();

//羊肉干
RecipeBuilder.newBuilder("羊肉干", "hot_room", 2400)
.addItemInput(<minecraft:mutton>*16)
.addItemOutput(<tconstruct:edible:14>*16)
.build();

//兔肉干
RecipeBuilder.newBuilder("兔肉干", "hot_room", 2400)
.addItemInput(<minecraft:rabbit>*16)
.addItemOutput(<tconstruct:edible:15>*16)
.build();

//鱼干
RecipeBuilder.newBuilder("鱼干", "hot_room", 2400)
.addItemInput(<minecraft:fish>*16)
.addItemOutput(<tconstruct:edible:20>*16)
.build();

//鲑鱼干
RecipeBuilder.newBuilder("鲑鱼干", "hot_room", 2400)
.addItemInput(<minecraft:fish:1>*16)
.addItemOutput(<tconstruct:edible:21>*16)
.build();

//小丑鱼干
RecipeBuilder.newBuilder("小丑鱼干", "hot_room", 2400)
.addItemInput(<minecraft:fish:2>*16)
.addItemOutput(<tconstruct:edible:22>*16)
.build();

//河豚干
RecipeBuilder.newBuilder("河豚干", "hot_room", 2400)
.addItemInput(<minecraft:fish:3>*16)
.addItemOutput(<tconstruct:edible:23>*16)
.build();

//=======================================虚空氦收集器=======================================
MachineModifier.setMaxParallelism("void_helium_collector", 32);
RecipeBuilder.newBuilder("液氦收集-常规", "void_helium_collector", 100)
.addEnergyPerTickInput(1024)
.setAltitude(2,253)
.addFluidInput(<liquid:cryotheum> * 250)
.addFluidOutput(<liquid:liquidhelium> * 100)
.build();

RecipeBuilder.newBuilder("液氦收集-高空", "void_helium_collector", 50)
.setAltitude(254,255)
.addFluidInput(<liquid:cryotheum> * 250)
.addFluidOutput(<liquid:liquidhelium> * 100)
.build();

RecipeBuilder.newBuilder("液氦收集-深层", "void_helium_collector", 50)
.addEnergyPerTickInput(2048)
.setAltitude(0,1)
.addFluidInput(<liquid:cryotheum> * 250)
.addFluidOutput(<liquid:liquidhelium> * 200)
.build();