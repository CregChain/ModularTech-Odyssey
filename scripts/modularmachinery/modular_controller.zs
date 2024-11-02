//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or serverimport crafttweaker.item.IItemStack as IItemStack;

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

//小型筛矿机控制器
recipes.addShaped(<modularmachinery:mini_orescreening_machine_controller>, [[<embers:block_dawnstone>, <modularmachinery:blockcasing>, <embers:block_dawnstone>],[<modularmachinery:blockcasing>, <embers:mech_core>, <modularmachinery:blockcasing>], [<immersiveengineering:metal_decoration0:5>, <nuclearcraft:ingot_block:7>, <immersiveengineering:metal_decoration0:5>]]);

//魔力聚合装置控制器
recipes.addShapeless(<modularmachinery:mana_fusion_controller>, [<modularmachinery:mana_fusion_controller>]);
recipes.addShaped(<modularmachinery:mana_fusion_controller>, [[<botania:manaresource:14>, <botania:rune:8>, <botania:manaresource:14>],[<contenttweaker:advancedcircuit>, <contenttweaker:modularblock>, <contenttweaker:advancedcircuit>], [<botania:livingrock>, <botania:runealtar>, <botania:livingrock>]]);

//真空冷冻机控制器
recipes.addShaped(<modularmachinery:vacuum_freezer_controller>, [[<minecraft:ice>, <minecraft:packed_ice>, <minecraft:ice>],[<thermalfoundation:storage:6>, <contenttweaker:modularblock>, <thermalfoundation:storage:6>], [<contenttweaker:basiccircuit>, <thermalfoundation:storage:6>, <contenttweaker:basiccircuit>]]);

//批量真空冷冻机控制器
recipes.addShaped(<modularmachinery:large_vacuum_freezer_controller>, [[<nuclearcraft:part:3>, <nuclearcraft:block_ice>, <nuclearcraft:part:3>],[<contenttweaker:epiccircuit>, <modularmachinery:vacuum_freezer_controller>, <contenttweaker:epiccircuit>], [<nuclearcraft:part:3>, <nuclearcraft:electromagnet_supercooler_idle>, <nuclearcraft:part:3>]]);

//虚空氦收集器控制器
recipes.addShaped(<modularmachinery:void_helium_collector_controller>, [[<nuclearcraft:supercooler_idle>, <nuclearcraft:helium_collector_compact>, <nuclearcraft:supercooler_idle>],[<nuclearcraft:helium_collector_compact>, <modularmachinery:vacuum_freezer_controller>, <nuclearcraft:helium_collector_compact>], [<nuclearcraft:supercooler_idle>, <nuclearcraft:helium_collector_compact>, <nuclearcraft:supercooler_idle>]]);

//聚爆压缩机控制器
recipes.addShaped(<modularmachinery:implosion_compressor_controller>, [[<contenttweaker:tnt1>, <contenttweaker:tnt1>, <contenttweaker:tnt1>],[<minecraft:obsidian>, <contenttweaker:modularblock>, <minecraft:obsidian>], [<contenttweaker:advancedcircuit>, <minecraft:obsidian>, <contenttweaker:advancedcircuit>]]);

//生物模型装配间控制器
recipes.addShaped(<modularmachinery:mob_model_controller>, [[<contenttweaker:mana_crystal2>, <contenttweaker:mana_crystal2>, <contenttweaker:mana_crystal2>],[<tconevo:metal>, <modularmachinery:advanced_assemble_machine_controller>, <tconevo:metal>], [<contenttweaker:epiccircuit>, <deepmoblearning:data_model_blank>, <contenttweaker:epiccircuit>]]);

//急速衰变反应堆控制器
recipes.addShaped(<modularmachinery:fast-decay_reactor_controller>, [[<nuclearcraft:part:3>, <nuclearcraft:fission_controller_new_fixed>, <nuclearcraft:part:3>],[<contenttweaker:epiccircuit>, <contenttweaker:modularblock>, <contenttweaker:epiccircuit>], [<nuclearcraft:part:3>, <nuclearcraft:salt_fission_controller>, <nuclearcraft:part:3>]]);

