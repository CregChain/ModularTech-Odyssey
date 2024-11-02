//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack;
import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.CombinationCrafting;

//Remove all recipes in here
var result as IItemStack[] = [
	<draconicevolution:wyvern_energy_core>
];
for a in result{
recipes.remove(a);
}  

//飞龙能量核心
CombinationCrafting.addRecipe(
    <draconicevolution:wyvern_energy_core>, 2000000, 20000, <draconicevolution:draconic_core>,
    [<ore:blockDraconium>,<ore:blockDraconium>,<ore:blockDraconium>,<ore:blockDraconium>,
    <ore:blockRedstone>,<ore:blockRedstone>,<ore:blockRedstone>,<ore:blockRedstone>]
);

//龙芯
CombinationCrafting.addRecipe(
    <draconicevolution:draconic_core>, 640000, 20000, <minecraft:diamond>,
    [<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>,<contenttweaker:stainless_ingot>,
    <ore:ingotDraconium>,<ore:ingotDraconium>,<ore:ingotDraconium>,<ore:ingotDraconium>]
);