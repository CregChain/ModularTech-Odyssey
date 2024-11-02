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
import crafttweaker.events.IEventManager;
import crafttweaker.event.CommandEvent;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.IngredientArrayBuilder;

//=======================================地质勘探=======================================
RecipeBuilder.newBuilder("沙滩-油田","geological_exploration_instrument", 80)
.addEnergyPerTickInput(2048)
.addItemInput(<contenttweaker:oil_beach>)
.addItemInput(<scannable:module_fluid>*4)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<contenttweaker:oil_beach>).setChance(250)
    .addIngredient(<contenttweaker:oil_beach1>).setChance(100)
    .addIngredient(<contenttweaker:oil_beach2>).setChance(45)
    .addIngredient(<contenttweaker:oil_beach3>).setChance(15)
    .addIngredient(<contenttweaker:oil_beach4>).setChance(5)
    .addIngredient(<contenttweaker:oil_beach1h>).setChance(50)
    .addIngredient(<contenttweaker:oil_beach2h>).setChance(25)
    .addIngredient(<contenttweaker:oil_beach3h>).setChance(7)
    .addIngredient(<contenttweaker:oil_beach4h>).setChance(3)
    .build()
)
.build();

RecipeBuilder.newBuilder("沙漠-油田","geological_exploration_instrument", 80)
.addEnergyPerTickInput(4096)
.addItemInput(<contenttweaker:oil_desert>)
.addItemInput(<scannable:module_fluid>*4)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<contenttweaker:oil_desert>).setChance(250)
    .addIngredient(<contenttweaker:oil_desert1>).setChance(100)
    .addIngredient(<contenttweaker:oil_desert2>).setChance(45)
    .addIngredient(<contenttweaker:oil_desert3>).setChance(15)
    .addIngredient(<contenttweaker:oil_desert4>).setChance(5)
    .addIngredient(<contenttweaker:oil_desert1h>).setChance(50)
    .addIngredient(<contenttweaker:oil_desert2h>).setChance(25)
    .addIngredient(<contenttweaker:oil_desert3h>).setChance(7)
    .addIngredient(<contenttweaker:oil_desert4h>).setChance(3)
    .build()
)
.build();

RecipeBuilder.newBuilder("盆地-油田","geological_exploration_instrument", 80)
.addEnergyPerTickInput(4096)
.addItemInput(<contenttweaker:oil_basin>)
.addItemInput(<scannable:module_fluid>*4)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<contenttweaker:oil_basin>).setChance(250)
    .addIngredient(<contenttweaker:oil_basin1>).setChance(100)
    .addIngredient(<contenttweaker:oil_basin2>).setChance(45)
    .addIngredient(<contenttweaker:oil_basin3>).setChance(15)
    .addIngredient(<contenttweaker:oil_basin4>).setChance(5)
    .addIngredient(<contenttweaker:oil_basin1h>).setChance(50)
    .addIngredient(<contenttweaker:oil_basin2h>).setChance(25)
    .addIngredient(<contenttweaker:oil_basin3h>).setChance(7)
    .addIngredient(<contenttweaker:oil_basin4h>).setChance(3)
    .build()
)
.build();

//=======================================石油钻井=======================================
//石油
RecipeBuilder.newBuilder("oil_tier1", "pumpjack", 800)
.addEnergyPerTickInput(2048)
.addItemInput(<ore:oilcardTier1>).setChance(0.2)
.addFluidPerTickOutput(<liquid:crude_oil>*6)
.build();

RecipeBuilder.newBuilder("oil_tier2", "pumpjack", 800)
.addEnergyPerTickInput(2048)
.addItemInput(<ore:oilcardTier2>).setChance(0.15)
.addFluidPerTickOutput(<liquid:crude_oil>*15)
.build();

RecipeBuilder.newBuilder("oil_tier3", "pumpjack", 800)
.addEnergyPerTickInput(2048)
.addItemInput(<ore:oilcardTier3>).setChance(0.1)
.addFluidPerTickOutput(<liquid:crude_oil>*36)
.build();

RecipeBuilder.newBuilder("oil_tier4", "pumpjack", 800)
.addEnergyPerTickInput(2048)
.addItemInput(<ore:oilcardTier4>).setChance(0.05)
.addFluidPerTickOutput(<liquid:crude_oil>*100)
.build();

//重油
RecipeBuilder.newBuilder("heavy_oil_tier1", "pumpjack", 800)
.addEnergyPerTickInput(2048)
.addItemInput(<ore:heavyoilcardTier1>).setChance(0.2)
.addFluidPerTickOutput(<liquid:heavy_oil>*6)
.build();

RecipeBuilder.newBuilder("heavy_oil_tier2", "pumpjack", 800)
.addEnergyPerTickInput(2048)
.addItemInput(<ore:heavyoilcardTier2>).setChance(0.15)
.addFluidPerTickOutput(<liquid:heavy_oil>*15)
.build();

RecipeBuilder.newBuilder("heavy_oil_tier3", "pumpjack", 800)
.addEnergyPerTickInput(2048)
.addItemInput(<ore:heavyoilcardTier3>).setChance(0.1)
.addFluidPerTickOutput(<liquid:heavy_oil>*36)
.build();

RecipeBuilder.newBuilder("heavy_oil_tier4", "pumpjack", 800)
.addEnergyPerTickInput(2048)
.addItemInput(<ore:heavyoilcardTier4>).setChance(0.05)
.addFluidPerTickOutput(<liquid:heavy_oil>*100)
.build();

/*
RecipeBuilder.newBuilder("oil_pumpjack1", "pumpjack", 20)
.addEnergyPerTickInput(512)
.addItemInput(<contenttweaker:basiccircuit>).setChance(0)
.addFluidOutput(<liquid:crude_oil>*25)
.build();

RecipeBuilder.newBuilder("oil_pumpjack2", "pumpjack", 20)
.addEnergyPerTickInput(1024)
.addItemInput(<contenttweaker:advancedcircuit>).setChance(0)
.addFluidOutput(<liquid:crude_oil>*60)
.build();

RecipeBuilder.newBuilder("oil_pumpjack3", "pumpjack", 20)
.addEnergyPerTickInput(2048)
.addItemInput(<contenttweaker:epiccircuit>).setChance(0)
.addFluidOutput(<liquid:crude_oil>*150)
.build();

RecipeBuilder.newBuilder("oil_pumpjack4", "pumpjack", 20)
.addEnergyPerTickInput(4096)
.addItemInput(<contenttweaker:mastercircuit>).setChance(0)
.addFluidOutput(<liquid:crude_oil>*320)
.build();
*/