//大型中子汇聚装置控制器
recipes.addShaped(<modularmachinery:large_neutron_collector_controller>, [[<nuclearcraft:part:3>, <modularmachinery:neutron_collector_controller>, <nuclearcraft:part:3>],[<modularmachinery:neutron_collector_controller>, <mekanism:controlcircuit:3>, <modularmachinery:neutron_collector_controller>], [<nuclearcraft:part:3>, <modularmachinery:neutron_collector_controller>, <nuclearcraft:part:3>]]);

//大型温差电堆控制器
recipes.addShaped(<modularmachinery:temp_energy_controller>, [[<ore:blockUranium>, <environmentaltech:thermal_cell>, <ore:blockUranium>],[<environmentaltech:thermal_cell>, <contenttweaker:modularblock>, <environmentaltech:thermal_cell>], [<immersiveengineering:sheetmetal:6>, <environmentaltech:thermal_cell>, <immersiveengineering:sheetmetal:6>]]);

//魔法泉控制器挖掘等级
<modularmachinery:mana_water_controller>.asBlock().definition.setHarvestLevel("pickaxe",100);

//高/低烈度核裂变增殖反应堆控制器
recipes.addShaped(<modularmachinery:high_intensity_nuclear_fission_breeder_reactor_controller>, [[<nuclearcraft:fuel_uranium:7>, <nuclearcraft:fission_controller_new_fixed>, <nuclearcraft:fuel_uranium:7>],[<contenttweaker:epiccircuit>, <contenttweaker:modularblock>, <contenttweaker:epiccircuit>], [<nuclearcraft:fuel_uranium:7>, <nuclearcraft:salt_fission_controller>, <nuclearcraft:fuel_uranium:7>]]);
recipes.addShaped(<modularmachinery:low_intensity_nuclear_fission_breeder_reactor_controller>, [[<nuclearcraft:fuel_uranium:5>, <nuclearcraft:fission_controller_new_fixed>, <nuclearcraft:fuel_uranium:5>],[<contenttweaker:epiccircuit>, <contenttweaker:modularblock>, <contenttweaker:epiccircuit>], [<nuclearcraft:fuel_uranium:5>, <nuclearcraft:salt_fission_controller>, <nuclearcraft:fuel_uranium:5>]]);

//发酵室集成控制器
recipes.addShaped(<modularmachinery:fermentation_chambershi_factory_controller>, [[<embers:wrapped_sealed_planks>, <modularmachinery:blockcasing>, <embers:wrapped_sealed_planks>],[<modularmachinery:blockcasing>, <minecraft:brick_block>, <modularmachinery:blockcasing>], [<embers:wrapped_sealed_planks>, <modularmachinery:blockcasing>, <embers:wrapped_sealed_planks>]]);

//化粪池集成控制器
recipes.addShaped(<modularmachinery:septic_tank_factory_controller>, [[<embers:wrapped_sealed_planks>, <immersiveengineering:stone_decoration:10>, <embers:wrapped_sealed_planks>],[<immersiveengineering:stone_decoration:10>, <thermalfoundation:material:293>, <immersiveengineering:stone_decoration:10>], [<embers:wrapped_sealed_planks>, <immersiveengineering:stone_decoration:10>, <embers:wrapped_sealed_planks>]]);

//小型燃烧引擎控制器
recipes.addShaped(<modularmachinery:small_combustion_engine_controller>, [[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>, <thermalexpansion:dynamo>, <modularmachinery:itemmodularium>], [<modularmachinery:itemmodularium>, <immersiveengineering:metal_device0>, <modularmachinery:itemmodularium>]]);

//植物压榨机集成控制器
recipes.addShaped(<modularmachinery:plant_presser_factory_controller>, [[<modularmachinery:blockcasing>, <minecraft:piston>, <modularmachinery:blockcasing>],[<immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal_decoration0:4>], [<modularmachinery:blockcasing>, <minecraft:piston>, <modularmachinery:blockcasing>]]);

//大型能源核心控制器
recipes.addShaped(<modularmachinery:large_energy_core_controller>, [[<contenttweaker:stainless_plate>, <enderutilities:endercapacitor:1>.withTag({EnderChargeAmount: 100000}).onlyWithTag({EnderChargeAmount: 100000}), <contenttweaker:stainless_plate>],[<contenttweaker:stainless_plate>, <thermalexpansion:frame:128>, <contenttweaker:stainless_plate>], [<contenttweaker:stainless_plate>, <immersiveengineering:metal_device0:2>, <contenttweaker:stainless_plate>]]);

