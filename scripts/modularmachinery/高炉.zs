//本脚本由chengzhenjie创建,部分内容由ohxihh以及Circulation_调整修改
//未经ohxihh和chengzhenjie和Circulation_允许,任何人不允许发布修改过的脚本或将其应用于你的整合包或服务器

//导包
import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantment;
import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.FactoryRecipeThread;
import novaeng.hypernet.HyperNetHelper;
import novaeng.hypernet.RegistryHyperNet;
import novaeng.hypernet.research.ResearchCognitionData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mod.mekanism.gas.IGasStack;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.RecipeModifierBuilder;
import crafttweaker.item.IItemDefinition;
import mods.modularmachinery.RecipeFinishEvent;
import crafttweaker.events.IEventManager;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import crafttweaker.event.EntityLivingDeathEvent;
import mods.modularmachinery.MachineStructureFormedEvent;
import crafttweaker.event.ItemTossEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.entity.IEntityItem;
import crafttweaker.world.IBlockPos;
import crafttweaker.util.Math;
import mods.thermalexpansion.InductionSmelter;
import mods.modularmachinery.Sync;
import crafttweaker.world.IWorld;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.IMachineController;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.RecipeModifier;
import mods.modularmachinery.FactoryRecipeStartEvent;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.MachineController;
import mods.modularmachinery.RecipeEvent;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.ActiveMachineRecipe;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import mods.modularmachinery.MachineEvent;
import mods.modularmachinery.RecipeThread;

//======================================工业高炉======================================
//XQlevel表达所需最低等级线圈,time决定配方初始耗时,energy决定配方初始耗能

function glpf(Inputs as IIngredient[],Output as IIngredient[],XQlevel as int,time as int,energy as int){
    var chaopin  = 2;//基本超频倍率（每提高一个线圈等级）
    var haoshi  = 3.8;//基本耗能倍率（每提高一个线圈等级）
    val Outputname = Output[0].items[0].name;
    RecipeBuilder.newBuilder("electric_blast_furnace" + Outputname, "electric_blast_furnace", time,XQlevel)
        .addInputs(Inputs)
        .addEnergyPerTickInput(energy)
        .addStartHandler(function(event as RecipeStartEvent) {
            val ctrl = event.controller;
            val data = ctrl.customData;
            val map = data.asMap();
            val dData = D(data);
            val xqdj = dData.getInt("xqdj", 0);
            if (xqdj < 2147483647){
                    val ebeil = pow(haoshi, xqdj - XQlevel);
                    val tbeil1  = 1.00/pow(chaopin, xqdj - XQlevel);
                    val tbeil2  = 1.00/pow(chaopin, Math.floor((xqdj - XQlevel)/2));
                    ctrl.addModifier("energy", RecipeModifierBuilder.create("modularmachinery:energy", "input",ebeil, 1, false).build());
                    ctrl.addModifier("time_1", RecipeModifierBuilder.create("modularmachinery:duration", "input",tbeil1, 1, false).build());
                    ctrl.addModifier("time_2", RecipeModifierBuilder.create("modularmachinery:duration", "input",tbeil2, 1, false).build());
                } else {
                    val ebeil = 1 - energy;
                    val tbeil1 = 1 - time;
                    val tbeil2 = 1;
                    ctrl.addModifier("energy", RecipeModifierBuilder.create("modularmachinery:energy", "input",ebeil, 0, false).build());
                    ctrl.addModifier("time_1", RecipeModifierBuilder.create("modularmachinery:duration", "input",tbeil1, 0, false).build());
                    ctrl.addModifier("time_2", RecipeModifierBuilder.create("modularmachinery:duration", "input",tbeil2, 1, false).build());
                }
        })
        .addPreCheckHandler(function(event as RecipeCheckEvent) {
            val ctrl = event.controller;
            val data = ctrl.customData;
            val dData = D(data);
            val xqdj = dData.getInt("xqdj", 0);
            if (xqdj < XQlevel) {
                event.setFailed("§4未达到配方所需最低线圈等级！");
                return;
            }
        })
        .addOutputs(Output)
        .addRecipeTooltip("§2配方需求最低线圈等级为:§6"+ XQlevel)
    .build();}

glpf([<thermalfoundation:material:68>],[<thermalfoundation:material:132>],1,800,64);
glpf([<minecraft:iron_ingot>],[<thermalfoundation:material:160>],1,300,32);
glpf([<liquid:titanium_tetrachloride>*1000,<nuclearcraft:dust:7>*2],[<contenttweaker:hot_titanium_ingot>*1,<contenttweaker:magnesiumchloride_dust>*6],2,800,1920);
glpf([<nuclearcraft:dust:7>],[<nuclearcraft:ingot:7>],2,600,512);
glpf([<contenttweaker:chrome_dust>],[<contenttweaker:chrome_ingot>],2,800,341);
glpf([<contenttweaker:stainless_steel_dust>],[<contenttweaker:stainless_ingot>],2,800,341);
glpf([<mekanism:dust:2>,<liquid:cryotheum>*50],[<mekanism:ingot:1>],3,1200,2048);
glpf([<thermalfoundation:material:71>,<liquid:cryotheum>*50],[<thermalfoundation:material:135>],3,1200,2048);
glpf([<contenttweaker:osmiridium_dust>,<liquid:cryotheum>*50],[<plustic:osmiridiumingot>],3,800,1024);
glpf([<draconicevolution:draconium_dust>,<liquid:cryotheum>*2000,<liquid:cetane_boosted_diese>*50],[<draconicevolution:draconium_ingot>,<liquid:pyrotheum>*1000],3,800,2458);
glpf([<draconicevolution:draconium_dust>,<liquid:cryotheum>*2000],[<draconicevolution:draconium_ingot>,<liquid:pyrotheum>*1000],3,1200,3072);
glpf([<contenttweaker:dragon_dust2>,<liquid:cetane_boosted_diese>*50],[<contenttweaker:dragon_hotingot>],4,1600,5734);
glpf([<contenttweaker:dragon_dust2>],[<contenttweaker:dragon_hotingot>],4,2400,7168);
glpf([<contenttweaker:zl_dust>],[<contenttweaker:zl_hotingot>],4,1200,8192);
glpf([<contenttweaker:ilmenite_dust>*5,<ore:dustCoal>*1],[<contenttweaker:rutile_dust>*3,<liquid:carbon_monoxide>*1000,<thermalfoundation:material:160>*1],1,3200,1920);
glpf([<contenttweaker:ilmenite_dust>*5,<ore:dustCharcoal>*1],[<contenttweaker:rutile_dust>*3,<liquid:carbon_monoxide>*1000,<thermalfoundation:material:160>*1],1,3200,1920);
