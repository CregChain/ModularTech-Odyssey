//本脚本由ohxihh和chengzhenjie编写，未经ohxihh和chengzhenjie允许，任何人不允许发布修改过的脚本或将其应用于你的整合包

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

//========================================蒸馏塔========================================
MachineModifier.setMaxParallelism("distillation_tower", 4);
//石油
RecipeBuilder.newBuilder("crude_oil", "distillation_tower", 30)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:crude_oil>*100)
.addFluidOutput(<liquid:sulfuric_light_fuel>*50)
.addFluidOutput(<liquid:sulfuric_heavy_fuel>*15)
.addFluidOutput(<liquid:sulfuric_naphtha>*20)
.addFluidOutput(<liquid:sulfuric_gas>*60)
.build();

//重油
RecipeBuilder.newBuilder("heavy_oil", "distillation_tower", 30)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:heavy_oil>*100)
.addFluidOutput(<liquid:sulfuric_light_fuel>*45)
.addFluidOutput(<liquid:sulfuric_heavy_fuel>*250)
.addFluidOutput(<liquid:sulfuric_naphtha>*15)
.addFluidOutput(<liquid:sulfuric_gas>*60)
.build();

RecipeBuilder.newBuilder("蒸馏制甲烷1", "distillation_tower", 30)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:acetone>*1000)
.addFluidOutput(<liquid:liquidmethane>*1000)
.addFluidOutput(<liquid:ethenone>*1000)
.build();

RecipeBuilder.newBuilder("蒸馏蒸汽裂化重燃油", "distillation_tower", 30)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:steam_cracked_heavy_fuel>*1000)//蒸汽裂化重燃油
.addFluidOutput(<liquid:liquidmethane>*100)//甲烷
.addFluidOutput(<liquid:liquidethene>*100)//乙烯
.addFluidOutput(<liquid:light_fuel>*200)//轻燃油
.addFluidOutput(<liquid:naphtha>*80)//石脑油
.build();

RecipeBuilder.newBuilder("蒸馏蒸汽裂化轻燃油", "distillation_tower", 30)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:steam_cracked_light_fuel>*1000)//蒸汽裂化轻燃油
.addFluidOutput(<liquid:liquidmethane>*150)//甲烷
.addFluidOutput(<liquid:benzene>*200)//苯
.addFluidOutput(<liquid:propene>*200)//丙烯
.addFluidOutput(<liquid:naphtha>*250)//石脑油
.build();

RecipeBuilder.newBuilder("蒸馏蒸汽裂化石脑油", "distillation_tower", 30)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:steam_cracked_naphtha>*1000)//蒸汽裂化石脑油
.addFluidOutput(<liquid:liquidmethane>*350)//甲烷
.addFluidOutput(<liquid:liquidethene>*350)//乙烯
.addFluidOutput(<liquid:propene>*250)//丙烯
.addFluidOutput(<liquid:benzene>*120)//石脑油
.build();

RecipeBuilder.newBuilder("蒸馏蒸汽裂化炼油气", "distillation_tower", 30)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:steamcracked_gas>*1000)//蒸汽裂化炼油气
.addFluidOutput(<liquid:liquidmethane>*1022)//甲烷
.addFluidOutput(<liquid:liquidethene>*89)//乙烯
.addFluidOutput(<liquid:propene>*27)//丙烯
.addFluidOutput(<liquid:helium>*20)//氦气
.build();

//凑合一下-炼油气离心甲烷液化石油气
RecipeBuilder.newBuilder("炼油气离心甲烷液化石油气", "distillation_tower", 30)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:refinery_gas>*8000)
.addFluidOutput(<liquid:liquidmethane>*4000)
.addFluidOutput(<liquid:lpg>*4000)
.build();

RecipeBuilder.newBuilder("重燃油蒸馏", "distillation_tower", 400)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:heavy_fuel>*1000)
.addFluidOutputs(<liquid:toluene_liquid>*200,<liquid:benzene>*200,<liquid:phenol>*125)
.build();
//=======================================蒸馏塔生物部分=========================================

RecipeBuilder.newBuilder("木炭副产物分离", "distillation_tower", 15)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:charcoal_byproducts>*4000)
.addFluidOutputs(<liquid:wood_gas>*1000,<liquid:wood_tar>*1000,<liquid:wood_vinegar>*2000)
.build();

RecipeBuilder.newBuilder("木炭气", "distillation_tower", 10)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:wood_gas>*1000)
.addFluidOutput(<liquid:carbon_dioxide>*490)
.addFluidOutput(<liquid:carbon_monoxide>*340)
.addFluidOutput(<liquid:liquidmethane>*130)
.addFluidOutput(<liquid:ethylene>*20)
.addFluidOutput(<liquid:hydrogen>*20)
.build();

RecipeBuilder.newBuilder("木醋酸", "distillation_tower", 10)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:wood_vinegar>*1000)
.addFluidOutput(<liquid:water>*500)
.addFluidOutput(<liquid:methanol>*300)
.addFluidOutput(<liquid:aceticacid>*100)
.addFluidOutput(<liquid:acetone>*50)
.addFluidOutput(<liquid:ethanol>*20)
.build();

RecipeBuilder.newBuilder("木焦油", "distillation_tower", 10)
.addEnergyPerTickInput(4096)
.addFluidInput(<liquid:wood_tar>*1000)
.addFluidOutput(<liquid:creosote>*500)
.addFluidOutput(<liquid:benzene>*350)
.addFluidOutput(<liquid:phenol>*75)
.addFluidOutput(<liquid:acetone>*50)
.addFluidOutput(<liquid:toluene_liquid>*75)
.build();
//======================================大型化学反应釜裂化======================================
RecipeBuilder.newBuilder("轻燃油裂化大化反", "large_chemical_reactor", 40)
.addItemInput(<cregtech:mode:2>).setChance(0)
.addFluidInput(<liquid:light_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_light_fuel>*500)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("重燃油裂化大化反", "large_chemical_reactor", 40)
.addFluidInput(<liquid:heavy_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_heavy_fuel>*500)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("石脑油裂化大化反", "large_chemical_reactor", 40)
.addFluidInput(<liquid:naphtha>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_naphtha>*500)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("石脑油裂化大化反-1", "large_chemical_reactor", 40)
.addFluidInput(<liquid:refined_oil>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_naphtha>*500)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("炼油气裂化大化反", "large_chemical_reactor", 40)
.addFluidInput(<liquid:refinery_gas>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steamcracked_gas>*500)
.addEnergyPerTickInput(2048)
.build();

