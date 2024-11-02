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

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;

//化粪池
MachineModifier.setMaxThreads("septic_tank", 64);
RecipeBuilder.newBuilder("再发酵1","septic_tank", 1800)
.addItemInput(<contenttweaker:fermentation_mixture>*2)
.addItemOutput(<cropdusting:fertile_dirt>).setChance(0.01)
.addFluidOutput(<liquid:biogas>*150)
.build();

RecipeBuilder.newBuilder("再发酵2","septic_tank", 1800)
.addItemInput(<cropdusting:poop>*2)
.addItemOutput(<cropdusting:fertile_dirt>).setChance(0.01)
.addFluidOutput(<liquid:biogas>*150)
.build();