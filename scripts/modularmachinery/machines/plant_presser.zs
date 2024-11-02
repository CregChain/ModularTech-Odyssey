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

RecipeBuilder.newBuilder("种子压榨","plant_presser", 100)
.addEnergyPerTickInput(120)
.addItemInput(<ore:listAllseed>)
.addItemOutput(<contenttweaker:dead_seed>).setChance(0.5)
.addFluidOutput(<liquid:seed_oil>*40)
.build();

/*RecipeBuilder.newBuilder("油菜压榨","plant_presser", 100)
.addEnergyPerTickInput(30)
.addItemInput(<actuallyadditions:item_misc:13>)
.addFluidOutput(<liquid:canolaoil>*40)
.build();*/