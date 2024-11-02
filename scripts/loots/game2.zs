//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;

val lootgame2 = LootTweaker.newTable("lootgame:chests/lootgame2");

val item = lootgame2.addPool("game2", 7, 13, 0, 7);
item.addItemEntry(<minecraft:iron_ore>*32, 4, 5);
item.addItemEntry(<minecraft:coal_ore>*32, 8, 2);
item.addItemEntry(<minecraft:gold_ore>*24, 3, 7);
item.addItemEntry(<thermalfoundation:ore>*32, 4, 4);
item.addItemEntry(<thermalfoundation:ore:1>*32, 4, 4);
item.addItemEntry(<thermalfoundation:ore:4>*32, 4, 4);
item.addItemEntry(<thermalfoundation:ore:2>*32, 4, 4);
item.addItemEntry(<appliedenergistics2:quartz_ore>*32, 4, 4);
item.addItemEntry(<contenttweaker:value10>*8, 4, 4);
item.addItemEntry(<contenttweaker:value20>*4, 4, 4);