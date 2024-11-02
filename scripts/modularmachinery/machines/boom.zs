//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server
//部分代码由灵茗屿空岛作者-仙贝提供

//导包
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.Sync;

RecipeBuilder.newBuilder("核你爆了-1", "boom", 40)
.addItemInput(<cregtech:mode:1>).setChance(0)
.addEnergyPerTickInput(256)
.addRecipeTooltip("§4爆炸强度§b：§62")
.addFinishHandler(function(event as RecipeFinishEvent) {
    var ctrl=event.controller;
    var w=ctrl.world;
    var d=w.getDimension();
    if(d!=114514){
        Sync.addSyncTask(function(){
            w.performExplosion(null,ctrl.pos.x,ctrl.pos.y,ctrl.pos.z,2.0,false,false);
        });
    }})
.build();

RecipeBuilder.newBuilder("核你爆了-2", "boom", 40)
.addItemInput(<cregtech:mode:2>).setChance(0)
.addEnergyPerTickInput(512)
.addRecipeTooltip("§4爆炸强度§b：§64")
.addFinishHandler(function(event as RecipeFinishEvent) {
    var ctrl=event.controller;
    var w=ctrl.world;
    var d=w.getDimension();
    if(d!=114514){
        Sync.addSyncTask(function(){
            w.performExplosion(null,ctrl.pos.x,ctrl.pos.y,ctrl.pos.z,4.0,false,false);
        });
    }})
.build();

RecipeBuilder.newBuilder("核你爆了-3", "boom", 40)
.addItemInput(<cregtech:mode:3>).setChance(0)
.addEnergyPerTickInput(1024)
.addRecipeTooltip("§4爆炸强度§b：§68")
.addFinishHandler(function(event as RecipeFinishEvent) {
    var ctrl=event.controller;
    var w=ctrl.world;
    var d=w.getDimension();
    if(d!=114514){
        Sync.addSyncTask(function(){
            w.performExplosion(null,ctrl.pos.x,ctrl.pos.y,ctrl.pos.z,8.0,false,false);
        });
    }})
.build();

RecipeBuilder.newBuilder("核你爆了-4", "boom", 40)
.addItemInput(<cregtech:mode:4>).setChance(0)
.addEnergyPerTickInput(2048)
.addRecipeTooltip("§4爆炸强度§b：§616")
.addFinishHandler(function(event as RecipeFinishEvent) {
    var ctrl=event.controller;
    var w=ctrl.world;
    var d=w.getDimension();
    if(d!=114514){
        Sync.addSyncTask(function(){
            w.performExplosion(null,ctrl.pos.x,ctrl.pos.y,ctrl.pos.z,16.0,false,false);
        });
    }})
.build();

RecipeBuilder.newBuilder("核你爆了-5", "boom", 40)
.addItemInput(<cregtech:mode:5>).setChance(0)
.addEnergyPerTickInput(4096)
.addRecipeTooltip("§4爆炸强度§b：§632")
.addFinishHandler(function(event as RecipeFinishEvent) {
    var ctrl=event.controller;
    var w=ctrl.world;
    var d=w.getDimension();
    if(d!=114514){
        Sync.addSyncTask(function(){
            w.performExplosion(null,ctrl.pos.x,ctrl.pos.y,ctrl.pos.z,32.0,false,false);
        });
    }})
.build();

RecipeBuilder.newBuilder("核你爆了-6", "boom", 40)
.addItemInput(<cregtech:mode:6>).setChance(0)
.addEnergyPerTickInput(8192)
.addRecipeTooltip("§4爆炸强度§b：§664")
.addFinishHandler(function(event as RecipeFinishEvent) {
    var ctrl=event.controller;
    var w=ctrl.world;
    var d=w.getDimension();
    if(d!=114514){
        Sync.addSyncTask(function(){
            w.performExplosion(null,ctrl.pos.x,ctrl.pos.y,ctrl.pos.z,64.0,false,false);
        });
    }})
.build();