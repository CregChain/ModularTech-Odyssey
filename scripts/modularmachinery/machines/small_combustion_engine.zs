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

/*RecipeBuilder.newBuilder("小燃烧-熔岩发电","small_combustion_engine", 100)
.addEnergyPerTickOutput(2048)
.addFluidInput(<liquid:lava>*1000)
.build();*/

RecipeBuilder.newBuilder("小燃烧-杂酚油发电","small_combustion_engine", 20)
.addEnergyPerTickOutput(2048)
.addFluidInput(<liquid:creosote>*1000)
.build();

RecipeBuilder.newBuilder("小燃烧-沼气发电","small_combustion_engine", 400)
.addEnergyPerTickOutput(2048)
.addFluidInput(<liquid:biogas>*1000)
.build();

RecipeBuilder.newBuilder("小燃烧-生物柴油发电","small_combustion_engine", 500)
.addEnergyPerTickOutput(2048)
.addFluidInput(<liquid:biodiesel>*1000)
.build();

RecipeBuilder.newBuilder("小燃烧-种子油发电","small_combustion_engine", 40)
.addEnergyPerTickOutput(2048)
.addFluidInput(<liquid:seed_oil>*1000)
.build();

RecipeBuilder.newBuilder("小燃烧-菜籽油发电","small_combustion_engine", 40)
.addEnergyPerTickOutput(2048)
.addFluidInput(<liquid:canolaoil>*1000)
.build();

RecipeBuilder.newBuilder("小燃烧-精炼菜籽油发电","small_combustion_engine", 100)
.addEnergyPerTickOutput(2048)
.addFluidInput(<liquid:refinedcanolaoil>*1000)
.build();

RecipeBuilder.newBuilder("小燃烧-混合燃油发电","small_combustion_engine", 1250)
.addEnergyPerTickOutput(2048)
.addFluidInput(<liquid:saturated_fuel>*1000)
.build();