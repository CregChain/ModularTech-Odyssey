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

RecipeBuilder.newBuilder("焦煤","coke_oven", 1000)
.addItemInput(<minecraft:coal>)
.addItemOutput(<immersiveengineering:material:6>)
.addFluidOutput(<liquid:creosote>*500)
.build();

RecipeBuilder.newBuilder("焦煤块","coke_oven", 9000)
.addItemInput(<minecraft:coal_block>)
.addItemOutput(<immersiveengineering:stone_decoration:3>)
.addFluidOutput(<liquid:creosote>*5000)
.build();

RecipeBuilder.newBuilder("木炭","coke_oven", 900)
.addItemInput(<ore:logWood>)
.addItemOutput(<minecraft:coal:1>)
.addFluidOutput(<liquid:creosote>*250)
.build();
