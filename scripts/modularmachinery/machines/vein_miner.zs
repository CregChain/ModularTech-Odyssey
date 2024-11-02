//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

//========================================虚空矿物采掘机========================================
//铁锡铅铜银金铝
RecipeBuilder.newBuilder("basic_ore1", "vein_miner", 600)
.addEnergyPerTickInput(512)
.addItemInput(<contenttweaker:basiccircuit>).setChance(0)
.addItemInput(<minecraft:iron_ore>).setChance(0)
.addItemOutput(<minecraft:iron_ore>*3).setChance(0.4)
.addItemOutput(<minecraft:gold_ore>*3).setChance(0.4)
.addItemOutput(<thermalfoundation:ore>*3).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:1>*3).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:2>*3).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:3>*3).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:4>*3).setChance(0.4)
.build();

RecipeBuilder.newBuilder("basic_ore2", "vein_miner", 600)
.addEnergyPerTickInput(2048)
.addItemInput(<contenttweaker:dig1>).setChance(0)
.addItemInput(<minecraft:iron_ore>).setChance(0)
.addItemOutput(<minecraft:iron_ore>*8).setChance(0.4)
.addItemOutput(<minecraft:gold_ore>*8).setChance(0.4)
.addItemOutput(<thermalfoundation:ore>*8).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:1>*8).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:2>*8).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:3>*8).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:4>*8).setChance(0.4)
.build();

RecipeBuilder.newBuilder("basic_ore3", "vein_miner", 600)
.addEnergyPerTickInput(4096)
.addItemInput(<contenttweaker:dig2>).setChance(0)
.addItemInput(<minecraft:iron_ore>).setChance(0)
.addItemOutput(<minecraft:iron_ore>*18).setChance(0.4)
.addItemOutput(<minecraft:gold_ore>*18).setChance(0.4)
.addItemOutput(<thermalfoundation:ore>*18).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:1>*18).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:2>*18).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:3>*18).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:4>*18).setChance(0.4)
.build();

RecipeBuilder.newBuilder("basic_ore4", "vein_miner", 600)
.addEnergyPerTickInput(8192)
.addItemInput(<contenttweaker:dig3>).setChance(0)
.addItemInput(<minecraft:iron_ore>).setChance(0)
.addItemOutput(<minecraft:iron_ore>*32).setChance(0.4)
.addItemOutput(<minecraft:gold_ore>*32).setChance(0.4)
.addItemOutput(<thermalfoundation:ore>*32).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:1>*32).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:2>*32).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:3>*32).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:4>*32).setChance(0.4)
.build();

//煤炭青金石红石石英赛特斯石英钻石
RecipeBuilder.newBuilder("gem_ore1", "vein_miner", 400)
.addEnergyPerTickInput(512)
.addItemInput(<contenttweaker:basiccircuit>).setChance(0)
.addItemInput(<minecraft:coal_ore>).setChance(0)
.addItemOutput(<minecraft:coal_ore>*3).setChance(0.4)
.addItemOutput(<minecraft:redstone_ore>*3).setChance(0.4)
.addItemOutput(<minecraft:lapis_ore>*3).setChance(0.4)
.addItemOutput(<minecraft:quartz_ore>*3).setChance(0.4)
.addItemOutput(<minecraft:diamond_ore>*1).setChance(0.4)
.addItemOutput(<appliedenergistics2:quartz_ore>*3).setChance(0.4)
.build();

RecipeBuilder.newBuilder("gem_ore2", "vein_miner", 400)
.addEnergyPerTickInput(2048)
.addItemInput(<contenttweaker:dig1>).setChance(0)
.addItemInput(<minecraft:coal_ore>).setChance(0)
.addItemOutput(<minecraft:coal_ore>*8).setChance(0.4)
.addItemOutput(<minecraft:redstone_ore>*8).setChance(0.4)
.addItemOutput(<minecraft:lapis_ore>*8).setChance(0.4)
.addItemOutput(<minecraft:quartz_ore>*8).setChance(0.4)
.addItemOutput(<minecraft:diamond_ore>*3).setChance(0.4)
.addItemOutput(<appliedenergistics2:quartz_ore>*8).setChance(0.4)
.build();

