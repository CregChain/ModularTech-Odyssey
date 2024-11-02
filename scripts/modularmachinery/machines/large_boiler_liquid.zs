//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;

//运行调整
MMEvents.onMachinePostTick("large_boiler_liquid", function(event as MachineTickEvent) {
    val controller as IMachineController = event.controller;
    val data = controller.customData;
    val map = data.asMap();
    val temp = isNull(map["heat"]) ? 300 as float : map["heat"].asFloat();

    if (controller.isWorking) {
        //运行时增加温度
        val newEnergy = temp + increaseEnergy(temp);
        //if (newEnergy != temp) {
            map["heat"] = newEnergy;
            controller.customData = data;
            //实际温度与300的比值再与1比较，输出较大值作为流体乘数，上限为10
            val modifier as float = max(temp / 300 as float , 1 ) ;
            //添加配方运行调整器
            controller.addModifier("liquid_output", RecipeModifierBuilder.create("modularmachinery:fluid", "output", modifier, 1, false).build());
        //}
    } else {
        //停止时减少温度
        val newEnergy = temp - decreaseEnergy(temp);
        if (newEnergy != temp) {
            map["heat"] = newEnergy;
            controller.customData = data;
        }
    }
});

//显示调整
MMEvents.onControllerGUIRender("large_boiler_liquid", function(event as ControllerGUIRenderEvent) {
    val controller as IMachineController = event.controller;
    val data = controller.customData.asMap();
    //如果温度为空，则设定为300，否则显示为实际值
    val temp = isNull(data["heat"]) ? 300 as float : data["heat"].asFloat();
    val modifier as float = max(temp / 300 , 1 ) * 100 ;
    var info as string[] = [
        "§a消耗燃料进行加热，温度随运行逐渐提高，但如果停止燃料输入会快速冷却",
        "§b温度越高，单位燃料产出的蒸汽越多 ",
        " ",
        "§4温度:§b" + (temp as int) + "K",
        "§6燃烧效率:" + "§a" + (((modifier * 10000) as int) as float) / 10000 + "%",
    ];
    //设定在GUI显示
    event.extraInfo = info;
});

//输出a与b较小值
function min(a as float, b as float) as float {
    return a <= b ? a : b;
}

//输出a与b较大值
function max(a as float, b as float) as float {
    return a >= b ? a : b;
}

//热量在不同温度下增加速度
function increaseEnergy(heat as float) as float {
    if (heat >= 3000) {
        return 0 as float;
    } else if (heat >= 2000) {
        return 0.5 as float;
    } else if (heat >= 1000) {
        return 1.0 as float;
    } else {
        return 2.0 as float;
    }
}

//热量在不同温度下减少速度
function decreaseEnergy(heat as float) as float {
    if (heat >= 2000) {
        return 3 as float;
    } else if (heat >= 1000) {
        return 2 as float;
    } else if (heat >= 300) {
        return 1 as float;
    }else {
        return 0 as float;
    }
}

RecipeBuilder.newBuilder("steam_liquid1", "large_boiler_liquid", 120)
.addFluidInput(<liquid:lava>*1000)
.addFluidPerTickOutput(<liquid:steam>*200).setIgnoreOutputCheck(true)
.addItemOutput(<minecraft:obsidian>*1)
.build();

RecipeBuilder.newBuilder("steam_liquid2", "large_boiler_liquid", 10)
.addFluidInput(<liquid:creosote>*1000)
.addFluidPerTickOutput(<liquid:steam>*200).setIgnoreOutputCheck(true)
.build();