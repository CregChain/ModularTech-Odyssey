/*import crafttweaker.data.IData;
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
import mods.modularmachinery.MachineStructureUpdateEvent;
import mods.modularmachinery.MachineController;
import novaeng.NovaEngUtils;
import mods.modularmachinery.RecipeEvent;
import mods.modularmachinery.RecipeTickEvent;

var recipeCounter= 1;

var riersshr = 10000 as int;   //能级下单个能源仓输入速度
var riersscc = 100000000 as int;   //能级下单个能源仓提供存储

var riers1 = 400000000 as int;   //预设能级1配方消耗启动能量
var riers2 = 800000000 as int;   //预设能级2配方消耗启动能量
var riers3 = 1600000000 as int;   //预设能级3配方消耗启动能量


//工厂线程数设置
    function jbzc(Name as string){
        MachineModifier.setMaxThreads(Name, 0);
        MachineModifier.addCoreThread(Name, FactoryRecipeThread.createCoreThread("聚变反应模块"));
        MachineModifier.addCoreThread(Name, FactoryRecipeThread.createCoreThread("能量输入模块"));
    }
    val mk1 = "mk1";jbzc(mk1);
    val mk2 = "mk2";jbzc(mk2);
    val mk3 = "mk3";jbzc(mk3);
    val mk4 = "mk4";jbzc(mk4);
    val mk5 = "mk5";jbzc(mk5);
//参数设置
    function jbCS(moName as string){
        MMEvents.onStructureUpdate(moName, function(event as MachineStructureUpdateEvent) {
            val ctrl = event.controller;
            val data = ctrl.customData;
            val dData = D(data);
            val nycs = dData.getInt("nycs", 0);
            val ccl = dData.getInt("ccl", 0);
            val map = data.asMap();
            val world=ctrl.world;
            val pos=ctrl.pos;
            val jsq = ctrl.getBlocksInPattern(<modularmachinery:blockenergyinputhatch:*>);

            map["bh"] = 0;
            map["nycs"] = jsq;
            ctrl.customData = data;
        });}
    jbCS(mk1);jbCS(mk2);jbCS(mk3);jbCS(mk4);jbCS(mk5);

//控制器合成
//自己写去

//添加控制器 GUI 信息
    function jbGUI(moName as string,riersscc as int){
    MMEvents.onControllerGUIRender(moName, function(event as ControllerGUIRenderEvent) {
        val ctrl = event.controller;
        val data = ctrl.customData;
        val dData = D(data);
        val nycs = dData.getInt("nycs", 0);
        val ccl = dData.getInt("ccl", 0);
        val map = data.asMap();
        val world=ctrl.world;
        val pos=ctrl.pos;
        var info as string[] = [
            "§4//////////// " + moName + "型聚变反应堆 ////////////",
            "§4启动能量缓存：§a" + ccl + " / " + riersscc * nycs,
        ];

        event.extraInfo = info;
    });}
    jbGUI(mk1,riersscc);jbGUI(mk2,riersscc);jbGUI(mk3,riersscc);jbGUI(mk4,riersscc);jbGUI(mk5,riersscc);

//启动能源输入
    function qdnysr(reName as string,moName as string,riersshr as int,riersscc as int){
        RecipeBuilder.newBuilder(reName, moName, 10, 0, false)
            .addEnergyPerTickInput(riersshr)
            .addFactoryStartHandler(function(event as FactoryRecipeStartEvent) {
                val ctrl = event.controller;
                val bl = event.factoryRecipeThread;
                val data = ctrl.customData;
                val map = data.asMap();
                val dData = D(data);
                val nycs = dData.getInt("nycs", 0);
                
                bl.addModifier("typeMultiplier", RecipeModifierBuilder.create("modularmachinery:energy", "input",nycs, 1, false).build());
            })
            .addPreCheckHandler(function(event as RecipeCheckEvent) {
                val ctrl = event.controller;
                val data = ctrl.customData;
                val dData = D(data);
                val nycs = dData.getInt("nycs", 0);
                val ccl = dData.getInt("ccl", 0);
                if (ccl >= nycs * riersscc) {
                    event.setFailed("§6启动能量已满，准备反应！");
                    return;
                }
            })
            .addFactoryFinishHandler(function (event as FactoryRecipeFinishEvent) {
                val ctrl = event.controller;
                val data = ctrl.customData;
                val dData = D(data);
                val nycs = dData.getInt("nycs", 0);
                val ccl = dData.getInt("ccl", 0);
                val map = data.asMap();
                map["ccl"] = ccl + riersshr * 10 * nycs;
                ctrl.customData = data;
            })
            .setParallelized(false)
            .addRecipeTooltip("§6此配方用于输入启动能量")
            .addRecipeTooltip("§2实际的启动能量输入速度为能源仓数量乘"+ riersshr + "/t")
            .addRecipeTooltip("§4启动能量不足将无法运行配方！")
            .setThreadName("能量输入模块")
        .build();
    }
    qdnysr("mk1_sr",mk1,riersshr,riersscc);
    qdnysr("mk2_sr",mk2,riersshr,riersscc);
    qdnysr("mk3_sr",mk3,riersshr,riersscc);
    qdnysr("mk4_sr",mk4,riersshr,riersscc);
    qdnysr("mk5_sr",mk5,riersshr,riersscc);
//聚变配方运行
    function jbhc(Name as string,jbdj as string,time as int,Energy as int,qdEnergy as int,Inputs as IIngredient[],Output as IIngredient,recipeCounter as int){
        RecipeBuilder.newBuilder(Name,jbdj,time,recipeCounter,false)
            .addEnergyPerTickInput(Energy)
            .addInputs(Inputs)
            .addPreCheckHandler(function(event as RecipeCheckEvent) {
                val ctrl = event.controller;
                val data = ctrl.customData;
                val dData = D(data);
                val ccl = dData.getInt("ccl", 0);
                val bh = dData.getLong("bh", 0);
                if(bh < qdEnergy){
                    if (ccl < qdEnergy) {
                        event.setFailed("§6启动能量缓存不足，无法开始配方！");
                        return;
                    }
                }
            })
            .addFactoryFinishHandler(function (event as FactoryRecipeFinishEvent) {
                val ctrl = event.controller;
                val data = ctrl.customData;
                val dData = D(data);
                val map = data.asMap();
                val ccl = dData.getInt("ccl", 0);
                val bh = dData.getLong("bh", 0);

                if(bh < qdEnergy){
                    map["ccl"] = ccl - qdEnergy;
                    map["bh"] = qdEnergy;
                    ctrl.customData = data;
                } else {
                    map["ccl"] = ccl - 0;
                    ctrl.customData = data;
                }
            })
            .addOutput(Output)
            .addRecipeTooltip("§6此配方启动能量消耗为" + qdEnergy)
            .addRecipeTooltip("§6持续运行中不消耗第二次启动能量，")
            .addRecipeTooltip("§6若是运行中断将会导致重新扣除能量")
            .addRecipeTooltip("§6中途切换为其他配方若启动能量相同或更低时不需要重新启动")
            .setThreadName("聚变反应模块")
        .build();}
    jbhc("mk2_hq",mk2,200,100000000,riers1,[<liquid:hydrogen> * 1000,<liquid:hydrogen> * 1000],<liquid:helium> * 1000,recipeCounter);recipeCounter += 1;
    jbhc("mk2_jfh",mk2,100,100000000,riers2,[<liquid:liquiddeuterium> * 1000,<liquid:liquidtritium> *1000],<liquid:jfh> * 1000,recipeCounter);recipeCounter += 1;
    jbhc("mk2_wdlt1",mk2,50,100000000,riers2,[<liquid:refined_glowstone> * 1440,<liquid:pyrotheum> * 4000],<liquid:phi_matter> * 100,recipeCounter);recipeCounter += 1;
    jbhc("mk2_wdlt2",mk2,50,100000000,riers2,[<liquid:refined_obsidian> * 1440,<liquid:crystalloid> * 40],<liquid:oslash_matter> * 100,recipeCounter);recipeCounter += 1;
    jbhc("mk2_jxhj",mk2,100,100000000,riers2,[<liquid:oslash_matter> * 100,<liquid:phi_matter> *100],<liquid:ancient_debris> * 144,recipeCounter);recipeCounter += 1;
//配方适配器(超频)
    RecipeAdapterBuilder.create(mk4, mk1)
        .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.25, 1, false).build())
        .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0, 1, false).build())
        .build();
    RecipeAdapterBuilder.create(mk4, mk2)
        .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.25, 1, false).build())
        .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0, 1, false).build())
        .build();
    RecipeAdapterBuilder.create(mk4, mk3)
        .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.25, 1, false).build())
        .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0, 1, false).build())
        .build();
    RecipeAdapterBuilder.create(mk5, mk4)
        .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.25, 1, false).build())
        .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0, 1, false).build())
        .build();
    RecipeAdapterBuilder.create(mk2, mk1)
        .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5, 1, false).build())
        .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 2.0, 1, false).build())
        .build();
    RecipeAdapterBuilder.create(mk3, mk2)
        .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5, 1, false).build())
        .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 2.0, 1, false).build())
        .build();
//终结聚变  用于重置配方使能量正常消耗
    function jbzs(reName as string,moName as string){
        RecipeBuilder.newBuilder(reName,moName, 1, 999999, false)
            .addEnergyPerTickInput(1)
            .addPreCheckHandler(function(event as RecipeCheckEvent) {
                val ctrl = event.controller;
                val data = ctrl.customData;
                val dData = D(data);
                val bh = dData.getInt("bh", 0);
                val map = data.asMap();
                if(bh == 0){
                    event.setFailed("§2当前反应堆空载中");
                    return;
                } else {
                    map["bh"] = bh - bh;
                    ctrl.customData = data;
                }
            })
            .setParallelized(false)
            .addRecipeTooltip("§6此配方启动代表聚变周期结束")
            .addRecipeTooltip("§6需要重新消耗启动能量")
            .setThreadName("聚变反应模块")
        .build();}
    jbzs("mk1_sj",mk1);
    jbzs("mk2_sj",mk2);
    jbzs("mk3_sj",mk3);
    jbzs("mk4_sj",mk4);
    jbzs("mk5_sj",mk5);
*/