//地心碎矿机控制器
recipes.addShaped(<modularmachinery:earth_crusher_controller>, [[<contenttweaker:stainless_plate>, <thermalexpansion:augment:304>, <contenttweaker:stainless_plate>],[<contenttweaker:stainless_plate>, <modularmachinery:steam_crusher_factory_controller>, <contenttweaker:stainless_plate>], [<contenttweaker:stainless_plate>, <thermalexpansion:augment:273>, <contenttweaker:stainless_plate>]]);

//太阳能集热塔控制器
recipes.addShaped(<modularmachinery:solar_tower_controller>, [[<enderio:item_material:3>, <enderio:item_material:3>, <enderio:item_material:3>],[<environmentaltech:thermal_cell>, <modularmachinery:large_boiler_controller>, <environmentaltech:thermal_cell>], [<cregtech:heat_proof_invar_machine_casing>, <environmentaltech:thermal_cell>, <cregtech:heat_proof_invar_machine_casing>]]);

//大型电力熔炼炉MK1控制器
recipes.addShaped(<modularmachinery:large_electric_furnacemk1_controller>, [[<minecraft:furnace>, <contenttweaker:modularblock>, <minecraft:furnace>],[<thermalfoundation:material:354>, <minecraft:furnace>, <thermalfoundation:material:354>], [<thermalfoundation:material:513>, <thermalfoundation:material:354>, <thermalfoundation:material:513>]]);

//大型电力熔炼炉MK2控制器
recipes.addShaped(<modularmachinery:large_electric_furnacemk2_controller>, [[<minecraft:furnace>, <minecraft:furnace>, <minecraft:furnace>],[<thermalfoundation:material:354>, <modularmachinery:large_electric_furnacemk1_controller>, <thermalfoundation:material:354>], [<thermalfoundation:material:513>, <thermalfoundation:material:354>, <thermalfoundation:material:513>]]);

//大型电力熔炼炉MK3控制器
recipes.addShaped(<modularmachinery:large_electric_furnacemk3_controller>, [[<enderutilities:machine_0>, <enderutilities:machine_0>, <enderutilities:machine_0>],[<thermalfoundation:material:354>, <modularmachinery:large_electric_furnacemk2_controller>, <thermalfoundation:material:354>], [<thermalfoundation:material:513>, <thermalfoundation:material:354>, <thermalfoundation:material:513>]]);

//热解炉MK1控制器
recipes.addShaped(<modularmachinery:pyrolyse_ovenmk1_controller>, [[<minecraft:furnace>, <minecraft:furnace>, <minecraft:furnace>],[<immersiveengineering:stone_decoration>, <thermalexpansion:augment:258>, <immersiveengineering:stone_decoration>], [<immersiveengineering:stone_decoration>, <immersiveengineering:stone_decoration>, <immersiveengineering:stone_decoration>]]);

//热解炉MK2控制器
recipes.addShaped(<modularmachinery:pyrolyse_ovenmk2_controller>, [[<immersiveengineering:stone_decoration>, <thermalfoundation:material:513>, <immersiveengineering:stone_decoration>],[<immersiveengineering:stone_decoration>, <modularmachinery:pyrolyse_ovenmk1_controller>, <immersiveengineering:stone_decoration>], [<thermalfoundation:material:513>, <immersiveengineering:stone_decoration>, <thermalfoundation:material:513>]]);

//热解炉MK3控制器
recipes.addShaped(<modularmachinery:pyrolyse_ovenmk3_controller>, [[<immersiveengineering:stone_decoration>, <thermalfoundation:material:513>, <immersiveengineering:stone_decoration>],[<immersiveengineering:stone_decoration>, <modularmachinery:pyrolyse_ovenmk2_controller>, <immersiveengineering:stone_decoration>], [<thermalfoundation:material:513>, <immersiveengineering:stone_decoration>, <thermalfoundation:material:513>]]);

//土高炉控制器
recipes.addShaped(<modularmachinery:primitive_blast_furnace_controller>, [[null, <immersiveengineering:stone_decoration:1>, null],[<immersiveengineering:stone_decoration:1>, <modularmachinery:blockcasing>, <immersiveengineering:stone_decoration:1>], [null, <immersiveengineering:stone_decoration:1>, null]]);

