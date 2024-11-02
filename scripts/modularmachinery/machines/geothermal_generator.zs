//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server
#loader crafttweaker reloadable

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.events.IEventManager;
import crafttweaker.event.CommandEvent;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;

//显示调整
MMEvents.onControllerGUIRender("geothermal_generator", function(event as ControllerGUIRenderEvent) {
    val controller as IMachineController = event.controller;
    //val data = controller.customData.asMap();
    event.extraInfo = "§d这台机器通过汲取地心中的能量转换为电力，因此它必须放置于地心深处";
    event.extraInfo = "§e工作时，需持续输入灰烬能量，这种来自地心的能量能够突破基岩层的壁垒与地心深处产生共鸣";
});

/*
RecipeBuilder.newBuilder("地心发电1","geothermal_generator", 400,10)
.addFluidInput(<liquid:lava>*1000)
.addEmberInput(1600)
.setAltitude(0,5)
.addEnergyPerTickOutput(900)
.build();

*/