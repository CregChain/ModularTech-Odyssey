//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.embers.Alchemy;
import mods.embers.Melter;

//冶金粉尘
mods.embers.Alchemy.remove(<embers:dust_metallurgic>);

//熔炼炉移除铝
//mods.embers.Melter.remove(<liquid:aluminum>);
mods.embers.Melter.remove(<thermalfoundation:ore:4>);
mods.embers.Melter.remove(<embers:ore_aluminum>);
mods.embers.Melter.remove(<galacticraftplanets:venus:6>);
mods.embers.Melter.remove(<galacticraftplanets:asteroids_block:3>);