//树脂处理工厂控制器
recipes.addShaped(<modularmachinery:factory_controller>, [[<thermalfoundation:material:657>, <thermalexpansion:device:3>, <thermalfoundation:material:657>],[<thermalexpansion:augment:288>, <contenttweaker:modularblock>, <thermalexpansion:augment:288>], [<thermalfoundation:material:657>, <thermalexpansion:machine:2>, <thermalfoundation:material:657>]]);

//大型蒸汽锅炉控制器
recipes.addShaped(<modularmachinery:large_boiler_controller>, [[<modularmachinery:itemmodularium>, <thermalfoundation:material:355>, <modularmachinery:itemmodularium>],[<thermalfoundation:material:355>, <cregtech:bronze_pipe_casing>, <thermalfoundation:material:355>], [<modularmachinery:itemmodularium>, <thermalfoundation:material:355>, <modularmachinery:itemmodularium>]]);

//液燃型蒸汽锅炉控制器
recipes.addShaped(<modularmachinery:large_boiler_liquid_controller>, [[<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],[<tconstruct:clear_glass>, <modularmachinery:large_boiler_controller>, <tconstruct:clear_glass>], [<tconstruct:clear_glass>, <thermalexpansion:device>, <tconstruct:clear_glass>]]);

//物质转换器控制器
recipes.addShaped(<modularmachinery:matter_transformer_controller>, [[<tconevo:metal:5>, <contenttweaker:mastercircuit>, <tconevo:metal:5>],[<contenttweaker:mastercircuit>, <contenttweaker:modularblock>, <contenttweaker:mastercircuit>], [<tconevo:metal:5>, <contenttweaker:mastercircuit>, <tconevo:metal:5>]]);

//蒸汽研磨机集成控制器
recipes.addShaped(<modularmachinery:steam_crusher_factory_controller>, [[<thermalfoundation:material:355>, <minecraft:flint>, <thermalfoundation:material:355>],[<thermalfoundation:material:355>, <cregtech:bronze_machine_casing>, <thermalfoundation:material:355>], [<thermalfoundation:material:355>, <contenttweaker:modularblock>, <thermalfoundation:material:355>]]);

//自然祭坛控制器
recipes.addShaped(<modularmachinery:nature_altar_controller>, [[<modularmachinery:blockcasing>, <botania:miniisland:*>, <modularmachinery:blockcasing>],[<botania:storage:2>, <botania:spreader:2>, <botania:storage:4>], [<modularmachinery:blockcasing>, <botania:manaresource:4>, <modularmachinery:blockcasing>]]);

//星光祭坛控制器
recipes.addShaped(<modularmachinery:star_altar_controller>, [[<modularmachinery:blockcasing>, <astralsorcery:blockchalice>, <modularmachinery:blockcasing>],[<astralsorcery:itemcraftingcomponent:4>, <modularmachinery:nature_altar_controller>, <astralsorcery:itemcraftingcomponent:4>], [<modularmachinery:blockcasing>, <enderio:item_alloy_endergy_ingot:3>, <modularmachinery:blockcasing>]]);

//石油钻井控制器
recipes.addShaped(<modularmachinery:pumpjack_controller>, [[<cregtech:steelmachingcasing>, <immersiveengineering:metal_device1:7>, <cregtech:steelmachingcasing>],[<mekanism:enrichedalloy>, <mekanism:basicblock:8>, <mekanism:enrichedalloy>], [<cregtech:steelmachingcasing>, <immersiveengineering:drillhead>, <cregtech:steelmachingcasing>]]);

//机你太美控制器
recipes.addShaped(<modularmachinery:chicken_controller>, [[<contenttweaker:compressedresinplate>, <contenttweaker:compressedresinplate>, <contenttweaker:compressedresinplate>],[<minecraft:egg>, <contenttweaker:modularblock>, <minecraft:egg>], [<contenttweaker:compressedresinplate>, <contenttweaker:compressedresinplate>, <contenttweaker:compressedresinplate>]]);

