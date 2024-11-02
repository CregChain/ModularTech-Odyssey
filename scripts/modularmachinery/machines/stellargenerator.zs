//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server
//模型：新星工程：世界服务器  模型使用已获得Kasumi_Nova授权
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

//显示调整
MMEvents.onControllerGUIRender("stellargenerator", function(event as ControllerGUIRenderEvent) {
    val controller as IMachineController = event.controller;
    //val data = controller.customData.asMap();
    event.extraInfo = "§d这台机器通过汲取星空中的星能发电，在满月时星空的映射能量最为强大，而在新月时最为微弱，此外， 天气也会对与星空的连接产生极大影响";
    event.extraInfo = "§e运行时，机器内部需放有天辉水晶石来协助星能连接，水晶石会因为星能作用在短时间内碎裂，在星能较强时，水晶也会因星能的增强而加速碎裂，星能结晶可以构建临时连接避免水晶石碎裂";
    event.extraInfo = "§6工作时间为晚上18:30——早上5:30";
});

/*.addPreTickHandler(function(event as RecipeTickEvent) {
    val ctrl = event.controller;
    if( 1000<ctrl.world.getWorldTime() && ctrl.world.getWorldTime()<13000 ){
        event.setFailed(true, "已超出时间段，与星空连接中断");
    }
})*/
/*
//==================================================晴==================================================
RecipeBuilder.newBuilder("星能发电-晴-满月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.04)
.addCatalystInput(<contenttweaker:star_crystal>*8, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.04F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("sunny")
.addEnergyPerTickOutput(16384)
.build();

RecipeBuilder.newBuilder("星能发电-晴-亏凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.03)
.addCatalystInput(<contenttweaker:star_crystal>*6, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.03F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("sunny")
.addEnergyPerTickOutput(14336)
.build();

RecipeBuilder.newBuilder("星能发电-晴-下弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.02)
.addCatalystInput(<contenttweaker:star_crystal>*4, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.02F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("sunny")
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("星能发电-晴-残月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.addCatalystInput(<contenttweaker:star_crystal>*2, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.01F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("sunny")
.addEnergyPerTickOutput(10240)
.build();

RecipeBuilder.newBuilder("星能发电-雨-新月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.setAltitude(128, 256)
.setMoonPhase([4])
.setWeather("raining")
.addEnergyPerTickOutput(4096)
.build();

RecipeBuilder.newBuilder("星能发电-晴-娥眉月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.addCatalystInput(<contenttweaker:star_crystal>*2, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.01F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("sunny")
.addEnergyPerTickOutput(10240)
.build();

RecipeBuilder.newBuilder("星能发电-晴-上弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.02)
.addCatalystInput(<contenttweaker:star_crystal>*4, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.02F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("sunny")
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("星能发电-晴-盈凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.03)
.addCatalystInput(<contenttweaker:star_crystal>*6, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.03F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("sunny")
.addEnergyPerTickOutput(14336)
.build();

//==================================================雨==================================================
RecipeBuilder.newBuilder("星能发电-雨-满月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.02)
.addCatalystInput(<contenttweaker:star_crystal>*4, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.02F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("raining")
.addEnergyPerTickOutput(8192)
.build();

RecipeBuilder.newBuilder("星能发电-雨-亏凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.addCatalystInput(<contenttweaker:star_crystal>*3, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.015F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("raining")
.addEnergyPerTickOutput(7168)
.build();

RecipeBuilder.newBuilder("星能发电-雨-下弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.addCatalystInput(<contenttweaker:star_crystal>*2, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.01F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("raining")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雨-残月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.addCatalystInput(<contenttweaker:star_crystal>*1, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.005F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("raining")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雨-新月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.setAltitude(128, 256)
.setMoonPhase([4])
.setWeather("raining")
.addEnergyPerTickOutput(4096)
.build();

RecipeBuilder.newBuilder("星能发电-雨-娥眉月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.addCatalystInput(<contenttweaker:star_crystal>*1, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.005F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("raining")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雨-上弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.addCatalystInput(<contenttweaker:star_crystal>*2, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.01F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("raining")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雨-盈凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.addCatalystInput(<contenttweaker:star_crystal>*3, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.015F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("raining")
.addEnergyPerTickOutput(7168)
.build();

//==================================================雪==================================================
RecipeBuilder.newBuilder("星能发电-雪-满月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.02)
.addCatalystInput(<contenttweaker:star_crystal>*4, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.02F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("snowing")
.addEnergyPerTickOutput(8192)
.build();

RecipeBuilder.newBuilder("星能发电-雪-亏凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.addCatalystInput(<contenttweaker:star_crystal>*3, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.015F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("snowing")
.addEnergyPerTickOutput(7168)
.build();

RecipeBuilder.newBuilder("星能发电-雪-下弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.addCatalystInput(<contenttweaker:star_crystal>*2, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.01F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("snowing")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雪-残月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.addCatalystInput(<contenttweaker:star_crystal>*1, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.005F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("snowing")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雪-新月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.setAltitude(128, 256)
.setMoonPhase([4])
.setWeather("snowing")
.addEnergyPerTickOutput(4096)
.build();

RecipeBuilder.newBuilder("星能发电-雪-娥眉月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.addCatalystInput(<contenttweaker:star_crystal>*1, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.005F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("snowing")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雪-上弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.addCatalystInput(<contenttweaker:star_crystal>*2, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.01F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("snowing")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雪-盈凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.addCatalystInput(<contenttweaker:star_crystal>*3, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.015F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("snowing")
.addEnergyPerTickOutput(7168)
.build();

//==================================================雷雨==================================================
RecipeBuilder.newBuilder("星能发电-雷雨-满月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.02)
.addCatalystInput(<contenttweaker:star_crystal>*4, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.02F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("thundering")
.addEnergyPerTickOutput(8192)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-亏凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.addCatalystInput(<contenttweaker:star_crystal>*3, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.015F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("thundering")
.addEnergyPerTickOutput(7168)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-下弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.addCatalystInput(<contenttweaker:star_crystal>*2, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.01F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("thundering")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-残月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.addCatalystInput(<contenttweaker:star_crystal>*1, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", 0.005, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("thundering")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-新月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.setAltitude(128, 256)
.setMoonPhase([4])
.setWeather("thundering")
.addEnergyPerTickOutput(4096)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-娥眉月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.addCatalystInput(<contenttweaker:star_crystal>*1, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.005F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("thundering")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-上弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.addCatalystInput(<contenttweaker:star_crystal>*2, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.01F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("thundering")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-盈凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.addCatalystInput(<contenttweaker:star_crystal>*3, ["§6星能结晶可以构建一条临时星能通路，让天辉水晶石免于碎裂，但自身也会因为强星能作用而破裂"], [RecipeModifierBuilder.create("modularmachinery:item", "input", -0.015F, 0, true).setValue(0).build()])
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("thundering")
.addEnergyPerTickOutput(7168)
.build();
*/

