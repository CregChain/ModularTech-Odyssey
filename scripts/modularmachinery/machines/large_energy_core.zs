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

//电输出1
RecipeBuilder.newBuilder("电输出1","large_energy_core", 10)
.addItemInput(<immersiveengineering:material:27>).setChance(0)
.addEnergyPerTickInput(2048)
.addEnergyPerTickOutput(2048)
.build();

//电输出2
RecipeBuilder.newBuilder("电输出2","large_energy_core", 10)
.addItemInput(<contenttweaker:basiccircuit>).setChance(0)
.addEnergyPerTickInput(8192)
.addEnergyPerTickOutput(8192)
.build();

//电输出3
RecipeBuilder.newBuilder("电输出3","large_energy_core", 10)
.addItemInput(<contenttweaker:advancedcircuit>).setChance(0)
.addEnergyPerTickInput(32768)
.addEnergyPerTickOutput(32768)
.build();

//电输出4
RecipeBuilder.newBuilder("电输出4","large_energy_core", 10)
.addItemInput(<contenttweaker:epiccircuit>).setChance(0)
.addEnergyPerTickInput(131072)
.addEnergyPerTickOutput(131072)
.build();