//石油裂化机控制器
recipes.addShaped(<modularmachinery:oil_cracking_unit_controller>, [[<cregtech:cleanstainlesssteelmachinecasing>, <forge:bucketfilled>.withTag({FluidName: "crude_oil", Amount: 1000}), <cregtech:cleanstainlesssteelmachinecasing>],[<cregtech:cleanstainlesssteelmachinecasing>, <mekanism:basicblock:8>, <cregtech:cleanstainlesssteelmachinecasing>], [<cregtech:cleanstainlesssteelmachinecasing>, <mekanism:machineblock3:4>, <cregtech:cleanstainlesssteelmachinecasing>]]);

//蒸馏塔控制器
recipes.addShaped(<modularmachinery:distillation_tower_controller>, [[<cregtech:cleanstainlesssteelmachinecasing>, <mekanism:reinforcedalloy>, <cregtech:cleanstainlesssteelmachinecasing>],[<cregtech:cleanstainlesssteelmachinecasing>, <mekanism:basicblock:8>, <cregtech:cleanstainlesssteelmachinecasing>], [<cregtech:cleanstainlesssteelmachinecasing>, <enderio:item_fluid_filter>, <cregtech:cleanstainlesssteelmachinecasing>]]);

//流体加热机控制器
recipes.addShaped(<modularmachinery:fluid_heater_controller>, [[<mekanism:reinforcedalloy>, <cregtech:steelmachingcasing>, <mekanism:reinforcedalloy>],[<cregtech:steelmachingcasing>, <contenttweaker:modularblock>, <cregtech:steelmachingcasing>], [<mekanism:reinforcedalloy>, <mekanism:machineblock3:4>, <mekanism:reinforcedalloy>]]);

//并行计算机控制器
recipes.addShaped(<modularmachinery:parallel_computer_controller>, [[<modularmachinery:computer_controller>, <modularmachinery:computer_controller>, <modularmachinery:computer_controller>],[<modularmachinery:computer_controller>, <mekanism:controlcircuit:3>, <modularmachinery:computer_controller>], [<modularmachinery:computer_controller>, <modularmachinery:computer_controller>, <modularmachinery:computer_controller>]]);

//高温烘干室控制器
recipes.addShaped(<modularmachinery:hot_room_factory_controller>, [[<modularmachinery:blockcasing>, <modularmachinery:blockcasing:1>, <modularmachinery:blockcasing>],[<modularmachinery:blockcasing:2>, <contenttweaker:modularblock>, <modularmachinery:blockcasing:2>], [<minecraft:magma>, <minecraft:magma>, <minecraft:magma>]]);

//压缩加速机控制器
recipes.addShaped(<modularmachinery:compressed_speeder_controller>, [[<modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>],[<modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>], [<modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>, <modularmachinery:speeder_controller>]]);

//牛牛机控制器
recipes.addShaped(<modularmachinery:niu_niu_controller>, [[<mekanism:glowplasticblock:14>, <cookingforblockheads:milk_jar>, <mekanism:glowplasticblock:14>],[<cookingforblockheads:milk_jar>, <contenttweaker:modularblock>, <cookingforblockheads:milk_jar>], [<mekanism:glowplasticblock:14>, <cookingforblockheads:milk_jar>, <mekanism:glowplasticblock:14>]]);

//艾雅法拉控制器
recipes.addShaped(<modularmachinery:zl2_controller>, [[<minecraft:wool:6>, <contenttweaker:shadow_zl>, <minecraft:wool:6>],[<contenttweaker:shadow_zl>, <contenttweaker:modularblock>, <contenttweaker:shadow_zl>], [<minecraft:wool:6>, <contenttweaker:shadow_zl>, <minecraft:wool:6>]]);

//工业蒸汽涡轮控制器
recipes.addShaped(<modularmachinery:industrial_steam_turbine_controller>, [[<modularmachinery:blockcasing:4>, <thermalexpansion:augment:640>, <modularmachinery:blockcasing:4>],[<contenttweaker:basiccircuit>, <contenttweaker:stainless_steel_rotor>, <contenttweaker:basiccircuit>], [<modularmachinery:blockcasing:4>, <thermalexpansion:augment:640>, <modularmachinery:blockcasing:4>]]);

//虚空矿物采掘机控制器
recipes.addShaped(<modularmachinery:vein_miner_controller>, [[<minecraft:diamond_pickaxe>, <environmentaltech:connector>, <minecraft:diamond_pickaxe>],[<contenttweaker:basiccircuit>, <contenttweaker:modularblock>, <contenttweaker:basiccircuit>], [<minecraft:diamond_pickaxe>, <environmentaltech:connector>, <minecraft:diamond_pickaxe>]]);

