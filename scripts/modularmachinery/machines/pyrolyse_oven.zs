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

//pyrolyse_ovenMK1
RecipeBuilder.newBuilder("煤炭蒸汽出苯酚焦煤","pyrolyse_ovenMK1", 200,0)
.addEnergyPerTickInput(128)
.addFluidInput(<liquid:steam>*4000)
.addItemInput(<minecraft:coal>*16)
.addFluidOutput(<liquid:phenol>*1000)
.addItemOutput(<immersiveengineering:material:6>*20)
.build();

RecipeBuilder.newBuilder("煤炭出杂酚油焦煤","pyrolyse_ovenMK1", 200,1)
.addEnergyPerTickInput(128)
.addItemInput(<minecraft:coal>*16)
.addFluidOutput(<liquid:creosote>*8000)
.addItemOutput(<immersiveengineering:material:6>*16)
.build();

RecipeBuilder.newBuilder("原木出杂酚油木炭","pyrolyse_ovenMK1", 200)
.addEnergyPerTickInput(128)
.addItemInput(<ore:logWood>*16)
.addFluidOutput(<liquid:creosote>*4000)
.addItemOutput(<minecraft:coal:1>*20)
.build();

RecipeBuilder.newBuilder("木炭副产物1","pyrolyse_ovenMK1", 200)
.addEnergyPerTickInput(128)
.addItemInput(<ore:logWood>*16)
.addFluidInput(<liquid:nitrogen>*1000)
.addItemOutput(<minecraft:coal:1>*20)
.addFluidOutput(<liquid:charcoal_byproducts>*4000)
.build();

//pyrolyse_ovenMK2
RecipeBuilder.newBuilder("煤炭蒸汽出苯酚焦煤2","pyrolyse_ovenMK2", 100,0)
.addEnergyPerTickInput(512)
.addFluidInput(<liquid:steam>*4000)
.addItemInput(<minecraft:coal>*16)
.addFluidOutput(<liquid:phenol>*1000)
.addItemOutput(<immersiveengineering:material:6>*20)
.build();

RecipeBuilder.newBuilder("煤炭出杂酚油焦煤2","pyrolyse_ovenMK2", 100,1)
.addEnergyPerTickInput(512)
.addItemInput(<minecraft:coal>*16)
.addFluidOutput(<liquid:creosote>*8000)
.addItemOutput(<immersiveengineering:material:6>*16)
.build();

RecipeBuilder.newBuilder("原木出杂酚油木炭2","pyrolyse_ovenMK2", 100)
.addEnergyPerTickInput(512)
.addItemInput(<ore:logWood>*16)
.addFluidOutput(<liquid:creosote>*4000)
.addItemOutput(<minecraft:coal:1>*20)
.build();

RecipeBuilder.newBuilder("木炭副产物2","pyrolyse_ovenMK2", 100)
.addEnergyPerTickInput(512)
.addItemInput(<ore:logWood>*16)
.addFluidInput(<liquid:nitrogen>*1000)
.addItemOutput(<minecraft:coal:1>*20)
.addFluidOutput(<liquid:charcoal_byproducts>*4000)
.build();

//pyrolyse_ovenMK3
RecipeBuilder.newBuilder("煤炭蒸汽出苯酚焦煤3","pyrolyse_ovenMK3", 50,0)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:steam>*4000)
.addItemInput(<minecraft:coal>*16)
.addFluidOutput(<liquid:phenol>*1000)
.addItemOutput(<immersiveengineering:material:6>*20)
.build();

RecipeBuilder.newBuilder("煤炭出杂酚油焦煤3","pyrolyse_ovenMK3", 50,1)
.addEnergyPerTickInput(2048)
.addItemInput(<minecraft:coal>*16)
.addFluidOutput(<liquid:creosote>*8000)
.addItemOutput(<immersiveengineering:material:6>*16)
.build();

RecipeBuilder.newBuilder("原木出杂酚油木炭3","pyrolyse_ovenMK3", 50)
.addEnergyPerTickInput(2048)
.addItemInput(<ore:logWood>*16)
.addFluidOutput(<liquid:creosote>*4000)
.addItemOutput(<minecraft:coal:1>*20)
.build();


RecipeBuilder.newBuilder("木炭副产物3","pyrolyse_ovenMK3", 50)
.addEnergyPerTickInput(2048)
.addItemInput(<ore:logWood>*16)
.addFluidInput(<liquid:nitrogen>*1000)
.addItemOutput(<minecraft:coal:1>*20)
.addFluidOutput(<liquid:charcoal_byproducts>*4000)
.build();