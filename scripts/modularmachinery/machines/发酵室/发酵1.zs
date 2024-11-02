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

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;

RecipeBuilder.newBuilder("发酵1","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gravyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵2","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:plumyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵3","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cheeseburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵4","fermentation_chambershi", 1200)
.addItemInput(<minecraft:rabbit_stew>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵5","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberryjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵6","fermentation_chambershi", 1200)
.addItemInput(<sakura:eggplant>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵7","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:corndogitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵8","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:perchrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵9","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pineappleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵10","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mangojellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵11","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:wafflesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵12","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:turkeycookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵13","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bananaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵14","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blackberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵15","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:loadedbakedpotatoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵16","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tortillaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵17","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapefruitsodaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵18","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cranberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵19","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kiwismoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵20","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:papayayogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵21","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spicygreensitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵22","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:barleyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵23","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tamarinditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵24","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolaterollitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵25","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolatestrawberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵26","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:nachoesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵27","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:huckleberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵28","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bananasplititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵29","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:charsiuitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵30","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberrysmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵31","fermentation_chambershi", 1200)
.addItemInput(<minecraft:cooked_rabbit>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵32","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pepperjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵33","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spicebunitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵34","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lasagnaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵35","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:whitemushroomitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵36","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blackberryjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵37","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:datenutbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵38","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grilledcheesevegemitetoastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵39","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:porkrindsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵40","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:oystercookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵41","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:frosteddonutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵42","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:jamrollitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵43","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:watermelonjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵44","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:energydrinkitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵45","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bubbleteaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵46","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:misopasteitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵47","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pumpkinsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵48","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:ploughmanslunchitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*11)
.addFluidOutput(<liquid:ethanol>*22)
.build();

RecipeBuilder.newBuilder("发酵49","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:orangejellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵50","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:musselcookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵51","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bbqpulledporkitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵52","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:timtamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵53","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:potroastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵54","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tunafishsandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵55","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cherryyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵56","fermentation_chambershi", 1200)
.addItemInput(<minecraft:cooked_fish>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵57","fermentation_chambershi", 1200)
.addItemInput(<minecraft:cooked_fish:1>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵58","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickenandwafflesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*9)
.addFluidOutput(<liquid:ethanol>*18)
.build();

RecipeBuilder.newBuilder("发酵59","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookedtofurkeyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵60","fermentation_chambershi", 1200)
.addItemInput(<minecraft:rabbit>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵61","fermentation_chambershi", 1200)
.addItemInput(<quark:cooked_crab_leg>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵62","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:driedsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵63","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:orangesmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵64","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:potatoesobrienitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵65","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sunflowerseedsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵66","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hamandcheesesandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵67","fermentation_chambershi", 1200)
.addItemInput(<minecraft:cooked_chicken>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵68","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pomegranatejellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵69","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:brownieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵70","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kohlrabiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵71","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:escargotitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵72","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:persimmonjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵73","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pomegranatesmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵74","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sweetpotatosouffleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵75","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:succotashitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵76","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberrypieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵77","fermentation_chambershi", 1200)
.addItemInput(<contenttweaker:bat>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵78","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:creamofavocadosoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵79","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sardinerawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵80","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickenpaellaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵81","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:onionsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵82","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lavendershortbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵83","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coleslawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵84","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:figjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵85","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:akutuqitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵86","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:potatoandcheesepirogiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵87","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapefruitjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵88","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:eggsbenedictitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵89","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tortillachipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵90","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookedgrubitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵91","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pistachiobakedsalmonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵92","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pistachioicecreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵93","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gourmetmuttonburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*10)
.addFluidOutput(<liquid:ethanol>*20)
.build();

RecipeBuilder.newBuilder("发酵94","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coconutmilkitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵95","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:threebeansaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵96","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crackeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵97","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_coffee_beans>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵98","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:salsaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵99","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bakedturnipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵100","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵101","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:1>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵102","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:2>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵103","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:3>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵104","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:4>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵105","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:5>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵106","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:6>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵107","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:7>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵108","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:8>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵109","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:9>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵110","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:10>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵111","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:11>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵112","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:12>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵113","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:13>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵114","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:14>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵115","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:15>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵116","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:16>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵117","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:17>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵118","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:18>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵119","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:19>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵120","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:20>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵121","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:21>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵122","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:22>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵123","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:23>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵124","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:24>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵125","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:25>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵126","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:26>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵127","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:27>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵128","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:28>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵129","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:29>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵130","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:30>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵131","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:31>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵132","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:32>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵133","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:33>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵134","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:34>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵135","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:35>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵136","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:36>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵137","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:37>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵138","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:38>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵139","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:39>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵140","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:40>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵141","fermentation_chambershi", 1200)
.addItemInput(<sakura:cocktail:41>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵142","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:snickersbaritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵143","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:okracreoleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵144","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chiliitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵145","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sesamesnapsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵146","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookedtofenisonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵147","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:meatloafsandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵148","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:baconwrappeddatesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵149","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:honeylemonlambitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵150","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberrysodaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵151","fermentation_chambershi", 1200)
.addItemInput(<minecraft:pumpkin_pie>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵152","fermentation_chambershi", 1200)
.addItemInput(<contenttweaker:pastry>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵153","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:froglegstirfryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵154","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:meatystewitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵155","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:garlicchickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵156","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bratwurstitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵157","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:plumjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵158","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:persimmonyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵159","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raspberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵160","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:garlicbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵161","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:almonditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵162","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cranberrysmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵163","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:applepieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵164","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hotdogitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵165","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cherryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵166","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cranberrysauceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵167","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:eggplantitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵168","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:vegemiteontoastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵169","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:oatsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵170","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:passionfruititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵171","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:meringuebrownieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵172","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fruitcreamfestivalbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵173","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:babaganoushitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵174","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:summerradishsaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵175","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sourcreamandonionpotatochipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵176","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chilicupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵177","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:enchiladaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵178","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spidereyepieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵179","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:dimsumitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵180","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:butteredpotatoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵181","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bakedcactusitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵182","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cherryslushieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵183","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crayfishrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵184","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raisincookiesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵185","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sundayroastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵186","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:baconcheeseburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵187","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:roastedchestnutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵188","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberryjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵189","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fishlettucewrapitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵190","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:waterchestnutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵191","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blackberryyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵192","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fishandchipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵193","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coffeecupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵194","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:jaffaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵195","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolateyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵196","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:duckrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵197","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tunasaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵198","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:potatochipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵199","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mobsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵200","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cinnamonrollitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵201","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gritsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵202","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:heartybreakfastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*9)
.addFluidOutput(<liquid:ethanol>*18)
.build();

RecipeBuilder.newBuilder("发酵203","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:eggrollitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵204","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blackberryjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵205","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:creepercookieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵206","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sunflowerbroccolisaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵207","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:naanitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵208","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:elderberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵209","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:apricotsmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵210","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:celeryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵211","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bentoboxitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*11)
.addFluidOutput(<liquid:ethanol>*22)
.build();

RecipeBuilder.newBuilder("发酵212","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spicymustardporkitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵213","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sausageitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵214","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:baklavaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵215","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pineappleyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵216","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:deluxechickencurryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*12)
.addFluidOutput(<liquid:ethanol>*24)
.build();

RecipeBuilder.newBuilder("发酵217","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:dandelionsaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵218","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:steamedpeasitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵219","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:briochebunitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵220","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cheeseontoastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵221","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coffeeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵222","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bakedhamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵223","fermentation_chambershi", 1200)
.addItemInput(<minecraft:baked_potato>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵224","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:guacamoleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵225","fermentation_chambershi", 1200)
.addItemInput(<minecraft:bread>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵226","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:anchovypepperonipizzaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵227","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:greenbeancasseroleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵228","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:celerysoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵229","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mettbrotchenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵230","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_jam>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵231","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_jam:1>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵232","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_jam:2>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵233","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_jam:3>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵234","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_jam:4>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵235","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_jam:5>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵236","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_jam:6>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵237","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:splitpeasoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵238","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:softpretzelandmustarditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵239","fermentation_chambershi", 1200)
.addItemInput(<sakura:taro>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵240","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:thankfuldinneritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*15)
.addFluidOutput(<liquid:ethanol>*30)
.build();

RecipeBuilder.newBuilder("发酵241","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:maplesyrupwafflesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵242","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:marzipanitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵243","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:clamchowderitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵244","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gigapickleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵245","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:theatreboxitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵246","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:honeysoyribsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵247","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:buttercookieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵248","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:nopalessaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵249","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:caramelitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵250","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:curryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵251","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:honeybreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵252","fermentation_chambershi", 1200)
.addItemInput(<extrabotany:gildedmashedpotato>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵253","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:limeyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵254","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rawtofuduckitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵255","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:slimegummiesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵256","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sausageinbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵257","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:limeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵258","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rivermudcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵259","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kiwijellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵260","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:museliitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵261","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:carprawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵262","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:ryeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵263","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:musubiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵264","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:swedishmeatballsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵265","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sweetpickleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵266","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:eggplantparmitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵267","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chilichocolateitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵268","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sausagebeanmeltitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵269","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:plainyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵270","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵271","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pawpawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵272","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bbqchickenbiscuititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*9)
.addFluidOutput(<liquid:ethanol>*18)
.build();

RecipeBuilder.newBuilder("发酵273","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:honeyglazedcarrotsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵274","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:baconpancakesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵275","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:shrimptemperaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵276","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hazelnutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵277","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rainbowcurryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵278","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crabcookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵279","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sushiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵280","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:vanillaicecreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵281","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:broccolindipitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵282","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:croissantitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵283","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bibimbapitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵284","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blueberryyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵285","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:turkeyrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵286","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookedtofaconitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵287","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:durianmuffinitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵288","fermentation_chambershi", 1200)
.addItemInput(<sakura:cabbage>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵289","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:epicbaconitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵290","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookedtofeakitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵291","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bakedbeetsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵292","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hamandpineapplepizzaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵293","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:maplesyruppancakesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵294","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:friedpecanokraitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵295","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crabrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵296","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:creamedcornitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵297","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peachjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵298","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:brusselsproutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵299","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gourmetbeefpattyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵300","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:garlicitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵301","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:melonjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵302","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:biscuitsandgravyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵303","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:avocadoburritoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵304","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:dandelionteaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵305","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:squidinkspaghettiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵306","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:starfruitjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵307","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:festivalbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵308","fermentation_chambershi", 1200)
.addItemInput(<quark:crab_leg>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵309","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:eggsaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵310","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:seaweeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵311","fermentation_chambershi", 1200)
.addItemInput(<nuclearcraft:cocoa_butter>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵312","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:octopusrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵313","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:imagawayakiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵314","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peachsmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵315","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pineapplehamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵316","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapeyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵317","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pumpkinspicelatteitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵318","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:beansontoastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵319","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolatecaramelfudgeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵320","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gravlaxitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵321","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pickledbeetsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵322","fermentation_chambershi", 1200)
.addItemInput(<quark:root>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵323","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:caramelcupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵324","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:paradiseburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*10)
.addFluidOutput(<liquid:ethanol>*20)
.build();

RecipeBuilder.newBuilder("发酵325","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gyudonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵326","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peanutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵327","fermentation_chambershi", 1200)
.addItemInput(<sakura:hydra_ramen>)
.addItemOutput(<contenttweaker:fermentation_mixture>*18)
.addFluidOutput(<liquid:ethanol>*36)
.build();

RecipeBuilder.newBuilder("发酵328","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grilledasparagusitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵329","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cherrysodaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵330","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:custarditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵331","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickenpotpieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵332","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:etonmessitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵333","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peaandhamsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵334","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:keylimepieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵335","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gourmetmuttonpattyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵336","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sunflowerwheatrollsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵337","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:meesuaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵338","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:beefwellingtonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵339","fermentation_chambershi", 1200)
.addItemInput(<sakura:radish>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵340","fermentation_chambershi", 1200)
.addItemInput(<minecraft:spider_eye>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵341","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kiwiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵342","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fruitsaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵343","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cucumbersaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵344","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickenparmasanitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵345","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:turnipitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵346","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:montecristosandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵347","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:zucchinibakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵348","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:parsnipitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵349","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cottonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵350","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:asparagusquicheitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵351","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hummusitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵352","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberrysaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵353","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mozzerellasticksitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵354","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pistachiobutteritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵355","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:salisburysteakitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*10)
.addFluidOutput(<liquid:ethanol>*20)
.build();

RecipeBuilder.newBuilder("发酵356","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:applesauceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵357","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rawtofenisonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵358","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:breadedporkchopitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵359","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:herbbutterparsnipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵360","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:paneeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵361","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gourmetvenisonburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*12)
.addFluidOutput(<liquid:ethanol>*24)
.build();

RecipeBuilder.newBuilder("发酵362","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:creeperwingsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵363","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spagettiandmeatballsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵364","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crispyricepuffbarsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵365","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pbandjitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵366","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:flaxitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵367","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:anchovyrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵368","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cashewchickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵369","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:slawdogitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵370","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pepperjellyandcrackersitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵371","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:jackfruititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵372","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rawtofurkeyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵373","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:appleyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵374","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:jicamaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵375","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cornedbeefitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵376","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:limejuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵377","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:agaveitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵378","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bamboosteamedriceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵379","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gingeredrhubarbtartitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵380","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raspberryicedteaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵381","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:jelliedeelitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵382","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cranberryyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵383","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coconutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵384","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:starfruitjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵385","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sausagerollitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵386","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:battenbergitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵387","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cinnamonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵388","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sisalitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵389","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:scalloprawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵390","fermentation_chambershi", 1200)
.addItemInput(<nuclearcraft:unsweetened_chocolate>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵391","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:espressoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵392","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:steaktartareitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵393","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rawtofeegitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵394","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:silkentofuitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵395","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemonyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵396","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:poutineitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵397","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_coffee>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵398","fermentation_chambershi", 1200)
.addItemInput(<minecraft:cooked_mutton>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵399","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:citrussaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵400","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peanutsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵401","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:juniperberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵402","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:trailmixitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵404","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mashedpotatoeschickenbiscuititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵405","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mapleoatmealitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵406","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:shrimprawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵407","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:avocadoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵408","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:catfishrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵409","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:icecreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵410","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:applejuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵411","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blackberrysmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵412","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemonjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵413","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:meatystirfryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵414","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:meatpieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵415","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bolognasandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵416","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolatedonutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵418","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pearitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵419","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:toastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵420","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tacoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵421","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:groiledcheesesandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵422","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kiwijellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵423","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:shrimpcocktailitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵424","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sweetteaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵425","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:baconmushroomburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵426","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:apricotjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵427","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:shepardspieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵428","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:seedenergygelitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵429","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cheesedanishitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵430","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:papayajellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵431","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolatepuddingitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵432","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:asparagussoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵433","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fishsticksitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵434","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peanutbuttercookiesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵435","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blueberryjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵436","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵437","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:1>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵438","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:2>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵439","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:3>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵440","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:4>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵441","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:5>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵442","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:6>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵443","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:7>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵444","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:8>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵445","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:9>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵446","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:10>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵447","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:11>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵448","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:12>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵449","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:13>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵450","fermentation_chambershi", 1200)
.addItemInput(<sakura:alcoholic:14>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵451","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:persimmonsmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵452","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:watermelonjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵453","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bolognaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵454","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickpeaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵455","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raisinsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵456","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gooseberrysmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵457","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peachjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵458","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickencordonbleuitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵459","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chorizoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵460","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:redvelvetcupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵461","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bulgogiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵462","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookiesandmilkitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵463","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sauerbratenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵464","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raspberryyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵465","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:salmononigiriitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵466","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:potatosoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵467","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:turtlerawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵468","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bangersandmashitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵469","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:candiedlemonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵470","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mangojellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵471","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:greenheartfishitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵472","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapefruityogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵473","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:stockitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵474","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gooseberrypieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵475","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:stuffedchilipeppersitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵476","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:teaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵477","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bellpepperitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵478","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:springfieldcashewchickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵480","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hotchocolateitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵481","fermentation_chambershi", 1200)
.addItemInput(<minecraft:golden_carrot>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵482","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sweetandsourmeatballsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵483","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemonaideitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵484","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:papayajuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵485","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:vegemiteitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵486","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lycheeteaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵487","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tealeafitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵488","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cashewitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵489","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rawtofabbititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵490","fermentation_chambershi", 1200)
.addItemInput(<minecraft:porkchop>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵491","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemonlimesodaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵492","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolatemilkshakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵493","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolatemilkitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵494","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:dateitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵495","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cranberrybaritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵496","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blueberryjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵497","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookedtofuttonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵498","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gooseberryyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵499","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peachcobbleritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵500","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:roastpotatoesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵501","fermentation_chambershi", 1200)
.addItemInput(<minecraft:potato>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵502","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:quesadillaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵503","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:porklomeinitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵504","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:duckcookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵505","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:footlongitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵506","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:candiedwalnutsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵507","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:toastedwesternitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵508","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chimichangaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*10)
.addFluidOutput(<liquid:ethanol>*20)
.build();

RecipeBuilder.newBuilder("发酵509","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mcpamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*10)
.addFluidOutput(<liquid:ethanol>*20)
.build();

RecipeBuilder.newBuilder("发酵510","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peppercornitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵511","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:honeysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵512","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peanutbutterbananasandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵513","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hamburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵514","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolateicecreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵515","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:vanillaconchasbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵516","fermentation_chambershi", 1200)
.addItemInput(<minecraft:melon>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵517","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:zombiejerkyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵518","fermentation_chambershi", 1200)
.addItemInput(<minecraft:mutton>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵520","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:jambalayaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵521","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:firmtofuitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵522","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pekingduckitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵523","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:potatocakesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵524","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:limejellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵525","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:refriedbeansitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵526","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raspberryjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵527","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sweetpotatopieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵528","fermentation_chambershi", 1200)
.addItemInput(<nuclearcraft:moresmore>)
.addItemOutput(<contenttweaker:fermentation_mixture>*19)
.addFluidOutput(<liquid:ethanol>*38)
.build();

RecipeBuilder.newBuilder("发酵529","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:friesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵530","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:patreonpieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵532","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mochicakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵533","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:berrymeringuenestitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵534","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cinnamonbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵535","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sesameseedsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵536","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:okrachipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵537","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cherryicecreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵538","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pizzasoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵539","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:limejellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵540","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hotdishcasseroleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵541","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:powdereddonutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵542","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hashitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵543","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rootbeerfloatitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵544","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:frenchtoastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵545","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coffeeconlecheitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵546","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cherryjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵547","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:leafychickensandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵548","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cherrycoconutchocolatebaritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵549","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bbqpotatochipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵550","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickenchowmeinitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵551","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mashedpotatoesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵552","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:turkishdelightitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵553","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bananayogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵554","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:frograwitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵555","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:berryvinaigrettesaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵556","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kaleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵557","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:venisonrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵558","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mangoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵559","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:applejellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵560","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:candiedsweetpotatoesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵561","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chaoscookieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵562","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cevicheitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵563","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spagettiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵564","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:baconandeggsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵565","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:colasodaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵566","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookedtofickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵567","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:juteitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵568","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cracklinsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵569","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pancakesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵570","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:dhalitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵571","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peasandceleryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵572","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:neapolitanicecreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵573","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:randomtacoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵574","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bbqchickenpizzaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵575","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raspberrymilkshakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵576","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberryicecreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵577","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gourmetvenisonpattyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵578","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rawtofeakitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵579","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:honeyglazedhamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵580","fermentation_chambershi", 1200)
.addItemInput(<nuclearcraft:dominos>)
.addItemOutput(<contenttweaker:fermentation_mixture>*11)
.addFluidOutput(<liquid:ethanol>*22)
.build();

RecipeBuilder.newBuilder("发酵581","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:taroitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵582","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:vanillabeanitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵583","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:meringuebombeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵584","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:papayajellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵585","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coleslawburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵586","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peachyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵587","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:friedgreentomatoesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵588","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fortunecookieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵589","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mushroomrisottoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵591","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crabkimbapitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵592","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:plumjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵593","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blackberrycobbleritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵594","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:friedonionsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵595","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mangosmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵596","fermentation_chambershi", 1200)
.addItemInput(<quark:cooked_frog_leg>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵597","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:schnitzelitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵598","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lettuceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵599","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:candleberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵600","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:friedeggitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵601","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:roastedrootveggiemedleyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵602","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:snailrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵603","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gherkinitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵604","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blueberrymuffinitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵605","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:snailcookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵606","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:stuffingitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵607","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gooseberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵608","fermentation_chambershi", 1200)
.addItemInput(<minecraft:poisonous_potato>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵609","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:applejellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵610","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:apricotjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵611","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grilledeggplantitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵612","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:venisoncookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵613","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cornbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵614","fermentation_chambershi", 1200)
.addItemInput(<minecraft:apple>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵615","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tomatosoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵616","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peanutbuttercupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵617","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cassavaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵618","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:durianmilkshakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵619","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chikorollitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵620","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mushroomketchupomeletitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵621","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kungpaochickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵622","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:porksausageitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵623","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:persimmonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵624","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bakedsweetpotatoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵625","fermentation_chambershi", 1200)
.addItemInput(<sakura:onion>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵626","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blueberryjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵627","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chipsandsalsaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵628","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickendinneritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵629","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:durianitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵630","fermentation_chambershi", 1200)
.addItemInput(<minecraft:cooked_beef>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵631","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:milletitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵632","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cherrysmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵633","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵634","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bakedbeansitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵635","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:almondbutteritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵636","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:garlicmashedpotatoesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵637","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:meatfeastpizzaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*15)
.addFluidOutput(<liquid:ethanol>*30)
.build();

RecipeBuilder.newBuilder("发酵638","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cucumbersandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵639","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:stuffedeggplantitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵640","fermentation_chambershi", 1200)
.addItemInput(<sakura:tomato>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵641","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:earlgreyteaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵642","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rawtofishitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵643","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:troutrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵644","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:walnutraisinbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵645","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:eelrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵646","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapefruitjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵647","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:orangeyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵648","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kenafitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵649","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fruitpunchitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵650","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:koreandinneritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*15)
.addFluidOutput(<liquid:ethanol>*30)
.build();

RecipeBuilder.newBuilder("发酵651","fermentation_chambershi", 1200)
.addItemInput(<nuclearcraft:milk_chocolate>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵652","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pinkelitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵653","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grilledmushroomitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵654","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:wontonsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵655","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:ricesoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵656","fermentation_chambershi", 1200)
.addItemInput(<nuclearcraft:marshmallow>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵657","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:weekendpicnicitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*12)
.addFluidOutput(<liquid:ethanol>*24)
.build();

RecipeBuilder.newBuilder("发酵658","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:greeneggsandhamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵659","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:leafyfishsandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵660","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookedtofishitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵661","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pomegranateyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵662","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crackersitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵663","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberryrhubarbpieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵664","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:nutellaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵665","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sundayhighteaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵666","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:omeletitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵667","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:breadfruititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵668","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:1>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵669","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:2>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵670","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:3>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵671","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:4>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵672","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:6>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵673","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:8>)
.addItemOutput(<contenttweaker:fermentation_mixture>*9)
.addFluidOutput(<liquid:ethanol>*18)
.build();

RecipeBuilder.newBuilder("发酵674","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:9>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵675","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:11>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵676","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:12>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵677","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:13>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵678","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:14>)
.addItemOutput(<contenttweaker:fermentation_mixture>*9)
.addFluidOutput(<liquid:ethanol>*18)
.build();

RecipeBuilder.newBuilder("发酵679","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:15>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵680","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:17>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵681","fermentation_chambershi", 1200)
.addItemInput(<actuallyadditions:item_food:19>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵682","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bananamilkshakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();