//==================================================晴-结晶==================================================
RecipeBuilder.newBuilder("A星能发电-晴-结晶-满月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*8)
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("sunny")
.addEnergyPerTickOutput(16384)
.build();

RecipeBuilder.newBuilder("A星能发电-晴-结晶-亏凸月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*6)
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("sunny")
.addEnergyPerTickOutput(14336)
.build();

RecipeBuilder.newBuilder("A星能发电-晴-结晶-下弦月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*4)
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("sunny")
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("A星能发电-晴-结晶-残月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*2)
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("sunny")
.addEnergyPerTickOutput(10240)
.build();

RecipeBuilder.newBuilder("A星能发电-晴-结晶-娥眉月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*2)
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("sunny")
.addEnergyPerTickOutput(10240)
.build();

RecipeBuilder.newBuilder("A星能发电-晴-结晶-上弦月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*4)
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("sunny")
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("A星能发电-晴-结晶-盈凸月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*6)
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("sunny")
.addEnergyPerTickOutput(14336)
.build();

//==================================================雨-结晶==================================================
RecipeBuilder.newBuilder("A星能发电-雨-结晶-满月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*4)
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("raining")
.addEnergyPerTickOutput(8192)
.build();

RecipeBuilder.newBuilder("A星能发电-雨-结晶-亏凸月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*3)
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("raining")
.addEnergyPerTickOutput(7168)
.build();

RecipeBuilder.newBuilder("A星能发电-雨-结晶-下弦月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*2)
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("raining")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("A星能发电-雨-结晶-残月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*1)
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("raining")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("A星能发电-雨-结晶-娥眉月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*1)
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("raining")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("A星能发电-雨-结晶-上弦月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*2)
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("raining")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("A星能发电-雨-结晶-盈凸月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*3)
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("raining")
.addEnergyPerTickOutput(7168)
.build();

//==================================================雪-结晶==================================================
RecipeBuilder.newBuilder("A星能发电-雪-结晶-满月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*4)
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("snowing")
.addEnergyPerTickOutput(8192)
.build();

RecipeBuilder.newBuilder("A星能发电-雪-结晶-亏凸月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*3)
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("snowing")
.addEnergyPerTickOutput(7168)
.build();

RecipeBuilder.newBuilder("A星能发电-雪-结晶-下弦月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*2)
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("snowing")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("A星能发电-雪-结晶-残月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*1)
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("snowing")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("A星能发电-雪-结晶-娥眉月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*1)
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("snowing")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("A星能发电-雪-结晶-上弦月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*2)
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("snowing")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("A星能发电-雪-结晶-盈凸月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*3)
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("snowing")
.addEnergyPerTickOutput(7168)
.build();

//==================================================雷雨-结晶==================================================
RecipeBuilder.newBuilder("A星能发电-雷雨-结晶-满月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*4)
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("thundering")
.addEnergyPerTickOutput(8192)
.build();

RecipeBuilder.newBuilder("A星能发电-雷雨-结晶-亏凸月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*3)
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("thundering")
.addEnergyPerTickOutput(7168)
.build();

RecipeBuilder.newBuilder("A星能发电-雷雨-结晶-下弦月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*2)
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("thundering")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("A星能发电-雷雨-结晶-残月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*1)
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("thundering")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("A星能发电-雷雨-结晶-娥眉月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*1)
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("thundering")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("A星能发电-雷雨-结晶-上弦月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*2)
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("thundering")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("A星能发电-雷雨-结晶-盈凸月","stellargenerator", 300,0,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.addItemInput(<contenttweaker:star_crystal>*3)
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("thundering")
.addEnergyPerTickOutput(7168)
.build();

//==================================================晴==================================================
RecipeBuilder.newBuilder("星能发电-晴-满月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.04)
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("sunny")
.addEnergyPerTickOutput(16384)
.build();

RecipeBuilder.newBuilder("星能发电-晴-亏凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.03)
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("sunny")
.addEnergyPerTickOutput(14336)
.build();

RecipeBuilder.newBuilder("星能发电-晴-下弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.02)
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("sunny")
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("星能发电-晴-残月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("sunny")
.addEnergyPerTickOutput(10240)
.build();

RecipeBuilder.newBuilder("星能发电-晴-新月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.setAltitude(128, 256)
.setMoonPhase([4])
.setWeather("sunny")
.addEnergyPerTickOutput(8192)
.build();

RecipeBuilder.newBuilder("星能发电-晴-娥眉月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.1)
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("sunny")
.addEnergyPerTickOutput(10240)
.build();

RecipeBuilder.newBuilder("星能发电-晴-上弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.02)
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("sunny")
.addEnergyPerTickOutput(12288)
.build();

RecipeBuilder.newBuilder("星能发电-晴-盈凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.03)
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("sunny")
.addEnergyPerTickOutput(14336)
.build();

//==================================================雨==================================================
RecipeBuilder.newBuilder("星能发电-雨-满月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.02)
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("raining")
.addEnergyPerTickOutput(8192)
.build();

RecipeBuilder.newBuilder("星能发电-雨-亏凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("raining")
.addEnergyPerTickOutput(7168)
.build();

RecipeBuilder.newBuilder("星能发电-雨-下弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("raining")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雨-残月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("raining")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雨-新月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.setAltitude(128, 256)
.setMoonPhase([4])
.setWeather("raining")
.addEnergyPerTickOutput(4096)
.build();

RecipeBuilder.newBuilder("星能发电-雨-娥眉月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("raining")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雨-上弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("raining")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雨-盈凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("raining")
.addEnergyPerTickOutput(7168)
.build();

//==================================================雪==================================================
RecipeBuilder.newBuilder("星能发电-雪-满月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.02)
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("snowing")
.addEnergyPerTickOutput(8192)
.build();

RecipeBuilder.newBuilder("星能发电-雪-亏凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("snowing")
.addEnergyPerTickOutput(7168)
.build();

RecipeBuilder.newBuilder("星能发电-雪-下弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("snowing")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雪-残月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("snowing")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雪-新月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.setAltitude(128, 256)
.setMoonPhase([4])
.setWeather("snowing")
.addEnergyPerTickOutput(4096)
.build();

RecipeBuilder.newBuilder("星能发电-雪-娥眉月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("snowing")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雪-上弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("snowing")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雪-盈凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("snowing")
.addEnergyPerTickOutput(7168)
.build();

//==================================================雷雨==================================================
RecipeBuilder.newBuilder("星能发电-雷雨-满月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.02)
.setAltitude(128, 256)
.setMoonPhase([0])
.setWeather("thundering")
.addEnergyPerTickOutput(8192)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-亏凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.setAltitude(128, 256)
.setMoonPhase([1])
.setWeather("thundering")
.addEnergyPerTickOutput(7168)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-下弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.setAltitude(128, 256)
.setMoonPhase([2])
.setWeather("thundering")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-残月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.setAltitude(128, 256)
.setMoonPhase([3])
.setWeather("thundering")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-新月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0)
.setAltitude(128, 256)
.setMoonPhase([4])
.setWeather("thundering")
.addEnergyPerTickOutput(4096)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-娥眉月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.005)
.setAltitude(128, 256)
.setMoonPhase([5])
.setWeather("thundering")
.addEnergyPerTickOutput(5120)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-上弦月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.01)
.setAltitude(128, 256)
.setMoonPhase([6])
.setWeather("thundering")
.addEnergyPerTickOutput(6144)
.build();

RecipeBuilder.newBuilder("星能发电-雷雨-盈凸月","stellargenerator", 300,1,true)
.addItemInput(<astralsorcery:itemcelestialcrystal>).setChance(0.015)
.setAltitude(128, 256)
.setMoonPhase([7])
.setWeather("thundering")
.addEnergyPerTickOutput(7168)
.build();
