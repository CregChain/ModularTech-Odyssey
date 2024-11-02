//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;

val lootgame1 = LootTweaker.newTable("lootgame:chests/lootgame1");

val item = lootgame1.addPool("game1", 4, 9, 0, 5);
item.addItemEntry(<minecraft:iron_ore>*32, 4, 5);
item.addItemEntry(<minecraft:coal_ore>*32, 8, 2);
item.addItemEntry(<minecraft:gold_ore>*24, 3, 7);
item.addItemEntry(<thermalfoundation:ore>*32, 4, 4);
item.addItemEntry(<thermalfoundation:ore:1>*32, 4, 4);
item.addItemEntry(<contenttweaker:value10>*4, 4, 4);