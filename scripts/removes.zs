//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack;

//移除配方
var item as IItemStack[]=[
//DMB
<deepmoblearningbm:digital_will_injector>,
<deepmoblearningbm:digital_agonizer>,
//下界生物农场
<tinymobfarm:inferno_farm>,
//终极生物农场
<tinymobfarm:ultimate_farm>,
//电动刷怪笼
<enderio:block_powered_spawner>,
//量子压缩机
<extendedcrafting:compressor>,
//机械控制器
<modularmachinery:blockcontroller>,
//钛铁矿
<galacticraftplanets:asteroids_block:4>,
<galacticraftplanets:item_basic_asteroids:4>
];  
for i in item{
recipes.remove(i);
}

//移除并隐藏
var hide as IItemStack[]=[
//热传导
<immersiveengineering:metal_device1:3>,
//樱护甲
<sakura:samurai_helmet>,
<sakura:samurai_chest>,
<sakura:samurai_pants>,
<sakura:samurai_shoes>,
<sakura:soldier_helmet>,
<sakura:soldier_chest>,
<sakura:soldier_pants>,
<sakura:soldier_shoes>,
<sakura:haori>,
<sakura:kimono>,
<sakura:strawhat>,
//GC
<galacticraftcore:basic_item:1>,
<galacticraftcore:basic_item>,
<galacticraftcore:oil_canister_partial:1001>,
<galacticraftcore:steel_boots>,
<galacticraftcore:steel_leggings>,
<galacticraftcore:steel_chestplate>,
<galacticraftcore:steel_helmet>,
<galacticraftcore:steel_sword>,
<galacticraftcore:aluminum_wire>,
<galacticraftcore:aluminum_wire:1>,
<galacticraftcore:aluminum_wire:2>,
<galacticraftcore:aluminum_wire:3>,
<galacticraftcore:fluid_pipe>,
<galacticraftcore:refinery>,
<galacticraftcore:basic_block_core:5>,
<galacticraftcore:basic_block_core:6>,
<galacticraftcore:basic_block_core:7>,
<galacticraftcore:magnetic_table>,
<galacticraftcore:enclosed:14>,
<galacticraftcore:enclosed:15>,
<galacticraftcore:solar>,
<galacticraftcore:solar:4>,
<galacticraftcore:machine>,
<galacticraftcore:machine:12>,
<galacticraftcore:machine2>,
<galacticraftcore:machine_tiered>,
<galacticraftcore:steel_hoe>,
<galacticraftcore:steel_shovel>,
<galacticraftcore:steel_axe>,
<galacticraftcore:steel_pickaxe>,
<galacticraftcore:fluid_tank>,
<galacticraftcore:machine4>,
<galacticraftcore:machine_tiered:12>,
<galacticraftcore:machine_tiered:8>,
<galacticraftcore:machine_tiered:4>,
<galacticraftplanets:laser_turret>,
<galacticraftplanets:desh_sword>,
<galacticraftplanets:desh_spade>,
<galacticraftplanets:desh_hoe>,
<galacticraftplanets:desh_axe>,
<galacticraftplanets:desh_pick_slime>,
<galacticraftplanets:desh_pick>,
<galacticraftplanets:basic_item_venus:6>,
<galacticraftplanets:volcanic_pickaxe>,
<galacticraftplanets:titanium_hoe>,
<galacticraftplanets:titanium_pickaxe>,
<galacticraftplanets:titanium_boots>,
<galacticraftplanets:titanium_chestplate>,
<galacticraftplanets:titanium_helmet>,
<galacticraftcore:basic_item:12>,
<galacticraftplanets:basic_item_venus:5>,
<galacticraftplanets:solar_array_module>,
<galacticraftplanets:titanium_sword>,
<galacticraftplanets:titanium_shovel>,
<galacticraftplanets:titanium_axe>,
<galacticraftplanets:titanium_leggings>,
<galacticraftplanets:beam_receiver>,
<galacticraftplanets:beam_reflector>,
<galacticraftplanets:solar_array_controller>,
<galacticraftplanets:desh_helmet>,
<galacticraftplanets:desh_chestplate>,
<galacticraftplanets:desh_leggings>,
<galacticraftplanets:desh_boots>,
<galacticraftplanets:walkway:1>,
<galacticraftplanets:walkway:2>,
<draconicadditions:chaotic_chest>,
<galacticraftcore:machine2:4>,
//AA
<actuallyadditions:block_grinder_double>,
<actuallyadditions:block_grinder>,
<actuallyadditions:item_drill:*>,
<actuallyadditions:block_furnace_solar>,
<actuallyadditions:block_player_interface>,
<actuallyadditions:item_drill_upgrade_speed>,
<actuallyadditions:item_drill_upgrade_speed_ii>,
<actuallyadditions:item_drill_upgrade_speed_iii>,
<actuallyadditions:item_drill_upgrade_silk_touch>,
<actuallyadditions:item_drill_upgrade_fortune>,
<actuallyadditions:item_drill_upgrade_fortune_ii>,
<actuallyadditions:item_bag>,
<actuallyadditions:block_heat_collector>,
<actuallyadditions:item_void_bag>,
<actuallyadditions:block_coal_generator>,
<actuallyadditions:block_item_repairer>,
<actuallyadditions:item_drill_upgrade_three_by_three>,
<actuallyadditions:item_drill_upgrade_five_by_five>,
<actuallyadditions:item_drill_upgrade_block_placing>,
<actuallyadditions:block_leaf_generator>,
<actuallyadditions:item_spawner_changer>,
//==============其他==============
<buildinggadgets:exchangertool>,
<buildinggadgets:destructiontool>,
<buildinggadgets:copypastetool>,
<botania:specialflower>.withTag({type: "entropinnyum"}),
<botania:floatingspecialflower>.withTag({type: "entropinnyum"}),
<danknull:danknull_dock>,
//出货箱
<harvestcraft:shippingbin>,
//恒星导管
<enderio:item_endergy_conduit:11>,
//怪物磨床(预制)
<prefab:item_monster_masher>,
//宝石刻印校准
<thermalexpansion:augment:720>,
//通货能源炉
<thermalexpansion:dynamo:5>,
//工具锻造台萤石
<tconstruct:toolforge>.withTag({textureBlock: {id: "minecraft:glowstone", Count: 1 as byte, Damage: 0 as short}}),
//盔甲装配台萤石
<conarm:armorforge>.withTag({textureBlock: {id: "minecraft:glowstone", Count: 1 as byte, Damage: 0 as short}}),
//水井
<harvestcraft:well>,
//移壳杆
<botania:exchangerod>,
//炽心法杖
<botania:smeltrod>,
//农贸市场
<harvestcraft:market>,
//物质炮
<appliedenergistics2:matter_cannon>,
//飞轮戒指
<bountifulbaubles:ringflywheel>,
<bountifulbaubles:ringflywheeladvanced>,
//建造机
<rftools:builder>,
//MEK聚变外壳
<mekanismgenerators:reactor:1>,
//MEK涡轮外壳
<mekanismgenerators:generator:10>,
//IE小型太阳能板
<engineersdecor:small_solar_panel>,
//刷怪箱
<rftools:spawner>,
//矿物产量升级
<tinker_io:upg:6>,
//无尽磨珠
<avaritiaio:grindingballinfinity>,
//工具销毁器
<embers:breaker>,
//大地权杖
<botania:terraformrod>,
//造桥模块
<modularrouters:module:10>,
<modularrouters:module:11>,
//种植站
<enderio:block_farm_station>,
//空间塔
<appliedenergistics2:spatial_pylon>,
<appliedenergistics2:spatial_io_port>,
//肩托式背包
<tconstruct:piggybackpack>,
//怪物磨床
<draconicevolution:grinder>,
//储物箱
<thermalexpansion:cache>,
//保险箱
<thermalexpansion:strongbox>,
//祛魔台
<draconicevolution:diss_enchanter>,
//黑洞护符
<botania:blackholetalisman>,
//EFLN
<tconstruct:throwball:1>,
//拉普达碎片
<botania:laputashard>,
//魔力风暴
<botania:manabomb>,
//物流整理机
<mekanism:machineblock:15>,
//数字采矿机
<mekanism:machineblock:4>,
//锚升级
<mekanism:anchorupgrade>,
//私人箱子
<mekanism:machineblock:13>,
//机器人
<mekanism:robit>,
//箱柜
<mekanism:basicblock:6>.withTag({tier: 0}),
<mekanism:basicblock:6>.withTag({tier: 1}),
<mekanism:basicblock:6>.withTag({tier: 2}),
<mekanism:basicblock:6>.withTag({tier: 3}),
//生命物质操纵器
<enderutilities:livingmanipulator>,
//狱卒模块
<enderutilities:enderpart:45>,
//椅子之杖
<enderutilities:chairwand>,
//手推车
<enderutilities:dolly>,
//吊桥
<enderutilities:draw_bridge>,
//高级吊桥
<enderutilities:draw_bridge:1>,
//生物轭具
<enderutilities:mobharness>,
//末影之手
<botania:enderhand>,
//纸箱
<mekanism:cardboardbox>,
//流体储罐(MEK)
<mekanism:machineblock2:11>.withTag({tier: 0}),
<mekanism:machineblock2:11>.withTag({tier: 1}),
<mekanism:machineblock2:11>.withTag({tier: 2}),
<mekanism:machineblock2:11>.withTag({tier: 3}),
//玩家背包模块
<modularrouters:module:13>,
//旅行手袋
<extrabotany:masterhandbag>,
//旅行者背包
<conarm:travel_sack>,
//旅行者腰带
<conarm:travel_belt>,
<conarm:travel_potion>,
<conarm:travel_belt_base>,
//传送门框架
<enderutilities:frame>,
//传送门
<enderutilities:enderporter:1>,
<enderutilities:enderporter>,
//传送定标器
<enderutilities:portalscaler>,
//生命聚合器
<botania:spawnermover>,
//生命灌注器
<botania:spawnerclaw>,
//便携元件
<appliedenergistics2:portable_cell>,
//杀手透镜
<actuallyadditions:item_more_damage_lens>,
//无线样本终端
<appliedenergistics2:wireless_pattern_terminal>,
//超能物质
<matteroverdrive:decomposer>,
<matteroverdrive:replicator>,
<matteroverdrive:matter_recycler>,
<matteroverdrive:matter_analyzer>,
<matteroverdrive:pattern_monitor>,
<matteroverdrive:pattern_storage>,
<matteroverdrive:network_switch>,
<matteroverdrive:network_router>,
<matteroverdrive:spacetime_accelerator>,
<matteroverdrive:transporter>,
<matteroverdrive:fusion_reactor_io>,
<matteroverdrive:fusion_reactor_coil>,
<matteroverdrive:fusion_reactor_controller>,
<matteroverdrive:gravitational_stabilizer>,
<matteroverdrive:solar_panel>,
<matteroverdrive:network_pipe>,
<matteroverdrive:portable_decomposer>,
//三钛合金扳手
<matteroverdrive:tritanium_wrench>,
//流体模块/升级
<modularrouters:module:14>,
<modularrouters:upgrade:5>,
//工厂投掷器
<engineersdecor:factory_dropper>
];  
for a in hide{
mods.jei.JEI.removeAndHide(a);
}


