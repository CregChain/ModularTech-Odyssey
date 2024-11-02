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


RecipeBuilder.newBuilder("发酵683","fermentation_chambershi", 1200)
.addItemInput(<minecraft:cooked_porkchop>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵684","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:stuffedmushroomitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵685","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:takoyakiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵686","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cornishpastyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵687","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mushroomsteakitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵688","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:shrimpcookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵689","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rawtofaconitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵690","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:padthaiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵691","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:zucchinibreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵692","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cheezepuffsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵693","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:boiledeggitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵694","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:glazedcarrotsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵695","fermentation_chambershi", 1200)
.addItemInput(<minecraft:golden_apple>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵696","fermentation_chambershi", 1200)
.addItemInput(<minecraft:golden_apple:1>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵697","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:guavaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵698","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rawtofickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵699","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sugarcookieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵700","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pinacoladaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵701","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolatebaritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵702","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:broccolimacitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵703","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mulberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵704","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cherryjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵705","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peppermintitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵706","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:melonyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵707","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberryjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵708","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:saltedsunflowerseedsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵709","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:haggisitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵710","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:netherstartoastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*10)
.addFluidOutput(<liquid:ethanol>*20)
.build();

RecipeBuilder.newBuilder("发酵711","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:braisedonionsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵712","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemonbaritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵713","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:deviledeggitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵714","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:radishitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵715","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:caramelicecreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵716","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:softpretzelitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵717","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:toastedcoconutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵718","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bbqjackfruititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵719","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:papayasmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵720","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:nutmegitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵721","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lambwithmintsauceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵722","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:asparagusitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵723","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gourmetporkpattyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵724","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gumboitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵725","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fishdinneritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵726","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:honeybunitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵727","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bakedalaskaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵728","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blackpaellaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵729","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:applesnowitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵730","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pecanpieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵731","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:friedbolognasandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵732","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bbqplatteritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*9)
.addFluidOutput(<liquid:ethanol>*18)
.build();

RecipeBuilder.newBuilder("发酵733","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:walnutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵734","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolatecupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵735","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mincepieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵736","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:apricotjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵737","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cherrypieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵738","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:greenteaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵739","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:stuffedduckitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵740","fermentation_chambershi", 1200)
.addItemInput(<minecraft:chorus_fruit>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵741","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickencurryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵742","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:springrollitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵743","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pumpkinoatsconesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵744","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:saucedlambkebabitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵745","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:marshmellowchicksitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵746","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pitepaltitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵747","fermentation_chambershi", 1200)
.addItemInput(<sakura:buggys_meat>)
.addItemOutput(<contenttweaker:fermentation_mixture>*22)
.addFluidOutput(<liquid:ethanol>*44)
.build();

RecipeBuilder.newBuilder("发酵748","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:ceasarsaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵749","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:maplesyrupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵750","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:steamedspinachitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵751","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chilipoppersitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵752","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fiestacornsaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵753","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:beanitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵754","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coconutyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵755","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crispyricepuffcerealitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵756","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:extremechiliitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵757","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tunapotatoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵758","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cucumbersoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵759","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rawtofuttonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵760","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:ovenroastedcaulifloweritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵761","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peanutbuttercupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵762","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mudfishrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵763","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cashewbutteritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵764","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:wintersquashitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵765","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spidereyesoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵766","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:oldworldveggiesoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵767","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:imitationcrabsticksitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵768","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:seedsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵769","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cinnamontoastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵770","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:scallionbakedpotatoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵771","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lambkebabitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵772","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pecanitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵773","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:jellybeansitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵774","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hamsweetpicklesandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵775","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:plumjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵776","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pistachioitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵777","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:suaderoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵779","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:honeyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵780","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cinnamonappleoatmealitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵781","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mustardseedsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵782","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lambbarleysoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵783","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:beetsaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵784","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberrysouffleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵785","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:potstickersitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵786","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gooseberrymilkshakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵787","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapesodaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵788","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:scrambledeggitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵789","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:summersquashwithradishitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵790","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:roastedpumpkinseedsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵791","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:springsaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵792","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rutabagaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵793","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tomatoherbchickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵794","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:dragonfruititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵795","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:jellyfishrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵796","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rhubarbitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵797","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:ramenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵798","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:octopuscookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵799","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:misosoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵800","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crawfishetoufeeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵801","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coconutcreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵802","fermentation_chambershi", 1200)
.addItemInput(<nuclearcraft:foursmore>)
.addItemOutput(<contenttweaker:fermentation_mixture>*66)
.addFluidOutput(<liquid:ethanol>*132)
.build();

RecipeBuilder.newBuilder("发酵803","fermentation_chambershi", 1200)
.addItemInput(<nuclearcraft:dark_chocolate>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵804","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:snapperrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵805","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:donutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵806","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemonchickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵807","fermentation_chambershi", 1200)
.addItemInput(<minecraft:carrot>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵808","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:caramelappleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵809","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pearsmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵810","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:zucchinifriesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵811","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:potatoskinsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵812","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mochaicecreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵813","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spinachitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵814","fermentation_chambershi", 1200)
.addItemInput(<sakura:bento>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵815","fermentation_chambershi", 1200)
.addItemInput(<sakura:bento:1>)
.addItemOutput(<contenttweaker:fermentation_mixture>*9)
.addFluidOutput(<liquid:ethanol>*18)
.build();

RecipeBuilder.newBuilder("发酵816","fermentation_chambershi", 1200)
.addItemInput(<sakura:bento:2>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵817","fermentation_chambershi", 1200)
.addItemInput(<sakura:bento:3>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵818","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:herringrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵819","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:timpanoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*12)
.addFluidOutput(<liquid:ethanol>*24)
.build();

RecipeBuilder.newBuilder("发酵820","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:candiedgingeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵821","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pearyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵822","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapefruitsmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵823","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pearjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵824","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:meringuerouladeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵825","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:walleyerawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵826","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapejellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵827","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:szechuaneggplantitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵828","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:calamaricookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵829","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:okraitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵830","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grouperrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵831","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cornedbeefhashitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*11)
.addFluidOutput(<liquid:ethanol>*22)
.build();

RecipeBuilder.newBuilder("发酵832","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blackberryjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵833","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gourmetbeefburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*12)
.addFluidOutput(<liquid:ethanol>*24)
.build();

RecipeBuilder.newBuilder("发酵834","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crayfishcookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵835","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:figjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵836","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:eggnogitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵837","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cottagepieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵838","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chilidogitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵839","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickenbiscuititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵840","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cornonthecobitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵841","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:vanillayogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵842","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:jellydonutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵843","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:orangeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵844","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:onionhamburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵845","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:candiedpecansitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵846","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:figjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵847","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kalechipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵848","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pizzasliceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵849","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cornflakesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵850","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hotwingsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵851","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peasitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵852","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rosepetalteaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵853","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cactussoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵854","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pralinesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵855","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pumpkinbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵856","fermentation_chambershi", 1200)
.addItemInput(<minecraft:beetroot_soup>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵857","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spinachpieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵858","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mashedsweetpotatoesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵859","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tomatilloitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵860","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:ironbrewitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵861","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemonsmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵862","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:figbaritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵863","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fairybreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵864","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:supremepizzaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*9)
.addFluidOutput(<liquid:ethanol>*18)
.build();

RecipeBuilder.newBuilder("发酵865","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵866","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:1>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵867","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:2>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵868","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:3>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵869","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:4>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵870","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:5>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵871","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:6>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵872","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:7>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵873","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:8>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵874","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:9>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵875","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:10>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵876","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:11>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵877","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:12>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵878","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:13>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵879","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:14>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵880","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:15>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵881","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:16>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵882","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:17>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵883","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:18>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵884","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:19>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵885","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:20>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵886","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:21>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵887","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:22>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵888","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:23>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵889","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:24>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵890","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:25>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵891","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:26>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵892","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:27>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵893","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:28>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵894","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:29>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵895","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:30>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵896","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:31>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵897","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:32>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵898","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:33>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵899","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:34>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵900","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:35>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵901","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:36>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵902","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:37>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵903","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:38>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵904","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:39>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵905","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:40>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵906","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:41>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵907","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:42>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵908","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:43>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵909","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:44>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵910","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:45>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵911","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:46>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵912","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:47>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵913","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:48>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵914","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:49>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵915","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:50>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵916","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:51>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵917","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:52>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵918","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:53>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵919","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:54>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵920","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:55>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵921","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:56>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵922","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:57>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵923","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:58>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵924","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:59>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵925","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:60>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵926","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:61>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵927","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:62>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵928","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:63>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵929","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:64>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵930","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:65>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵931","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:66>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵932","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:67>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵933","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:68>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵934","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:69>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵935","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:70>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵936","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:71>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵937","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:72>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵938","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:73>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵939","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:74>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵940","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:75>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵941","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:76>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵942","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:77>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵943","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:78>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵944","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:79>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵945","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:80>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵946","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:81>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵947","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:82>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵948","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:83>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵949","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:84>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵950","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:85>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵951","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:86>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵952","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:87>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵953","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:88>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵954","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:89>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵955","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:90>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵956","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:91>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵957","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:92>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵958","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:93>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵959","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:94>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵960","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:95>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵961","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:96>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵962","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:97>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵963","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:98>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵964","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:99>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵965","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:100>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵966","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:101>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵967","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:102>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵968","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:103>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵969","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:104>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵970","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:105>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵971","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:106>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵972","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:107>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵973","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:108>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵974","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:109>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵975","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:110>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵976","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:111>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵977","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:112>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵978","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:113>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵979","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:120>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵980","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:121>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵981","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:122>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵982","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:123>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵983","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:124>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵984","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:125>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵985","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:126>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵986","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:127>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵987","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:128>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵988","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:129>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵989","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:130>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵990","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:131>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵991","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:132>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵992","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:133>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵993","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:138>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵994","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:139>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵995","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:140>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵996","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:141>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵997","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:143>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵998","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:144>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵999","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:145>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1000","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:147>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1001","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:148>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1002","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:149>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1003","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:150>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵1004","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:151>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1005","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:152>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1006","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:153>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1007","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:154>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵1008","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:155>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1009","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:156>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1010","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:157>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1011","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:158>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1012","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:159>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1013","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:160>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1014","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:161>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1015","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:162>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1016","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:163>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1017","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:164>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1018","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:165>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1019","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:166>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1020","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:167>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1021","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:168>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1022","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:169>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1023","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:170>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1024","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:171>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵1025","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:172>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵1026","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:173>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1027","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:174>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1028","fermentation_chambershi", 1200)
.addItemInput(<sakura:foodset:175>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1029","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chaiteaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1030","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberryyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1031","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gingerbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1032","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolateorangeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1033","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pastagardeniaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1034","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:toastsandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1035","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mushroomketchupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1036","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapefruitjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1037","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:picklesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1038","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raspberryjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1039","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:frogcookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1040","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pambitsboxitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1041","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:damperitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1042","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:persimmonjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1043","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pumpkinmuffinitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1044","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grilledcheeseitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1045","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fruitcrumbleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1046","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:maplesausageitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1047","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:caulifloweritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1048","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:zucchiniitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1049","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:homestylelunchitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵1050","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cranberryjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1051","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pomegranateitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1052","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fishsandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1053","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cobblestonecobbleritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1054","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coffeebeanitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1055","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:yorkshirepuddingitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1056","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:meatloafitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1057","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:merveilleuxitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1058","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:apricotglazedporkitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1059","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:beetburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵1060","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cherryjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1061","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:paneertikkamasalaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1062","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:poachedpearitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1063","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peanutbutteritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1064","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:epicbltitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵1065","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:applefritteritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1066","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bananasmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1067","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:ricepuddingitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1068","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sprinklescupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1069","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:marinatedcucumbersitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1070","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:amaranthitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1071","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pearjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1072","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blueberrypancakesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1073","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:veggiestripsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1074","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:buttertartitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1075","fermentation_chambershi", 1200)
.addItemInput(<minecraft:chicken>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1076","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rootbeersodaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1077","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sweetandsourchickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1078","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:shrimpokrahushpuppiesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1079","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:arrowrootitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1080","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chestnutbutteritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1081","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemoncupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1082","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemonmeringueitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1083","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocovoxelsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1084","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:orangejuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1085","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:californiarollitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1086","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:netherwingsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1087","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gourmetporkburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*9)
.addFluidOutput(<liquid:ethanol>*18)
.build();

RecipeBuilder.newBuilder("发酵1088","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:omuriceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1089","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sardinesinhotsauceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1090","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kohlundpinkelitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*9)
.addFluidOutput(<liquid:ethanol>*18)
.build();

RecipeBuilder.newBuilder("发酵1091","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:vegetablesoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1092","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gardensoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1093","fermentation_chambershi", 1200)
.addItemInput(<minecraft:beef>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1094","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:plumsmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1095","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cornedbeefbreakfastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*16)
.addFluidOutput(<liquid:ethanol>*32)
.build();

RecipeBuilder.newBuilder("发酵1096","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:glisteningsaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵1097","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pemmicanitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1098","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:figsmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1099","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:potatosaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1100","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:ricecakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1101","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:beefjerkyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1102","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chipsanddipitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1103","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cornitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1104","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:creamedbroccolisoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1105","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:eggtartitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1106","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:friedfeastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*11)
.addFluidOutput(<liquid:ethanol>*22)
.build();

RecipeBuilder.newBuilder("发酵1107","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:charrrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1108","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:generaltsochickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1109","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:banananutbreaditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1110","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blueberrypieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1111","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:clamrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1112","fermentation_chambershi", 1200)
.addItemInput(<quark:golden_frog_leg>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1113","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:orangechickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1114","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:breakfastburritoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1115","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickengumboitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1116","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemonitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1117","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:beetitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1118","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mochidessertitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1119","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapejuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1120","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:soursopitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1121","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookedtofeegitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1122","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kimchiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1123","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cranberryjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1124","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mintcupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1125","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:biscuititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1126","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lentilitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1127","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tunarawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1128","fermentation_chambershi", 1200)
.addItemInput(<quark:frog_leg>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1129","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bltitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1130","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:marshmellowsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1131","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:zeppoleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1132","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:starfruitjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1133","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:smoresitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1134","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chestnutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1135","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mangochutneyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1136","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spumoniicecreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1137","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blueberrysmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1138","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:carrotjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1139","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mushroomlasagnaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1140","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cantaloupeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1141","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:roastchickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1142","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sesameballitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1143","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cottoncandyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1144","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:vindalooitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1145","fermentation_chambershi", 1200)
.addItemInput(<galacticraftcore:food>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1146","fermentation_chambershi", 1200)
.addItemInput(<galacticraftcore:food:1>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1147","fermentation_chambershi", 1200)
.addItemInput(<galacticraftcore:food:2>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1148","fermentation_chambershi", 1200)
.addItemInput(<galacticraftcore:food:3>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1149","fermentation_chambershi", 1200)
.addItemInput(<galacticraftcore:food:9>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1150","fermentation_chambershi", 1200)
.addItemInput(<galacticraftcore:food:5>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1151","fermentation_chambershi", 1200)
.addItemInput(<galacticraftcore:food:6>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1152","fermentation_chambershi", 1200)
.addItemInput(<galacticraftcore:food:7>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1153","fermentation_chambershi", 1200)
.addItemInput(<galacticraftcore:food:8>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵1154","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:honeycombchocolatebaritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1155","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:scallopcookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1156","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fishtacoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1157","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemonjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1158","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tiropitaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1159","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:monsterfrieddumplingsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1160","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bambooshootitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1161","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:vegetarianlettucewrapitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1162","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:turtlecookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1163","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raspberrypieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1164","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:taiyakiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1165","fermentation_chambershi", 1200)
.addItemInput(<minecraft:mushroom_stew>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1166","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bbqsauceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1167","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:southernstylebreakfastitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*12)
.addFluidOutput(<liquid:ethanol>*24)
.build();

RecipeBuilder.newBuilder("发酵1168","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gingersodaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1169","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pearjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1170","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:carrotsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1171","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pomegranatejellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1172","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hushpuppiesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1173","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kiwijuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1174","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crackersandcheeseitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1175","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:starfruityogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1176","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cheeseitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1177","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tilapiarawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1178","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:limesmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1179","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:kiwiyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1180","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:apricotitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1181","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cheesesteakitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1182","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:leekitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1183","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:bassrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1184","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tomatoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1185","fermentation_chambershi", 1200)
.addItemInput(<enderio:item_ender_food>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1186","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:applesmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1187","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:steakfajitaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1188","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:clamcookeditem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1189","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spiceleafitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1190","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:guisoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1191","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookedtofabbititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1192","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:leekbaconsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1193","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:figyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1194","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:minerstewitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*16)
.addFluidOutput(<liquid:ethanol>*32)
.build();

RecipeBuilder.newBuilder("发酵1195","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:taffyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1196","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peachesandcreamoatmealitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1197","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lycheeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1198","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cactusfruitjuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1199","fermentation_chambershi", 1200)
.addItemInput(<minecraft:beetroot>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1200","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:ediblerootitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1201","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:slimepieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1202","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:garlicsteakitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1203","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:steakandchipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1204","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hotcocoaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1205","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:orangeduckitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1206","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:batteredsausageitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1207","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapesaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1208","fermentation_chambershi", 1200)
.addItemInput(<extrabotany:friedchicken>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1209","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:calamarirawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1210","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:onigiriitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1211","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:apricotyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1212","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cassouletitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵1213","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gingerchickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1214","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tatertotsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1215","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:deluxenachoesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*10)
.addFluidOutput(<liquid:ethanol>*20)
.build();

RecipeBuilder.newBuilder("发酵1216","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:zestyzucchiniitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1217","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gingersnapsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1218","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1219","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:1>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1220","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:2>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1221","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:3>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1222","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:4>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1223","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:5>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1224","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:6>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1225","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:7>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1226","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:8>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1227","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:9>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1228","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:10>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1229","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:11>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1230","fermentation_chambershi", 1200)
.addItemInput(<sakura:tea:12>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1231","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chilipepperitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1232","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gummybearsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1233","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raspberryjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1234","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:figitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1235","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1236","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:1>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1237","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:2>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1238","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:3>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1239","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:4>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1240","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:5>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1241","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:10>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1242","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:11>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1243","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:12>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1244","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:13>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1245","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:14>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1246","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:15>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1247","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:20>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1248","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:21>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1249","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:22>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1250","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:23>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1251","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:30>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1252","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:31>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1253","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:32>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1254","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:33>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1255","fermentation_chambershi", 1200)
.addItemInput(<tconstruct:edible:34>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1256","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapefruititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1257","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:deluxecheeseburgeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1258","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:greengrapeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1259","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:maplecandiedbaconitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1260","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberrycupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1261","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:liverandonionsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1262","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:futomakiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1263","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mintchocolatechipicecreamitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1264","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:stuffedpepperitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1265","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:orangejellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1266","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:turnipsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1267","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:strawberrymilkshakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1268","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:celeryandpeanutbutteritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1269","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:popcornitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1270","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:oliveitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1271","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cactusfruititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1272","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cranberryjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1273","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolatecoconutbaritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1274","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:broccoliitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1275","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:artichokeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1276","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:melonsmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1277","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pickledonionsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1278","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:soybeanitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1279","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:beansandriceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1280","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:lemondrizzlecakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1281","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chorusfruitsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1282","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:saltedcaramelitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1283","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:delightedmealitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*9)
.addFluidOutput(<liquid:ethanol>*18)
.build();

RecipeBuilder.newBuilder("发酵1284","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cheesyshrimpquinoaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1285","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grilledskewersitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1286","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:friedriceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1287","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cabbageitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1288","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolatecherryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1289","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:dangoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1290","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cucumberitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1291","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cookedtofuduckitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1292","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:quinoaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1293","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blueberryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1294","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raspberrysmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1295","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:potatoandleeksoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1296","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:papayaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1297","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chocolatebaconitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1298","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:raspberrytrifleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1299","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:carrotcupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1300","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:oystersauceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1302","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:rambutanitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1303","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:riceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1304","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pepperoniitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1305","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:oysterrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1306","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mixedsaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1307","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:beanburritoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1308","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:scallionitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1309","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:crayfishsaladitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1310","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pizzaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵1311","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:fruitcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵1312","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:soymilkitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1313","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:sweetpotatoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1314","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:grapesmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1315","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:toadintheholeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*7)
.addFluidOutput(<liquid:ethanol>*14)
.build();

RecipeBuilder.newBuilder("发酵1316","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:spaghettidinneritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*8)
.addFluidOutput(<liquid:ethanol>*16)
.build();

RecipeBuilder.newBuilder("发酵1317","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:manjuuitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1318","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:phoitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1319","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickennoodlesoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1320","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cheddarandsourcreampotatochipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1321","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peachitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1322","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cantonesenoodlesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1323","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pumpkinyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1324","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:friedchickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1325","fermentation_chambershi", 1200)
.addItemInput(<nuclearcraft:smore>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1326","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickencelerycasseroleitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1327","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mochiitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1328","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chilidonutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1329","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mangojuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1330","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:tunaonigiriitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1331","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:mangoyogurtitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1332","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:onionitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1333","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:orangesodaitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1334","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:starfruitsmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1335","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:vanillacupcakeitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1336","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cinnamonsugardonutitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1337","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gingeritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1338","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:beetsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1339","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:peachjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1340","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:blazingsoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1341","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:hotandsoursoupitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1342","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:musselrawitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1343","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coconutshrimpitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1344","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:curryleafitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1345","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:meringuecookieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1346","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cantonesegreensitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1347","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:starfruititem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1348","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:porklettucewrapitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1349","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:applecideritem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1350","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:plumitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1351","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:teriyakichickenitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*5)
.addFluidOutput(<liquid:ethanol>*10)
.build();

RecipeBuilder.newBuilder("发酵1352","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:persimmonjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1353","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:surfandturfitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1354","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:coconutsmoothieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1355","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickenkatsuitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1356","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:chickensandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1357","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:creamcookieitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();

RecipeBuilder.newBuilder("发酵1358","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:cornchipsitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1359","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gooseberryjellyitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1360","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:pomegranatejuiceitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*1)
.addFluidOutput(<liquid:ethanol>*2)
.build();

RecipeBuilder.newBuilder("发酵1361","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:veggiestirfryitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*3)
.addFluidOutput(<liquid:ethanol>*6)
.build();

RecipeBuilder.newBuilder("发酵1362","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:salmonpattiesitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*6)
.addFluidOutput(<liquid:ethanol>*12)
.build();

RecipeBuilder.newBuilder("发酵1363","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:baconwrappedchiliitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*2)
.addFluidOutput(<liquid:ethanol>*4)
.build();

RecipeBuilder.newBuilder("发酵1364","fermentation_chambershi", 1200)
.addItemInput(<harvestcraft:gooseberryjellysandwichitem>)
.addItemOutput(<contenttweaker:fermentation_mixture>*4)
.addFluidOutput(<liquid:ethanol>*8)
.build();