//魔力凝聚器控制器
recipes.addShaped(<modularmachinery:mana_creation_controller>, [[<extrabotany:quantummanabuffer>, <contenttweaker:mana_crystal2>, <extrabotany:quantummanabuffer>],[<contenttweaker:mana_crystal2>, <modularmachinery:mana_fusion_controller>, <contenttweaker:mana_crystal2>], [<extrabotany:quantummanabuffer>, <contenttweaker:mana_crystal2>, <extrabotany:quantummanabuffer>]]);

//化学反应仓控制器
recipes.addShaped(<modularmachinery:chemical_reactor_bus_controller>, [[<thermalfoundation:storage_alloy>, <contenttweaker:advancedcircuit>, <thermalfoundation:storage_alloy>],[<immersiveengineering:metal_decoration0:5>, <contenttweaker:modularblock>, <immersiveengineering:metal_decoration0:5>], [<thermalfoundation:storage_alloy>, <contenttweaker:advancedcircuit>, <thermalfoundation:storage_alloy>]]);

//大型化学反应釜控制器
mods.thermalexpansion.Transposer.addFillRecipe(<modularmachinery:large_chemical_reactor_controller>,<modularmachinery:chemical_reactor_bus_controller>, <liquid:polytetrafluoroethylene>*1728, 64000);

//吃瓜狐锂控制器
recipes.addShaped(<modularmachinery:fox_eating_melon_controller>, [[<mekanism:reinforcedplasticblock:10>, <modularmachinery:blockcasing>, <mekanism:reinforcedplasticblock:10>],[<modularmachinery:blockcasing>, <contenttweaker:epiccircuit>, <modularmachinery:blockcasing>], [<mekanism:reinforcedplasticblock:10>, <modularmachinery:blockcasing>, <mekanism:reinforcedplasticblock:10>]]);

//地质勘探仪控制器
recipes.addShaped(<modularmachinery:geological_exploration_instrument_controller>, [[<immersiveengineering:metal_decoration1:1>, <contenttweaker:crystal_3>, <immersiveengineering:metal_decoration1:1>],[<contenttweaker:mana_crystal1>, <immersiveengineering:metal_device1:7>, <contenttweaker:mana_crystal1>], [<immersiveengineering:metal_decoration1:1>, <contenttweaker:crystal_3>, <immersiveengineering:metal_decoration1:1>]]);

//焦炉控制器
recipes.addShaped(<modularmachinery:coke_oven_controller>, [[null, <immersiveengineering:stone_decoration>, null],[<immersiveengineering:stone_decoration>, <modularmachinery:blockcasing>, <immersiveengineering:stone_decoration>], [null, <immersiveengineering:stone_decoration>, null]]);

//化反控制器NBT清空
recipes.addShapeless(<modularmachinery:large_chemical_reactor_controller>, [<modularmachinery:large_chemical_reactor_controller>]);
recipes.addShapeless(<modularmachinery:chemical_reactor_bus_controller>, [<modularmachinery:chemical_reactor_bus_controller>]);

//核你爆了控制器
recipes.addShaped(<modularmachinery:boom_controller>, [[<nuclearcraft:fission_block:1>, <botania:lens:11>, <nuclearcraft:fission_block:1>],[<contenttweaker:tnt1>, <contenttweaker:tnt1>, <contenttweaker:tnt1>], [<nuclearcraft:fission_block:1>, <actuallyadditions:item_explosion_lens>, <nuclearcraft:fission_block:1>]]);

//不锈钢燃气涡轮
recipes.addShaped(<modularmachinery:stainless_steel_gas_turbine_controller>,[[<cregtech:cleanstainlesssteelmachinecasing>,<contenttweaker:epiccircuit>,<cregtech:cleanstainlesssteelmachinecasing>],[<contenttweaker:epiccircuit>,<contenttweaker:stainless_steel_rotor>,<contenttweaker:epiccircuit>],[<cregtech:cleanstainlesssteelmachinecasing>,<contenttweaker:epiccircuit>,<cregtech:cleanstainlesssteelmachinecasing>]]);