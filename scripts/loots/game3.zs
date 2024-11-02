//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;

val lootgame3 = LootTweaker.newTable("lootgame:chests/lootgame3");

val item = lootgame3.addPool("game3", 9, 16, 0, 9);
item.addItemEntry(<minecraft:iron_ore>*64, 4, 5);
item.addItemEntry(<minecraft:coal_ore>*64, 8, 2);
item.addItemEntry(<minecraft:gold_ore>*64, 3, 7);
item.addItemEntry(<thermalfoundation:ore>*64, 4, 4);
item.addItemEntry(<thermalfoundation:ore:1>*64, 4, 4);
item.addItemEntry(<thermalfoundation:ore:4>*64, 4, 4);
item.addItemEntry(<thermalfoundation:ore:2>*64, 4, 4);
item.addItemEntry(<appliedenergistics2:quartz_ore>*64, 4, 4);
item.addItemEntry(<minecraft:lapis_ore>*64, 4, 4);
item.addItemEntry(<minecraft:redstone_ore>*64, 6, 4);
item.addItemEntry(<thermalfoundation:ore:3>*64, 4, 6);
item.addItemEntry(<contenttweaker:value10>*12, 4, 4);
item.addItemEntry(<contenttweaker:value20>*6, 4, 4);
item.addItemEntry(<contenttweaker:value50>*4, 4, 4);