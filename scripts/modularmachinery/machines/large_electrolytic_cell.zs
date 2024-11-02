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

//铬粉
RecipeBuilder.newBuilder("电解制取锰铬1","large_electrolytic_cell",1200)
.addEnergyPerTickInput(1024)
.addItemInput(<thermalfoundation:material>*16)
.addItemInput(<contenttweaker:chrome_ore>*4)
.addFluidInput(<liquid:lava> * 4000)
.addItemOutput(<contenttweaker:chrome_dust>*4)
.build();

RecipeBuilder.newBuilder("电解制取锰铬2","large_electrolytic_cell",600)
.addEnergyPerTickInput(512)
.addItemInput(<thermalfoundation:material>*16)
.addItemInput(<contenttweaker:chrome_ore>*8)
.addFluidInput(<liquid:pyrotheum> * 1000)
.addItemOutput(<contenttweaker:chrome_dust>*8)
.build();

//海蓝宝石精华
RecipeBuilder.newBuilder("电解制取海蓝宝石精华1","large_electrolytic_cell",600)
.addEnergyPerTickInput(4096)
.addItemInput(<astralsorcery:itemcraftingcomponent>*16)
.addFluidInput(<liquid:nutrient_distillation> * 1000)
.addItemOutput(<contenttweaker:aquamarine_essence>*2)
.build();

RecipeBuilder.newBuilder("电解制取海蓝宝石精华2","large_electrolytic_cell",200)
.addEnergyPerTickInput(4096)
.addItemInput(<astralsorcery:itemcraftingcomponent>*16)
.addItemInput(<deepmoblearning:living_matter_overworldian>*8)
.addFluidInput(<liquid:nutrient_distillation> * 1000)
.addItemOutput(<contenttweaker:aquamarine_essence>*8)
.build();

RecipeBuilder.newBuilder("电解制取海蓝宝石精华3","large_electrolytic_cell",200)
.addEnergyPerTickInput(8192)
.addItemInput(<astralsorcery:itemcraftingcomponent>*8)
.addItemInput(<deepmoblearning:living_matter_extraterrestrial>*4)
.addFluidInput(<liquid:nutrient_distillation> * 1000)
.addItemOutput(<contenttweaker:aquamarine_essence>*8)
.build();

//液态经验
RecipeBuilder.newBuilder("电解制液态经验1","large_electrolytic_cell",10)
.addEnergyPerTickInput(8192)
.addItemInput(<contenttweaker:basiccircuit>).setChance(0)
.addItemInput(<deepmoblearning:living_matter_overworldian>)
.addFluidOutput(<liquid:xpjuice> * 1600)
.build();

RecipeBuilder.newBuilder("电解制液态经验2","large_electrolytic_cell",10)
.addEnergyPerTickInput(8192)
.addItemInput(<contenttweaker:basiccircuit>).setChance(0)
.addItemInput(<deepmoblearning:living_matter_hellish>)
.addFluidOutput(<liquid:xpjuice> * 3200)
.build();

RecipeBuilder.newBuilder("电解制液态经验3","large_electrolytic_cell",10)
.addEnergyPerTickInput(8192)
.addItemInput(<contenttweaker:basiccircuit>).setChance(0)
.addItemInput(<deepmoblearning:living_matter_extraterrestrial>)
.addFluidOutput(<liquid:xpjuice> * 6400)
.build();

RecipeBuilder.newBuilder("电解制液态经验4","large_electrolytic_cell",10)
.addEnergyPerTickInput(8192)
.addItemInput(<contenttweaker:advancedcircuit>).setChance(0)
.addItemInput(<deepmoblearning:living_matter_overworldian>)
.addFluidOutput(<liquid:experience> * 1600)
.build();

RecipeBuilder.newBuilder("电解制液态经验5","large_electrolytic_cell",10)
.addEnergyPerTickInput(8192)
.addItemInput(<contenttweaker:advancedcircuit>).setChance(0)
.addItemInput(<deepmoblearning:living_matter_hellish>)
.addFluidOutput(<liquid:experience> * 3200)
.build();

RecipeBuilder.newBuilder("电解制液态经验6","large_electrolytic_cell",10)
.addEnergyPerTickInput(8192)
.addItemInput(<contenttweaker:advancedcircuit>).setChance(0)
.addItemInput(<deepmoblearning:living_matter_extraterrestrial>)
.addFluidOutput(<liquid:experience> * 6400)
.build();

//盐酸电解
RecipeBuilder.newBuilder("盐酸电解","large_electrolytic_cell",10)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:hydrochloric_acid> * 1000)
.addFluidOutput(<liquid:liquidhydrogen>*1000)
.addFluidOutput(<liquid:liquidchlorine>*1000)
.build();

//氯化镁电解
RecipeBuilder.newBuilder("氯化镁电解","large_electrolytic_cell",20)
.addEnergyPerTickInput(4096)
.addItemInput(<contenttweaker:magnesiumchloride_dust> * 6)
.addItemOutput(<nuclearcraft:dust:7>*2)
.addFluidOutput(<liquid:liquidchlorine>*4000)
.build();
//铝土矿粉
RecipeBuilder.newBuilder("铝土矿粉电解","large_electrolytic_cell",20)
.addEnergyPerTickInput(512)
.addItemInput(<contenttweaker:bauxite_dust> * 39)
.addItemOutput(<contenttweaker:ilmenite_dust>*2)
.addItemOutput(<thermalfoundation:material:68>*16)
.addFluidOutput(<liquid:liquidoxygen>*11000)
.addFluidOutput(<liquid:liquidhydrogen>*10000)
.build();