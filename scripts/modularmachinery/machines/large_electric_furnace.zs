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

//large_electric_furnaceMK1
MachineModifier.setMaxParallelism("large_electric_furnaceMK1", 4);
RecipeAdapterBuilder.create("large_electric_furnaceMK1", "minecraft:furnace")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.3, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 0.8, 1, false).build())
    .build();

MachineModifier.setMaxParallelism("large_electric_furnaceMK2", 8);
RecipeAdapterBuilder.create("large_electric_furnaceMK2", "minecraft:furnace")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.1, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 6, 1, false).build())
    .build();

MachineModifier.setMaxParallelism("large_electric_furnaceMK3", 16);
RecipeAdapterBuilder.create("large_electric_furnaceMK3", "minecraft:furnace")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.03, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 45, 1, false).build())
    .build();