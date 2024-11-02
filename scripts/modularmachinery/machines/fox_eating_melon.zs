//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

RecipeBuilder.newBuilder("吃瓜产液态乙烯","fox_eating_melon", 100)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:water>*64000)
.addItemInput(<minecraft:melon>*16)
.addFluidOutput(<liquid:liquidethene>*6400)
.addItemOutput(<minecraft:melon_seeds>*4).setChance(0.5)
.build();

RecipeBuilder.newBuilder("吃金瓜产更多液态乙烯","fox_eating_melon", 100)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:water>*192000)
.addItemInput(<minecraft:speckled_melon>*16)
.addFluidOutput(<liquid:liquidethene>*19200)
.addItemOutput(<minecraft:melon_seeds>*4).setChance(0.5)
.build();

RecipeBuilder.newBuilder("水产液态锂","fox_eating_melon", 20)
.addEnergyPerTickInput(2048)
.addFluidInput(<liquid:water>*128000)
.addItemInput(<minecraft:melon_block>)
.addFluidOutput(<liquid:liquidlithium>*1280)
.addItemOutput(<minecraft:melon_seeds>*2).setChance(0.5)
.build();