//========================================石油裂化机========================================
RecipeBuilder.newBuilder("轻燃油裂化", "Oil_Cracking_Unit", 20)
.addFluidInput(<liquid:light_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_light_fuel>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("重燃油裂化", "Oil_Cracking_Unit", 20)
.addFluidInput(<liquid:heavy_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_heavy_fuel>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("石脑油裂化", "Oil_Cracking_Unit", 20)
.addFluidInput(<liquid:naphtha>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_naphtha>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("石脑油裂化-1", "Oil_Cracking_Unit", 20)
.addFluidInput(<liquid:refined_oil>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_naphtha>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("炼油气裂化", "Oil_Cracking_Unit", 20)
.addFluidInput(<liquid:refinery_gas>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steamcracked_gas>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("热铝土泥浆", "Oil_Cracking_Unit", 2)
.addFluidInput(<liquid:bauxites_lurry>*3200)
.addFluidInput(<liquid:steam>*200)
.addFluidOutput(<liquid:hot_bauxites_lurry>*3200)
.addEnergyPerTickInput(5120)
.build();

//======================================大型化学反应釜添加======================================
RecipeBuilder.newBuilder("流明精华-大化反", "large_chemical_reactor", 20)
.addItemInput(<minecraft:redstone>)
.addItemInput(<minecraft:glowstone_dust>)
.addItemInput(<minecraft:gunpowder>)
.addItemOutput(<extendedcrafting:material:7>*4)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("柴油大化反", "large_chemical_reactor", 5)
.addFluidInput(<liquid:light_fuel>*5000)
.addFluidInput(<liquid:heavy_fuel>*1000)
.addFluidOutput(<liquid:diesel>*6000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氢氧化钠", "large_chemical_reactor", 5)
.addFluidInput(<liquid:liquidsodium>*20)
.addFluidInput(<liquid:water>*2000)
.addFluidOutput(<liquid:sodium_hydroxide_solution>*2000)
//化工厂添加如下输出.addFluidOutput(<liquid:hydrogen>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("轻燃油1", "large_chemical_reactor", 10)
.addFluidInput(<liquid:sulfuric_light_fuel>*12000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:light_fuel>*12000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("重燃油1", "large_chemical_reactor", 10)
.addFluidInput(<liquid:sulfuric_heavy_fuel>*8000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:heavy_fuel>*8000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("石脑油1", "large_chemical_reactor", 10)
.addFluidInput(<liquid:sulfuric_naphtha>*12000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:naphtha>*12000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("炼油气1", "large_chemical_reactor", 10)
.addFluidInput(<liquid:sulfuric_gas>*16000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:refinery_gas>*16000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸1", "large_chemical_reactor", 20)
.addFluidInput(<liquid:liquidethene>*3000)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:aceticacid>*4000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸1.1", "large_chemical_reactor", 20)
.addFluidInput(<liquid:liquidethene>*3000)
.addFluidInput(<liquid:liquidoxygen>*1000)
.addFluidOutput(<liquid:aceticacid>*4000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸2", "large_chemical_reactor", 50)
.addFluidInput(<liquid:ethanol>*1000)
.addItemInput(<mekanism:biofuel>*2)
.addFluidOutput(<liquid:aceticacid>*800)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸钙", "large_chemical_reactor", 20)
.addFluidInput(<liquid:aceticacid>*2000)
.addItemInput(<minecraft:dye:15>*1)
.addFluidOutput(<liquid:calciumacetatesolution>*1000)
//化工厂添加如下输出.addFluidOutput(<liquid:hydrogen>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氯苯", "large_chemical_reactor", 30)
.addFluidInput(<liquid:benzene>*2000)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidOutput(<liquid:chlorobenzene>*2000)
//化工厂添加如下输出.addFluidOutput(<liquid:liquidhydrogenchloride>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("苯酚", "large_chemical_reactor", 30)
.addFluidInput(<liquid:chlorobenzene>*4000)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidOutput(<liquid:phenol>*4000)
.addItemOutput(<mekanism:salt>*1)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("双酚A1", "large_chemical_reactor", 20)
.addFluidInput(<liquid:phenol>*1000)
.addFluidInput(<liquid:liquidhydrogenchloride>*500)
.addFluidOutput(<liquid:bisphenol_a>*1500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("双酚A2", "large_chemical_reactor", 40)
.addFluidInput(<liquid:phenol>*2000)
.addFluidInput(<liquid:acetone>*1000)
.addFluidOutput(<liquid:bisphenol_a>*3000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("烯丙基氯", "large_chemical_reactor", 20)
.addFluidInput(<liquid:propene>*4500)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidOutput(<liquid:allyl_chloride>*4500)
//化工厂添加如下输出.addFluidOutput(<liquid:liquidhydrogenchloride>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("次氯酸", "large_chemical_reactor", 10)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidInput(<liquid:water>*1000)
.addFluidOutput(<liquid:hypochlorous_acid>*1000)
//化工厂添加如下输出.addFluidOutput(<liquid:liquidhydrogenchloride>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("环氧氯丙烷", "large_chemical_reactor", 40)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidInput(<liquid:allyl_chloride>*3000)
.addFluidInput(<liquid:hypochlorous_acid>*1000)
.addFluidOutput(<liquid:epichlorohydrin>*4000)
//化工厂添加如下输出.addFluidOutput(<liquid:brine>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("环氧树脂", "large_chemical_reactor", 40)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidInput(<liquid:epichlorohydrin>*4000)
.addFluidInput(<liquid:bisphenol_a>*12000)
.addFluidOutput(<liquid:epoxy_resin>*16000)
//化工厂添加如下输出.addFluidOutput(<liquid:brine>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("四硝基甲烷", "large_chemical_reactor", 40)
.addFluidInput(<liquid:ethenone>*125)
.addFluidInput(<liquid:nitric_acid>*1000)
.addFluidOutput(<liquid:tetranitromethane>*250)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("高十六烷值柴油", "large_chemical_reactor", 5)
.addFluidInput(<liquid:tetranitromethane>*125)
.addFluidInput(<liquid:diesel>*1000)
.addFluidOutput(<liquid:cetane_boosted_diese>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("粗汽油", "large_chemical_reactor", 80)
.addFluidInput(<liquid:methanol>*1000)
.addFluidInput(<liquid:refinery_gas>*2000)
.addFluidInput(<liquid:naphtha>*16000)
.addFluidInput(<liquid:acetone>*1000)
.addFluidOutput(<liquid:raw_gasoline>*20000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("粗汽油-1", "large_chemical_reactor", 80)
.addFluidInput(<liquid:methanol>*1000)
.addFluidInput(<liquid:refinery_gas>*2000)
.addFluidInput(<liquid:refined_oil>*16000)
.addFluidInput(<liquid:acetone>*1000)
.addFluidOutput(<liquid:raw_gasoline>*20000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("汽油", "large_chemical_reactor", 50)
.addFluidInput(<liquid:raw_gasoline>*10000)
.addFluidInput(<liquid:toluene_liquid>*1000)
.addFluidOutput(<liquid:gasoline>*11000)
.addEnergyPerTickInput(512)
.build();

//=======================
RecipeBuilder.newBuilder("氨", "large_chemical_reactor", 60)
.addFluidInput(<liquid:nitrogen>*1000)
.addFluidInput(<liquid:hydrogen>*6000)
.addFluidOutput(<liquid:ammonia>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("一氧化氮", "large_chemical_reactor", 40)
.addFluidInput(<liquid:ammonia>*1000)
.addFluidInput(<liquid:oxygen>*1500)
.addFluidOutput(<liquid:nitric_oxide>*1000)
//化工厂添加如下输出.addFluidOutput(<liquid:water>*1500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("二氧化氮", "large_chemical_reactor", 10)
.addFluidInput(<liquid:nitric_oxide>*2000)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:nitrogen_dioxide>*3000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("一氧化氮-液氧", "large_chemical_reactor", 40)
.addFluidInput(<liquid:ammonia>*1000)
.addFluidInput(<liquid:liquidoxygen>*1500)
.addFluidOutput(<liquid:nitric_oxide>*1000)
//化工厂添加如下输出.addFluidOutput(<liquid:water>*1500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("二氧化氮-液氧", "large_chemical_reactor", 1)
.addFluidInput(<liquid:nitric_oxide>*2000)
.addFluidInput(<liquid:liquidoxygen>*1000)
.addFluidOutput(<liquid:nitrogen_dioxide>*3000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("硝酸", "large_chemical_reactor", 10)
.addFluidInput(<liquid:nitrogen_dioxide>*9000)
.addFluidInput(<liquid:water>*3000)
.addFluidOutput(<liquid:nitric_acid>*10000)
//化工厂添加如下输出.addFluidOutput(<liquid:nitric_oxide>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("硫酸统一2", "large_chemical_reactor", 1)
.addFluidInput(<liquid:sulfuricacid>*1000)
.addFluidOutput(<liquid:sulfuric_acid>*1000)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("木炭制取木炭副产物", "large_chemical_reactor", 2)
.addItemInput(<minecraft:coal:1>*1)
.addFluidOutput(<liquid:charcoal_byproducts>*100)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("硝基苯", "large_chemical_reactor", 80)
.addFluidInput(<liquid:benzene>*5000)
.addFluidInput(<liquid:sulfuric_acid>*3000)
.addFluidInput(<liquid:nitric_acid>*5000)
.addFluidOutput(<liquid:nitrobenzene>*5000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("四氯化钛1", "large_chemical_reactor", 80)
.addItemInput(<contenttweaker:rutile_dust>*3)
.addItemInput(<ore:dustCoal>*2)
.addFluidInput(<liquid:liquidchlorine>*4000)
.addFluidOutput(<liquid:titanium_tetrachloride>*1000)
.addFluidOutput(<liquid:carbon_monoxide>*2000)
.addEnergyPerTickInput(1960)
.build();

RecipeBuilder.newBuilder("四氯化钛2", "large_chemical_reactor", 80)
.addItemInput(<contenttweaker:rutile_dust>*3)
.addItemInput(<ore:dustCharcoal>*2)
.addFluidInput(<liquid:liquidchlorine>*4000)
.addFluidOutput(<liquid:titanium_tetrachloride>*1000)
.addFluidOutput(<liquid:carbon_monoxide>*2000)
.addEnergyPerTickInput(1960)
.build();

RecipeBuilder.newBuilder("热铝土泥浆", "large_chemical_reactor", 200)
.addFluidInput(<liquid:hot_bauxites_lurry>*8000)
.addFluidInput(<liquid:carbon_dioxide>*5000)
.addItemOutput(<thermalfoundation:material:68>*16)
.addItemOutput(<contenttweaker:bauxite_residue>*16)
.addEnergyPerTickInput(2048)
.build();

//======================================流体加热机======================================
RecipeBuilder.newBuilder("丙酮", "Fluid_Heater", 10)
.addFluidInput(<liquid:calciumacetatesolution>*1000)
.addFluidOutput(<liquid:acetone>*250)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("苯-石脑油", "Fluid_Heater", 10)
.addFluidInput(<liquid:naphtha>*200)
.addFluidOutput(<liquid:benzene>*80)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("苯-石脑油-1", "Fluid_Heater", 10)
.addFluidInput(<liquid:refined_oil>*200)
.addFluidOutput(<liquid:benzene>*80)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("苯-重燃油", "Fluid_Heater", 10)
.addFluidInput(<liquid:heavy_fuel>*10)
.addFluidOutput(<liquid:benzene>*4)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("丙烯", "Fluid_Heater", 10)
.addFluidInput(<liquid:steam_cracked_light_fuel>*1000)
.addFluidOutput(<liquid:propene>*450)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙烯酮", "Fluid_Heater", 10)
.addFluidInput(<liquid:acetone>*200)
.addFluidOutput(<liquid:ethenone>*100)
.addEnergyPerTickInput(512)
.build();

//======================================化学反应仓======================================
RecipeBuilder.newBuilder("聚四氟乙烯", "chemical_reactor_bus", 400)
.addFluidInput(<liquid:tetrafluoroethylene>*144)
.addFluidInput(<liquid:liquidoxygen>*1000)
.addFluidOutput(<liquid:polytetrafluoroethylene>*216)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("四氟乙烯", "chemical_reactor_bus", 400)
.addFluidInput(<liquid:chloroform>*2000)
.addFluidInput(<liquid:hydrofluoric_acid>*4000)
.addFluidOutput(<liquid:tetrafluoroethylene>*1000)
.addFluidOutput(<liquid:hydrochloric_acid>*6000)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("氢氟酸", "chemical_reactor_bus", 400)
.addFluidInput(<liquid:liquidhydrogen>*1000)
.addFluidInput(<liquid:fluorine>*1000)
.addFluidOutput(<liquid:hydrofluoric_acid>*1000)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("氟", "chemical_reactor_bus", 200)
.addItemInput(<ore:dustFluorite>*4)
.addFluidOutput(<liquid:fluorine>*200)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("氯仿", "chemical_reactor_bus", 400)
.addFluidInput(<liquid:liquidchlorine>*6000)
.addFluidInput(<liquid:liquidmethane>*1000)
.addFluidOutput(<liquid:chloroform>*1000)
.addFluidOutput(<liquid:hydrochloric_acid>*3000)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("甲烷1", "chemical_reactor_bus", 400)
.addItemInput(<ore:dustCoal>)
.addFluidInput(<liquid:liquidhydrogen>*4000)
.addFluidOutput(<liquid:liquidmethane>*1000)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("甲烷2", "chemical_reactor_bus", 400)
.addFluidInput(<liquid:propene>*2000)
.addItemInput(<ore:dustCoal>)
.addItemOutput(<ore:dustCoal>*6)
.addFluidOutput(<liquid:liquidmethane>*1000)
.addFluidOutput(<liquid:liquidhydrogen>*8000)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油1化学反应仓", "chemical_reactor_bus", 10)
.addFluidInput(<liquid:creosote>*12)
.addFluidOutput(<liquid:lubricant>*4)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油2化学反应仓", "chemical_reactor_bus", 10)
.addFluidInput(<liquid:seed_oil>*16)
.addFluidOutput(<liquid:lubricant>*4)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油3化学反应仓", "chemical_reactor_bus", 10)
.addFluidInput(<liquid:oil_dwarf>*4)
.addFluidOutput(<liquid:lubricant>*8)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油4化学反应仓", "chemical_reactor_bus", 10)
.addFluidInput(<liquid:refined_fuel>*12)
.addFluidOutput(<liquid:lubricant>*8)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("硫酸统一1", "chemical_reactor_bus", 1)
.addFluidInput(<liquid:sulfuricacid>*1000)
.addFluidOutput(<liquid:sulfuric_acid>*1000)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("一氧化碳1化学反应仓", "chemical_reactor_bus", 4)
.addItemInput(<cregtech:mode:1>).setChance(0)
.addItemInput(<ore:dustCharcoal>*1)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:carbon_monoxide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("一氧化碳2化学反应仓", "chemical_reactor_bus", 4)
.addItemInput(<cregtech:mode:1>).setChance(0)
.addItemInput(<ore:dustCoal>*1)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:carbon_monoxide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("二氧化碳1化学反应仓", "chemical_reactor_bus", 4)
.addItemInput(<cregtech:mode:2>).setChance(0)
.addItemInput(<ore:dustCharcoal>*1)
.addFluidInput(<liquid:oxygen>*2000)
.addFluidOutput(<liquid:carbon_dioxide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("二氧化碳2化学反应仓", "chemical_reactor_bus", 4)
.addItemInput(<cregtech:mode:2>).setChance(0)
.addItemInput(<ore:dustCoal>*1)
.addFluidInput(<liquid:oxygen>*2000)
.addFluidOutput(<liquid:carbon_dioxide>*1000)
.addEnergyPerTickInput(512)
.build();
//======================================大型化学反应釜======================================
RecipeBuilder.newBuilder("优质燃油-大化反", "large_chemical_reactor", 50)
.addFluidInput(<liquid:saturated_fuel>*1000)
.addFluidInput(<liquid:biodiesel>*1000)
.addFluidOutput(<liquid:high_quality_fuel>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("硫化氢加氧合成硫酸", "large_chemical_reactor", 100)
.addFluidInput(<liquid:hydrogen_sulfide>*1000)
.addFluidInput(<liquid:liquidoxygen>*4000)
.addFluidOutput(<liquid:sulfuricacid>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("聚四氟乙烯-大化反", "large_chemical_reactor", 100)
.addFluidInput(<liquid:tetrafluoroethylene>*144)
.addFluidInput(<liquid:liquidoxygen>*1000)
.addFluidOutput(<liquid:polytetrafluoroethylene>*216)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("四氟乙烯-大化反", "large_chemical_reactor", 100)
.addFluidInput(<liquid:chloroform>*2000)
.addFluidInput(<liquid:hydrofluoric_acid>*4000)
.addFluidOutput(<liquid:tetrafluoroethylene>*1000)
.addFluidOutput(<liquid:hydrochloric_acid>*6000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氢氟酸-大化反", "large_chemical_reactor", 100)
.addFluidInput(<liquid:liquidhydrogen>*1000)
.addFluidInput(<liquid:fluorine>*1000)
.addFluidOutput(<liquid:hydrofluoric_acid>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氟-大化反", "large_chemical_reactor", 50)
.addItemInput(<ore:dustFluorite>*4)
.addFluidOutput(<liquid:fluorine>*200)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氯仿-大化反", "large_chemical_reactor", 100)
.addFluidInput(<liquid:liquidchlorine>*6000)
.addFluidInput(<liquid:liquidmethane>*1000)
.addFluidOutput(<liquid:chloroform>*1000)
.addFluidOutput(<liquid:hydrochloric_acid>*3000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("甲烷1-大化反", "large_chemical_reactor", 100)
.addItemInput(<ore:dustCoal>)
.addFluidInput(<liquid:liquidhydrogen>*4000)
.addFluidOutput(<liquid:liquidmethane>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("甲烷2-大化反", "large_chemical_reactor", 100)
.addFluidInput(<liquid:propene>*2000)
.addItemInput(<ore:dustCoal>)
.addItemOutput(<ore:dustCoal>*6)
.addFluidOutput(<liquid:liquidmethane>*1000)
.addFluidOutput(<liquid:liquidhydrogen>*8000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙烯酮合成-大化反-1", "large_chemical_reactor", 100)
.addFluidInput(<liquid:aceticacid>*8000)
.addFluidInput(<liquid:sulfuric_acid>*7000)
.addFluidOutput(<liquid:ethenone>*5000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙烯酮合成-大化反-2", "large_chemical_reactor", 100)
.addFluidInput(<liquid:aceticacid>*8000)
.addFluidInput(<liquid:sulfuricacid>*7000)
.addFluidOutput(<liquid:ethenone>*5000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("灰烬晶体碎片", "large_chemical_reactor", 80)
.addItemInput(<minecraft:coal>)
.addFluidInput(<liquid:petrotheum>*100)
.addItemOutput(<embers:shard_ember>*2)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉1", "large_chemical_reactor", 80)
.addFluidInput(<liquid:sulfuricacid>*1000)
.addFluidInput(<liquid:heavywater>*1000)
.addItemInput(<contenttweaker:zl_ore>)
.addItemOutput(<contenttweaker:zl_dust>*2)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉2", "large_chemical_reactor", 80)
.addFluidInput(<liquid:sulfuric_acid>*1000)
.addFluidInput(<liquid:heavywater>*1000)
.addItemInput(<contenttweaker:zl_ore>)
.addItemOutput(<contenttweaker:zl_dust>*2)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉3", "large_chemical_reactor", 80)
.addFluidInput(<liquid:sulfuric_acid>*2000)
.addFluidInput(<liquid:heavywater>*2000)
.addItemInput(<contenttweaker:shenming_ore>)
.addItemOutput(<contenttweaker:zl_dust>*8)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉3.1", "large_chemical_reactor", 80)
.addFluidInput(<liquid:sulfuricacid>*2000)
.addFluidInput(<liquid:heavywater>*2000)
.addItemInput(<contenttweaker:shenming_ore>)
.addItemOutput(<contenttweaker:zl_dust>*8)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("润滑油1", "large_chemical_reactor", 3)
.addFluidInput(<liquid:creosote>*12)
.addFluidOutput(<liquid:lubricant>*4)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油2", "large_chemical_reactor", 3)
.addFluidInput(<liquid:seed_oil>*16)
.addFluidOutput(<liquid:lubricant>*4)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油3", "large_chemical_reactor", 3)
.addFluidInput(<liquid:oil_dwarf>*4)
.addFluidOutput(<liquid:lubricant>*8)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油4", "large_chemical_reactor", 3)
.addFluidInput(<liquid:refined_fuel>*12)
.addFluidOutput(<liquid:lubricant>*8)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("甲苯", "large_chemical_reactor", 20)
.addItemInput(<cregtech:mode:1>).setChance(0)
.addFluidInput(<liquid:naphtha>*1000)
.addFluidInput(<liquid:steam>*4000)
.addFluidOutput(<liquid:toluene_liquid>*200)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("甲苯-1", "large_chemical_reactor", 20)
.addItemInput(<cregtech:mode:1>).setChance(0)
.addFluidInput(<liquid:refined_oil>*1000)
.addFluidInput(<liquid:steam>*4000)
.addFluidOutput(<liquid:toluene_liquid>*200)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("TNT", "large_chemical_reactor", 10)
.addFluidInput(<liquid:toluene_liquid>*266)
.addItemInput(<nuclearcraft:part:6>*1)
.addItemInput(<minecraft:gunpowder>*1)
.addItemInput(<enderio:item_material:20>*2)
.addItemOutput(<minecraft:tnt>*1)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("岩浆块", "large_chemical_reactor", 40)
.addItemInput(<minecraft:stone>*1)
.addFluidInput(<liquid:lava>*1000)
.addItemOutput(<minecraft:magma>*1)
.addEnergyPerTickInput(256)
.build();

RecipeBuilder.newBuilder("大师电路基板", "large_chemical_reactor", 100)
.addItemInput(<contenttweaker:advancedcircuitplate>)
.addItemInput(<deepmoblearning:glitch_infused_ingot>*4)
.addItemInput(<nuclearcraft:compound:1>*4)
.addFluidInput(<liquid:nak>*1440)
.addItemOutput(<contenttweaker:mastercircuitplate>*1)
.addEnergyPerTickInput(4096)
.build();

RecipeBuilder.newBuilder("胶粘剂", "large_chemical_reactor", 100)
.addItemInput(<minecraft:dye:15>*2)
.addItemInput(<minecraft:clay_ball>)
.addFluidInput(<liquid:hydrated_gelatin>*8)
.addItemOutput(<embers:adhesive>*3)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("速效救心丸-大化反", "large_chemical_reactor", 200)
.addFluidInput(<liquid:potion>.withTag({Potion: "cofhcore:healing4"})*1000)
.addItemInput(<nuclearcraft:flour>*8)
.addItemInput(<nuclearcraft:gelatin>*4)
.addItemOutput(<contenttweaker:heal>)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("铝土泥浆", "large_chemical_reactor", 25)
.addItemInput(<contenttweaker:bauxite_dust>*32)
.addItemInput(<nuclearcraft:compound:5>*9)
.addFluidInput(<liquid:water>*5000)
.addFluidOutput(<liquid:bauxites_lurry>*8000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("热铝土泥浆处理", "large_chemical_reactor", 50)
.addFluidInput(<liquid:hot_bauxites_lurry>*8000)
.addFluidInput(<liquid:carbon_dioxide>*5000)
.addItemOutput(<thermalfoundation:material:68>*16)
.addItemOutput(<contenttweaker:bauxite_residue>*16)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("一氧化碳1", "large_chemical_reactor", 1)
.addItemInput(<cregtech:mode:1>).setChance(0)
.addItemInput(<ore:dustCharcoal>*1)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:carbon_monoxide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("一氧化碳2", "large_chemical_reactor", 1)
.addItemInput(<cregtech:mode:1>).setChance(0)
.addItemInput(<ore:dustCoal>*1)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:carbon_monoxide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("二氧化碳1", "large_chemical_reactor", 1)
.addItemInput(<cregtech:mode:2>).setChance(0)
.addItemInput(<ore:dustCharcoal>*1)
.addFluidInput(<liquid:oxygen>*2000)
.addFluidOutput(<liquid:carbon_dioxide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("二氧化碳2", "large_chemical_reactor", 1)
.addItemInput(<cregtech:mode:2>).setChance(0)
.addItemInput(<ore:dustCoal>*1)
.addFluidInput(<liquid:oxygen>*2000)
.addFluidOutput(<liquid:carbon_dioxide>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("二氧化碳3", "large_chemical_reactor", 1)
.addFluidInput(<liquid:carbon_monoxide>*1000)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:carbon_dioxide>*1000)
.addEnergyPerTickInput(512)
.build();

//======================================化工厂MK1======================================
//并行设定
MachineModifier.setMaxParallelism("Chemical_factory_MK1", 4);

RecipeBuilder.newBuilder("速效救心丸-化工厂", "Chemical_factory_MK1", 400)
.addFluidInput(<liquid:potion>.withTag({Potion: "cofhcore:healing4"})*1000)
.addItemInput(<nuclearcraft:flour>*8)
.addItemInput(<nuclearcraft:gelatin>*4)
.addItemOutput(<contenttweaker:heal>)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("优质燃油-化工厂", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:saturated_fuel>*1000)
.addFluidInput(<liquid:biodiesel>*1000)
.addFluidOutput(<liquid:high_quality_fuel>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙烯酮合成-化工厂MK1-1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:aceticacid>*8000)
.addFluidInput(<liquid:sulfuric_acid>*7000)
.addFluidOutput(<liquid:ethenone>*5000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("乙烯酮合成-化工厂MK1-2", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:aceticacid>*8000)
.addFluidInput(<liquid:sulfuricacid>*7000)
.addFluidOutput(<liquid:ethenone>*5000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("轻燃油MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:sulfuric_light_fuel>*12000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:light_fuel>*12000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("重燃油MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:sulfuric_heavy_fuel>*8000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:heavy_fuel>*8000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("石脑油MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:sulfuric_naphtha>*12000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:naphtha>*12000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("炼油气MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:sulfuric_gas>*16000)
.addFluidInput(<liquid:hydrogen>*2000)
.addFluidOutput(<liquid:refinery_gas>*16000)
.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("轻燃油裂化MK1", "Chemical_factory_MK1", 20)
.addItemInput(<cregtech:mode:2>).setChance(0)
.addFluidInput(<liquid:light_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_light_fuel>*800)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("重燃油裂化MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:heavy_fuel>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_heavy_fuel>*800)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("石脑油裂化MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:naphtha>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_naphtha>*800)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("石脑油裂化MK1-1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:refined_oil>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steam_cracked_naphtha>*800)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("炼油气裂化MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:refinery_gas>*1000)
.addFluidInput(<liquid:steam>*1000)
.addFluidOutput(<liquid:steamcracked_gas>*500)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("硝酸化工厂专属MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidInput(<liquid:ammonia>*1000)
.addFluidOutput(<liquid:nitric_acid>*1000)
.addFluidOutput(<liquid:water>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("硝酸化工厂专属MK1-液氧", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:liquidoxygen>*1000)
.addFluidInput(<liquid:ammonia>*1000)
.addFluidOutput(<liquid:nitric_acid>*1000)
.addFluidOutput(<liquid:water>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("硫化氢加氧合成硫酸MK1", "Chemical_factory_MK1", 40)
.addFluidInput(<liquid:hydrogen_sulfide>*1000)
.addFluidInput(<liquid:liquidoxygen>*4000)
.addFluidOutput(<liquid:sulfuricacid>*1000)
.addEnergyPerTickInput(512)
.build();

//=================================化工厂兼容大化反部分===============================
RecipeBuilder.newBuilder("流明精华MK1", "Chemical_factory_MK1", 5)
.addItemInput(<minecraft:redstone>)
.addItemInput(<minecraft:glowstone_dust>)
.addItemInput(<minecraft:gunpowder>)
.addItemOutput(<extendedcrafting:material:7>*4)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("聚四氟乙烯MK1", "Chemical_factory_MK1", 10)
.addFluidInput(<liquid:tetrafluoroethylene>*144)
.addFluidInput(<liquid:liquidoxygen>*1000)
.addFluidOutput(<liquid:polytetrafluoroethylene>*216)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("四氟乙烯MK1", "Chemical_factory_MK1", 10)
.addFluidInput(<liquid:chloroform>*2000)
.addFluidInput(<liquid:hydrofluoric_acid>*4000)
.addFluidOutput(<liquid:tetrafluoroethylene>*1000)
.addFluidOutput(<liquid:hydrochloric_acid>*6000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("氢氟酸MK1", "Chemical_factory_MK1", 10)
.addFluidInput(<liquid:liquidhydrogen>*1000)
.addFluidInput(<liquid:fluorine>*1000)
.addFluidOutput(<liquid:hydrofluoric_acid>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("氟MK1", "Chemical_factory_MK1", 10)
.addItemInput(<ore:dustFluorite>*4)
.addFluidOutput(<liquid:fluorine>*200)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("氯仿MK1", "Chemical_factory_MK1", 10)
.addFluidInput(<liquid:liquidchlorine>*6000)
.addFluidInput(<liquid:liquidmethane>*1000)
.addFluidOutput(<liquid:chloroform>*1000)
.addFluidOutput(<liquid:hydrochloric_acid>*3000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("甲烷1MK1", "Chemical_factory_MK1", 20)
.addItemInput(<ore:dustCoal>)
.addFluidInput(<liquid:liquidhydrogen>*4000)
.addFluidOutput(<liquid:liquidmethane>*1000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("甲烷2MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:propene>*2000)
.addItemInput(<ore:dustCoal>)
.addItemOutput(<ore:dustCoal>*6)
.addFluidOutput(<liquid:liquidmethane>*1000)
.addFluidOutput(<liquid:liquidhydrogen>*8000)
.addEnergyPerTickInput(2048)
.build();

RecipeBuilder.newBuilder("柴油化工厂", "Chemical_factory_MK1", 5)
.addFluidInput(<liquid:light_fuel>*5000)
.addFluidInput(<liquid:heavy_fuel>*1000)
.addFluidOutput(<liquid:diesel>*6000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("灰烬晶体碎片化工厂MK1", "Chemical_factory_MK1", 20)
.addItemInput(<minecraft:coal>)
.addFluidInput(<liquid:petrotheum>*100)
.addItemOutput(<embers:shard_ember>*2)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉1化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:sulfuricacid>*1000)
.addFluidInput(<liquid:heavywater>*1000)
.addItemInput(<contenttweaker:zl_ore>)
.addItemOutput(<contenttweaker:zl_dust>*2)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉2化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:sulfuric_acid>*1000)
.addFluidInput(<liquid:heavywater>*1000)
.addItemInput(<contenttweaker:zl_ore>)
.addItemOutput(<contenttweaker:zl_dust>*2)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉3化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:sulfuric_acid>*2000)
.addFluidInput(<liquid:heavywater>*2000)
.addItemInput(<contenttweaker:shenming_ore>)
.addItemOutput(<contenttweaker:zl_dust>*8)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("教皇粉3.1化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:sulfuricacid>*2000)
.addFluidInput(<liquid:heavywater>*2000)
.addItemInput(<contenttweaker:shenming_ore>)
.addItemOutput(<contenttweaker:zl_dust>*8)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("润滑油1化工厂MK1", "Chemical_factory_MK1", 1)
.addFluidInput(<liquid:creosote>*12)
.addFluidOutput(<liquid:lubricant>*4)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油2化工厂MK1", "Chemical_factory_MK1", 1)
.addFluidInput(<liquid:seed_oil>*16)
.addFluidOutput(<liquid:lubricant>*4)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油3化工厂MK1", "Chemical_factory_MK1", 1)
.addFluidInput(<liquid:oil_dwarf>*4)
.addFluidOutput(<liquid:lubricant>*8)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("润滑油4化工厂MK1", "Chemical_factory_MK1", 1)
.addFluidInput(<liquid:refined_fuel>*12)
.addFluidOutput(<liquid:lubricant>*8)
.addEnergyPerTickInput(1024)
.build();

RecipeBuilder.newBuilder("甲苯化工厂MK1", "Chemical_factory_MK1", 20)
.addItemInput(<cregtech:mode:1>).setChance(0)
.addFluidInput(<liquid:naphtha>*1000)
.addFluidInput(<liquid:steam>*4000)
.addFluidOutput(<liquid:toluene_liquid>*200)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("甲苯化工厂MK1-1", "Chemical_factory_MK1", 20)
.addItemInput(<cregtech:mode:1>).setChance(0)
.addFluidInput(<liquid:refined_oil>*1000)
.addFluidInput(<liquid:steam>*4000)
.addFluidOutput(<liquid:toluene_liquid>*200)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("TNT化工厂MK1", "Chemical_factory_MK1", 10)
.addFluidInput(<liquid:toluene_liquid>*266)
.addItemInput(<nuclearcraft:part:6>*1)
.addItemInput(<minecraft:gunpowder>*1)
.addItemInput(<enderio:item_material:20>*2)
.addItemOutput(<minecraft:tnt>*1)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("岩浆块化工厂MK1", "Chemical_factory_MK1", 20)
.addItemInput(<minecraft:stone>*1)
.addFluidInput(<liquid:lava>*1000)
.addItemOutput(<minecraft:magma>*1)
.addEnergyPerTickInput(256)
.build();

RecipeBuilder.newBuilder("大师电路基板化工厂MK1", "Chemical_factory_MK1", 20)
.addItemInput(<contenttweaker:advancedcircuitplate>)
.addItemInput(<deepmoblearning:glitch_infused_ingot>*4)
.addItemInput(<nuclearcraft:compound:1>*4)
.addFluidInput(<liquid:nak>*1440)
.addItemOutput(<contenttweaker:mastercircuitplate>*1)
.addEnergyPerTickInput(4096)
.build();

RecipeBuilder.newBuilder("胶粘剂化工厂MK1", "Chemical_factory_MK1", 20)
.addItemInput(<minecraft:dye:15>*2)
.addItemInput(<minecraft:clay_ball>)
.addFluidInput(<liquid:hydrated_gelatin>*8)
.addItemOutput(<embers:adhesive>*3)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氢氧化钠化工厂MK1", "Chemical_factory_MK1", 10)
.addFluidInput(<liquid:liquidsodium>*20)
.addFluidInput(<liquid:water>*2000)
.addFluidOutput(<liquid:sodium_hydroxide_solution>*2000)
//化工厂添加如下输出.addFluidOutput(<liquid:hydrogen>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸1化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:liquidethene>*3000)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:aceticacid>*4000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸1.1化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:liquidethene>*3000)
.addFluidInput(<liquid:liquidoxygen>*1000)
.addFluidOutput(<liquid:aceticacid>*4000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸2化工厂MK1", "Chemical_factory_MK1", 50)
.addFluidInput(<liquid:ethanol>*1000)
.addItemInput(<mekanism:biofuel>*2)
.addFluidOutput(<liquid:aceticacid>*800)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("乙酸钙化工厂MK1", "Chemical_factory_MK1", 10)
.addFluidInput(<liquid:aceticacid>*2000)
.addItemInput(<minecraft:dye:15>*1)
.addFluidOutput(<liquid:calciumacetatesolution>*1000)
.addFluidOutput(<liquid:hydrogen>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氯苯化工厂MK1", "Chemical_factory_MK1", 30)
.addFluidInput(<liquid:benzene>*2000)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidOutput(<liquid:chlorobenzene>*2000)
.addFluidOutput(<liquid:liquidhydrogenchloride>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("苯酚化工厂MK1", "Chemical_factory_MK1", 30)
.addFluidInput(<liquid:chlorobenzene>*4000)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidOutput(<liquid:phenol>*4000)
.addItemOutput(<mekanism:salt>*1)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("双酚A1化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:phenol>*1000)
.addFluidInput(<liquid:liquidhydrogenchloride>*500)
.addFluidOutput(<liquid:bisphenol_a>*1500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("双酚A2化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:phenol>*2000)
.addFluidInput(<liquid:acetone>*1000)
.addFluidOutput(<liquid:bisphenol_a>*3000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("烯丙基氯化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:propene>*4500)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidOutput(<liquid:allyl_chloride>*4500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("次氯酸化工厂MK1", "Chemical_factory_MK1", 15)
.addFluidInput(<liquid:liquidchlorine>*1000)
.addFluidInput(<liquid:water>*1000)
.addFluidOutput(<liquid:hypochlorous_acid>*1000)
.addFluidOutput(<liquid:liquidhydrogenchloride>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("环氧氯丙烷化工厂MK1", "Chemical_factory_MK1", 20)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidInput(<liquid:allyl_chloride>*3000)
.addFluidInput(<liquid:hypochlorous_acid>*1000)
.addFluidOutput(<liquid:epichlorohydrin>*4000)
.addFluidOutput(<liquid:brine>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("环氧树脂化工厂MK1", "Chemical_factory_MK1", 30)
.addItemInput(<nuclearcraft:compound:5>*1)
.addFluidInput(<liquid:epichlorohydrin>*4000)
.addFluidInput(<liquid:bisphenol_a>*12000)
.addFluidOutput(<liquid:epoxy_resin>*16000)
.addFluidOutput(<liquid:brine>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("氨化工厂MK1", "Chemical_factory_MK1", 40)
.addFluidInput(<liquid:nitrogen>*1000)
.addFluidInput(<liquid:hydrogen>*6000)
.addFluidOutput(<liquid:ammonia>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("一氧化氮化工厂MK1", "Chemical_factory_MK1", 30)
.addFluidInput(<liquid:ammonia>*1000)
.addFluidInput(<liquid:oxygen>*1500)
.addFluidOutput(<liquid:nitric_oxide>*1000)
.addFluidOutput(<liquid:water>*1500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("二氧化氮化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:nitric_oxide>*2000)
.addFluidInput(<liquid:oxygen>*1000)
.addFluidOutput(<liquid:nitrogen_dioxide>*3000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("一氧化氮-液氧化工厂MK1", "Chemical_factory_MK1", 30)
.addFluidInput(<liquid:ammonia>*1000)
.addFluidInput(<liquid:liquidoxygen>*1500)
.addFluidOutput(<liquid:nitric_oxide>*1000)
.addFluidOutput(<liquid:water>*1500)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("二氧化氮-液氧化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:nitric_oxide>*2000)
.addFluidInput(<liquid:liquidoxygen>*1000)
.addFluidOutput(<liquid:nitrogen_dioxide>*3000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("硝酸化工厂MK1", "Chemical_factory_MK1", 30)
.addFluidInput(<liquid:nitrogen_dioxide>*9000)
.addFluidInput(<liquid:water>*3000)
.addFluidOutput(<liquid:nitric_acid>*10000)
.addFluidOutput(<liquid:nitric_oxide>*2000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("四硝基甲烷化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:ethenone>*125)
.addFluidInput(<liquid:nitric_acid>*1000)
.addFluidOutput(<liquid:tetranitromethane>*250)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("高十六烷值柴油化工厂MK1", "Chemical_factory_MK1", 2)
.addFluidInput(<liquid:tetranitromethane>*125)
.addFluidInput(<liquid:diesel>*1000)
.addFluidOutput(<liquid:cetane_boosted_diese>*1000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("粗汽油化工厂MK1", "Chemical_factory_MK1",20)
.addFluidInput(<liquid:methanol>*1000)
.addFluidInput(<liquid:refinery_gas>*2000)
.addFluidInput(<liquid:naphtha>*16000)
.addFluidInput(<liquid:acetone>*1000)
.addFluidOutput(<liquid:raw_gasoline>*20000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("粗汽油化工厂MK1-1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:methanol>*1000)
.addFluidInput(<liquid:refinery_gas>*2000)
.addFluidInput(<liquid:refined_oil>*16000)
.addFluidInput(<liquid:acetone>*1000)
.addFluidOutput(<liquid:raw_gasoline>*20000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("汽油化工厂MK1", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:raw_gasoline>*10000)
.addFluidInput(<liquid:toluene_liquid>*1000)
.addFluidOutput(<liquid:gasoline>*11000)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("等离子物质", "Chemical_factory_MK1", 20)
.addFluidInput(<liquid:plasma>*100)
.addFluidInput(<liquid:neutron>*100)
.addItemInput(<appliedenergistics2:material:47>*4)
.addFluidOutput(<liquid:matter_plasma>*200)
.addEnergyPerTickInput(512)
.build();

RecipeBuilder.newBuilder("四氯化钛1MK1", "Chemical_factory_MK1", 40)
.addItemInput(<contenttweaker:rutile_dust>*3)
.addItemInput(<ore:dustCoal>*2)
.addFluidInput(<liquid:liquidchlorine>*4000)
.addFluidOutput(<liquid:titanium_tetrachloride>*1000)
.addFluidOutput(<liquid:carbon_monoxide>*2000)
.addEnergyPerTickInput(7840)
.build();

RecipeBuilder.newBuilder("四氯化钛2MK1", "Chemical_factory_MK1", 40)
.addItemInput(<contenttweaker:rutile_dust>*3)
.addItemInput(<ore:dustCharcoal>*2)
.addFluidInput(<liquid:liquidchlorine>*4000)
.addFluidOutput(<liquid:titanium_tetrachloride>*1000)
.addFluidOutput(<liquid:carbon_monoxide>*2000)
.addEnergyPerTickInput(7840)
.build();