//本脚本由Circulation_创建，作为部分机械的参数设置器
//未经Circulation_允许，任何人不允许发布修改过的脚本或将其应用于你的整合包或服务器

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
import novaeng.NovaEngUtils;
import mods.modularmachinery.RecipeEvent;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.MachineStructureUpdateEvent;
import crafttweaker.world.IFacing;

//线圈注明
<nuclearcraft:turbine_dynamo_coil:4>.addTooltip("§6作为工业高炉的线圈，等级为1");
<nuclearcraft:turbine_dynamo_coil:2>.addTooltip("§6作为工业高炉的线圈，等级为2");
<nuclearcraft:turbine_dynamo_coil:0>.addTooltip("§6作为工业高炉的线圈，等级为3");
<draconicevolution:draconium_block>.addTooltip("§6作为工业高炉的线圈，等级为4");
<draconicevolution:draconic_block>.addTooltip("§6作为工业高炉的线圈，等级为5");
<contenttweaker:galaxy_block>.addTooltip("§6作为工业高炉的线圈，等级为6");
<contenttweaker:universe_block>.addTooltip("§6作为工业高炉的线圈，等级为2147483647");

//一体化设置
    //高炉注册器
        function glzc(name as string,xqsl as int) {
            MMEvents.onStructureUpdate(name, function(event as MachineStructureUpdateEvent) {
                val ctrl = event.controller;
                val data = ctrl.customData;
                val dData = D(data);
                val xqdj = dData.getInt("xqdj", 0);
                val map = data.asMap();
                    var jsq = 0;

                val level1 = ctrl.getBlocksInPattern(<nuclearcraft:turbine_dynamo_coil:4>);
                val level2 = ctrl.getBlocksInPattern(<nuclearcraft:turbine_dynamo_coil:2>);
                val level3 = ctrl.getBlocksInPattern(<nuclearcraft:turbine_dynamo_coil:0>);
                val level4 = ctrl.getBlocksInPattern(<draconicevolution:draconium_block>);
                val level5 = ctrl.getBlocksInPattern(<draconicevolution:draconic_block>);
                val level6 = ctrl.getBlocksInPattern(<contenttweaker:galaxy_block>);
                val levelU = ctrl.getBlocksInPattern(<contenttweaker:universe_block>);//极限等级，体现为2147483647

                if (level1 == xqsl){jsq += 1;}
                if (level2 == xqsl){jsq += 2;}
                if (level3 == xqsl){jsq += 3;}
                if (level4 == xqsl){jsq += 4;}
                if (level5 == xqsl){jsq += 5;}
                if (level6 == xqsl){jsq += 6;}
                if (levelU == xqsl){jsq += 2147483647;}

                map["xqdj"] = jsq;
                ctrl.customData = data;
            });
            MMEvents.onControllerGUIRender(name, function(event as ControllerGUIRenderEvent) {
                val ctrl = event.controller;
                val data = ctrl.customData;
                val dData = D(data);
                val xqdj = dData.getInt("xqdj", 0);
                val map = data.asMap();
                val world=ctrl.world;
                val pos=ctrl.pos;
                var info as string[] = [
                    "§2//////////// 工业高炉 ////////////",
                    "当前线圈等级：" + xqdj,

                    "§2线圈等级每超过配方等级1，使能量消耗增加4倍，时间减半",
                    "§2线圈等级每超过配方等级2，可以额外减半一次时间，不额外增加耗电",
                    "§6线圈等级为2147483647时，配方锁定为1t，耗时锁定为1t",
                ];

            event.extraInfo = info;
            }); 
        }
        glzc("electric_blast_furnace",16);
        glzc("multi_thread_electric_blast_furnace_mk1",32);
//参数设置

//添加控制器 GUI 信息
    //黑洞湮灭反应堆
        MMEvents.onControllerGUIRender("black_hole_annihilation_reactor", function(event as ControllerGUIRenderEvent) {
            val ctrl = event.controller;
            val data = ctrl.customData;
            val dData = D(data);
            val world=ctrl.world;
            val pos=ctrl.pos;
            var ifa = south as IFacing;
            var facing=ctrl.facing.name;
            
            if(facing has "WEST"){var ifa = east as IFacing;val sjpos = pos.getOffset(ifa,6);val block = world.getBlock(sjpos);var hdzl = block.data.Mass;var info as string[] = ["§2//////////// 黑洞湮灭反应堆 ////////////","当前引力异常点质量：" + hdzl,];event.extraInfo = info;}
            if(facing has "EAST"){var ifa = west as IFacing;val sjpos = pos.getOffset(ifa,6);val block = world.getBlock(sjpos);var hdzl = block.data.Mass;var info as string[] = ["§2//////////// 黑洞湮灭反应堆 ////////////","当前引力异常点质量：" + hdzl,];event.extraInfo = info;}
            if(facing has "SOUTH"){var ifa = north as IFacing;val sjpos = pos.getOffset(ifa,6);val block = world.getBlock(sjpos);var hdzl = block.data.Mass;var info as string[] = ["§2//////////// 黑洞湮灭反应堆 ////////////","当前引力异常点质量：" + hdzl,];event.extraInfo = info;}
            if(facing has "NORTH"){var ifa = south as IFacing;val sjpos = pos.getOffset(ifa,6);val block = world.getBlock(sjpos);var hdzl = block.data.Mass;var info as string[] = ["§2//////////// 黑洞湮灭反应堆 ////////////","当前引力异常点质量：" + hdzl,];event.extraInfo = info;}
        });
        