//This script was created by Circulation_;
//Without the permission of Circulation_, you can't publish this script or apply it to your modpack or server

import mods.modularmachinery.FactoryRecipeStartEvent;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.IMachineController;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.RecipeModifier;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IIngredient;
import crafttweaker.util.Math;
import mods.modularmachinery.MMEvents;
import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeFinishEvent;
import crafttweaker.world.IFacing;

val MAX = 10000000 as long;//异常点极限质量
val MIN = 10000 as long;//可用于发电的最小质量
val time = 300;//单个周期时间，单位t
val liquid = 100;//单个周期消耗燃料质量，单位mb
val minmc = 1.0;//每个周期最低消耗质量
val maxmc = 100.0;//每个周期最高消耗质量
val energy = 10000 as long;//每t发电，最小质量时
val bl = 10000 as long;//每提升bl质量
val jc = 10000 as long;//每t增加jc发电量

//运行
    RecipeBuilder.newBuilder("黑洞湮灭反应堆发电1", "black_hole_annihilation_reactor",time)
        .addFluidInput(<liquid:matter_plasma> * liquid)
        .addPostCheckHandler(function(event as RecipeCheckEvent) {
            val ctrl = event.controller;
            val world=ctrl.world;
            val pos=ctrl.pos;
            var ifa = south as IFacing;
            var facing=ctrl.facing.name;
            
            if(facing has "WEST"){var ifa = east as IFacing;}
            if(facing has "EAST"){var ifa = west as IFacing;}
            if(facing has "SOUTH"){var ifa = north as IFacing;}

            val sjpos = pos.getOffset(ifa,6);
            val block = world.getBlock(sjpos);
            val hdzl = block.data.Mass;
            val cllong = 1 as long;
            val jsbl = cllong * (hdzl - MIN)/bl;
            val fdzj = jsbl * jc;

            if (hdzl < MIN) {
                /*if (hdzl < 100) {
                    if (!world.remote) {
                    world.setBlockState(<blockstate:minecraft:air>,sjpos);
                }
                return;
            }
                if (hdzl > 100) {
                event.setFailed("§4质量不足以开始工作！");
                return;
            }*/
                event.setFailed("§4质量不足以开始工作！");
                return;
            }
            if (hdzl > MAX) {
                if (!world.remote) {
                    world.setBlockState(<blockstate:draconicevolution:reactor_core>,{BCManagedData: {reactorState: 6 as byte, reactableFuel: 103680.0,explosionCountdown:100,temperature:13000.0}},sjpos);
                }
            }
            if (hdzl < MAX&&hdzl > MIN) {
                ctrl.addModifier("energy", RecipeModifierBuilder.create("modularmachinery:energy", "output",fdzj,0, false).build());
            }
        })
        .addFinishHandler(function (event as RecipeFinishEvent) {
            val ctrl = event.controller;
            val world=ctrl.world;
            val pos=ctrl.pos;
            var ifa = south as IFacing;
            var facing=ctrl.facing.name;
            
            if(facing has "WEST"){var ifa = east as IFacing;}
            if(facing has "EAST"){var ifa = west as IFacing;}
            if(facing has "SOUTH"){var ifa = north as IFacing;}

            val sjpos = pos.getOffset(ifa,6);
            val block = world.getBlock(sjpos);
            var hdzl = block.data.Mass;
            val cllong = 1 as long;
            val jssl = cllong * world.random.nextDouble(minmc,maxmc);

            if (!world.remote) {
                    world.setBlockState(<blockstate:matteroverdrive:gravitational_anomaly>,{Mass: hdzl - jssl},sjpos);
                }
            
        })
        .addEnergyPerTickOutput(energy)
    .build();