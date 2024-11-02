//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack;
import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.CombinationCrafting;

//Remove all recipes in here
var result as IItemStack[] = [
	<extendedcrafting:material:15>
];
for a in result{
recipes.remove(a);
}  

//大理石-Marble
TableCrafting.addShaped(0, <astralsorcery:blockmarble>*8, [
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	[<minecraft:stone>, <ore:dyeWhite>, <minecraft:stone>],
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
]);

//铁制机械部件-Iron Mechanical Component
TableCrafting.addShaped(0, <immersiveengineering:material:8>, [
	[null,<minecraft:iron_ingot>,null],
	[<minecraft:iron_ingot>, <thermalfoundation:material:256>,<minecraft:iron_ingot>],
	[null,<minecraft:iron_ingot>,null]
]);

//高级合成组件-Advanced Component
TableCrafting.addShaped(0, <extendedcrafting:material:15>*2, [
	[<ore:plateGold>,<ore:plateGold>, <extendedcrafting:material:7>],
	[<extendedcrafting:material:14>,<extendedcrafting:material:14>,<ore:plateGold>],
	[<extendedcrafting:material:14>,<extendedcrafting:material:14>,<ore:plateGold>]
]);

//中型物品输入仓-Normal Item Input
TableCrafting.addShaped(0,<modularmachinery:blockinputbus:2> * 2, [
	[<modularmachinery:blockcasing>, <ironchest:iron_chest:1>, <modularmachinery:blockcasing>],
	[<modularmachinery:blockinputbus:1>, null, <modularmachinery:blockinputbus:1>], 
	[<modularmachinery:blockcasing>, <ironchest:iron_chest:1>, <modularmachinery:blockcasing>]
]);

//强化物品输入仓-Reinforced Item Input
TableCrafting.addShaped(0,<modularmachinery:blockinputbus:3>, [
	[<modularmachinery:blockcasing>, <ironchest:iron_chest:2>, <modularmachinery:blockcasing>],
	[<modularmachinery:blockinputbus:2>, null, <modularmachinery:blockinputbus:2>], 
	[<modularmachinery:blockcasing>, <ironchest:iron_chest:2>, <modularmachinery:blockcasing>]
]);

//镅RTG
TableCrafting.addShaped(0, <nuclearcraft:rtg_americium>, [
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>], 
	[<ore:ingotGraphite>, <ore:ingotAmericium241>, <ore:ingotGraphite>], 
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>]
]);