RecipeBuilder.newBuilder("gem_ore3", "vein_miner", 400)
.addEnergyPerTickInput(4096)
.addItemInput(<contenttweaker:dig2>).setChance(0)
.addItemInput(<minecraft:coal_ore>).setChance(0)
.addItemOutput(<minecraft:coal_ore>*18).setChance(0.4)
.addItemOutput(<minecraft:redstone_ore>*18).setChance(0.4)
.addItemOutput(<minecraft:lapis_ore>*18).setChance(0.4)
.addItemOutput(<minecraft:quartz_ore>*18).setChance(0.4)
.addItemOutput(<minecraft:diamond_ore>*6).setChance(0.4)
.addItemOutput(<appliedenergistics2:quartz_ore>*18).setChance(0.4)
.build();

RecipeBuilder.newBuilder("gem_ore4", "vein_miner", 400)
.addEnergyPerTickInput(8192)
.addItemInput(<contenttweaker:dig3>).setChance(0)
.addItemInput(<minecraft:coal_ore>).setChance(0)
.addItemOutput(<minecraft:coal_ore>*32).setChance(0.4)
.addItemOutput(<minecraft:redstone_ore>*32).setChance(0.4)
.addItemOutput(<minecraft:lapis_ore>*32).setChance(0.4)
.addItemOutput(<minecraft:quartz_ore>*32).setChance(0.4)
.addItemOutput(<minecraft:diamond_ore>*10).setChance(0.4)
.addItemOutput(<appliedenergistics2:quartz_ore>*32).setChance(0.4)
.build();

//镁锂铀铂铱镍硼钍
RecipeBuilder.newBuilder("advanced_ore1", "vein_miner", 800)
.addEnergyPerTickInput(512)
.addItemInput(<contenttweaker:advancedcircuit>).setChance(0)
.addItemInput(<ore:oreUranium>).setChance(0)
.addItemOutput(<ore:oreUranium>).setChance(0.4)
.addItemOutput(<nuclearcraft:ore:3>).setChance(0.4)
.addItemOutput(<nuclearcraft:ore:5>).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:5>).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:6>).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:7>).setChance(0.4)
.build();

RecipeBuilder.newBuilder("advanced_ore2", "vein_miner", 800)
.addEnergyPerTickInput(2048)
.addItemInput(<contenttweaker:dig1>).setChance(0)
.addItemInput(<ore:oreUranium>).setChance(0)
.addItemOutput(<ore:oreUranium>*4).setChance(0.4)
.addItemOutput(<nuclearcraft:ore:3>*4).setChance(0.4)
.addItemOutput(<nuclearcraft:ore:5>*4).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:5>*4).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:6>*4).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:7>*4).setChance(0.4)
.build();

RecipeBuilder.newBuilder("advanced_ore3", "vein_miner", 800)
.addEnergyPerTickInput(4096)
.addItemInput(<contenttweaker:dig2>).setChance(0)
.addItemInput(<ore:oreUranium>).setChance(0)
.addItemOutput(<ore:oreUranium>*9).setChance(0.4)
.addItemOutput(<nuclearcraft:ore:3>*9).setChance(0.4)
.addItemOutput(<nuclearcraft:ore:5>*9).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:5>*9).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:6>*9).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:7>*9).setChance(0.4)
.build();

RecipeBuilder.newBuilder("advanced_ore4", "vein_miner", 800)
.addEnergyPerTickInput(8192)
.addItemInput(<contenttweaker:dig3>).setChance(0)
.addItemInput(<ore:oreUranium>).setChance(0)
.addItemOutput(<ore:oreUranium>*16).setChance(0.4)
.addItemOutput(<nuclearcraft:ore:3>*16).setChance(0.4)
.addItemOutput(<nuclearcraft:ore:5>*16).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:5>*16).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:6>*16).setChance(0.4)
.addItemOutput(<thermalfoundation:ore:7>*16).setChance(0.4)
.build();
