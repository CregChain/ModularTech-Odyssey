//This ZenScript is created by ohxihh,Creg_Chain and xian_bei
//Without the permission of ohxihh,Creg_Chain and xian_bei, you can't publish this script or apply it to your modpack or server

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
import crafttweaker.world.IBlockPos;

import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.RecipeModifier;

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.IngredientArrayBuilder;

//========================================工业蒸汽机========================================
//转子增幅
/*
$expand RecipePrimer$addDamageItemInput(item as IItemStack,reduceDamage as int=1,hight as int=1)as RecipePrimer{
    this.addItemInput(item.anyDamage()).setChance(0);
    this.addStartHandler(function(event as mods.modularmachinery.RecipeStartEvent){
        val ctrl=event.controller;
        val pos=ctrl.pos;
        val w=ctrl.world;
        val inputPos=crafttweaker.world.IBlockPos.create(pos.x,pos.y + hight,pos.z);
        val itemHandler=w.getItemHandler(inputPos);
        for slot in 0 to itemHandler.size{
            if(!isNull(itemHandler.getStackInSlot(slot))){
                var slotItem=itemHandler.getStackInSlot(slot);
                if(slotItem.definition.id == item.definition.id){
                    val damage=slotItem.damage;
                    val maxDamage=item.maxDamage;
                    val newDamage=damage + reduceDamage;
                    if(newDamage < maxDamage){
                        itemHandler.setStackInSlot(slot,slotItem.withDamage(newDamage));
                    }else itemHandler.setStackInSlot(slot,null);
                    break;
                }
            }
        }
    });
    this.addRecipeTooltip("此配方将会消耗"~item.displayName~reduceDamage~"点耐久，耐久为0将会消耗物品！");
    return this;
}
$expand RecipePrimer$addDamageCatalystInput(item as IItemStack,tooltips as string[],modifiers as RecipeModifier[],reduceDamage as int=1,hight as int=1)as RecipePrimer{
    this.addCatalystInput(item.anyDamage(),tooltips,modifiers).setChance(0);
    this.addStartHandler(function(event as mods.modularmachinery.RecipeStartEvent){
        val ctrl=event.controller;
        val pos=ctrl.pos;
        val w=ctrl.world;
        val inputPos=crafttweaker.world.IBlockPos.create(pos.x,pos.y + hight,pos.z);
        val itemHandler=w.getItemHandler(inputPos);
        for slot in 0 to itemHandler.size{
            if(!isNull(itemHandler.getStackInSlot(slot))){
                var slotItem=itemHandler.getStackInSlot(slot);
                if(slotItem.definition.id == item.definition.id){
                    val damage=slotItem.damage;
                    val maxDamage=item.maxDamage;
                    val newDamage=damage + reduceDamage;
                    if(newDamage < maxDamage){
                        itemHandler.setStackInSlot(slot,slotItem.withDamage(newDamage));
                    }else itemHandler.setStackInSlot(slot,null);
                    break;
                }
            }
        }
    });
    this.addRecipeTooltip("此配方将会消耗"~item.displayName~reduceDamage~"点耐久，耐久为0将会消耗物品！");
    return this;
}
*/

$expand RecipePrimer$addDamageCatalystInput(item as IItemStack,tooltips as string[],modifiers as RecipeModifier[],reduceDamage as int=1,hight as int=1)as RecipePrimer{
    this.addCatalystInput(item.anyDamage(),tooltips,modifiers).setChance(0);
    this.addStartHandler(function(event as mods.modularmachinery.RecipeStartEvent){
        val ctrl=event.controller;
        val pos=ctrl.pos;
        val w=ctrl.world;
        var facing=ctrl.facing.name;
        var inputPos as IBlockPos=pos;
        if(facing has "WEST"){
            inputPos=crafttweaker.world.IBlockPos.create(pos.x,pos.y,pos.z + 1);
        }
        if(facing has "EAST"){
            inputPos=crafttweaker.world.IBlockPos.create(pos.x,pos.y,pos.z + -1);
        }
        if(facing has "NORTH"){
            inputPos=crafttweaker.world.IBlockPos.create(pos.x + -1,pos.y,pos.z);
        }
        if(facing has "SOUTH"){
            inputPos=crafttweaker.world.IBlockPos.create(pos.x + 1,pos.y,pos.z);
        }
        val itemHandler=w.getItemHandler(inputPos);
        for slot in 0 to itemHandler.size{
            if(!isNull(itemHandler.getStackInSlot(slot))){
                var slotItem=itemHandler.getStackInSlot(slot);
                if(slotItem.definition.id == item.definition.id){
                    val damage=slotItem.damage;
                    val maxDamage=item.maxDamage;
                    val newDamage=damage + reduceDamage;
                    if(newDamage < maxDamage){
                        itemHandler.setStackInSlot(slot,slotItem.withDamage(newDamage));
                    }else itemHandler.setStackInSlot(slot,null);
                    break;
                }
            }
        }
    });
    this.addRecipeTooltip("此配方将会消耗"~item.displayName~reduceDamage~"点耐久，耐久为0将会消耗物品！");
    return this;
}

RecipeBuilder.newBuilder("蒸汽发电","industrial_steam_turbine", 10)
.addFluidInput(<liquid:steam>*9600)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，蒸汽消耗系数70%，能源产出系数90%"], //1.29
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 0.9, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:fluid", "input", 0.7, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，蒸汽消耗系数80%，能源产出系数110%"], //1.38
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:fluid", "input", 0.8, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，蒸汽消耗系数85%，能源产出系数120%"], //1.41
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:fluid", "input", 0.85, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，蒸汽消耗系数95%，能源产出系数140%"], //1.47
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:fluid", "input", 0.95, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，蒸汽消耗系数110%，能源产出系数165%"], //1.5
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.65, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:fluid", "input", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，蒸汽消耗系数125%，能源产出系数195%"], //1.56
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.95, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:fluid", "input", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，蒸汽消耗系数150%，能源产出系数240%"], //1.6
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 2.4, 1, false).build(),
    RecipeModifierBuilder.create("modularmachinery:fluid", "input", 1.5, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(6636)
.build();

/*$expand IBlockPos$create(x as int,y as int,z as int)as IBlockPos{
    return IBlockPos.create(this.x + x,this.y + y,this.z + z);
}

$expand IBlockPos$createPosByFacing(facing as IFacing,NorthX as int,NorthY as int,NorthZ as int)as IBlockPos{
    val fN=facing.name;
    val x=NorthX;
    val y=NorthY;
    val z=NorthZ;
    if(fN == "NORTH")return this.create(x,y,z);
    if(fN == "SOUTH")return this.create(0-x,y,0-z);
    if(fN == "EAST")return this.create(0-z,y,x);
    if(fN == "WEST")return this.create(z,y,0-x);
    if(fN == "UP")return this.create(x,0-z,y);
    if(fN == "DOWN")return this.create(x,z,y);
    return this;
}

$expand RecipePrimer$addDamageItem(item as IItemStack,reduceDamage as int=1,xyz as int[]=[0,1,0])as RecipePrimer{
    this.addStartHandler(function(event as RecipeStartEvent){
        val x=xyz[0];
        val y=xyz[1];
        val z=xyz[2];
        val ctrl=event.controller;
        val ctrlPos=ctrl.pos;
        val w=ctrl.world;
        val ctrlFacing=ctrl.facing;
        val inputPos as IBlockPos=ctrlPos.createPosByFacing(ctrlFacing,x,y,z);
        val itemHandler=w.getItemHandler(inputPos);
        for slot in 0 to itemHandler.size{
            if(!isNull(itemHandler.getStackInSlot(slot))){
                var slotItem=itemHandler.getStackInSlot(slot);
                if(slotItem.definition.id == item.definition.id){
                    val damage=slotItem.damage;
                    val maxDamage=item.maxDamage;
                    val newDamage=damage + reduceDamage;
                    if(newDamage < maxDamage){
                        itemHandler.setStackInSlot(slot,slotItem.withDamage(newDamage));
                    }else itemHandler.setStackInSlot(slot,null);
                    break;
                }
            }
        }
    });
    return this;
}

$expand RecipePrimer$addDamageItemInput(item as IItemStack,reduceDamage as int=1,xyz as int[]=[0,1,0])as RecipePrimer{
    this.addItemInput(item.anyDamage()).setChance(0);
    this.addDamageItem(item,reduceDamage,xyz);
    this.addRecipeTooltip("§b此配方将会消耗§a"~item.displayName~"§e"~reduceDamage~"§b点耐久，耐久为§e0§b将会消耗物品！§r");
    return this;
}

$expand RecipePrimer$addDamageCatalystInput(item as IItemStack,tooltips as string[],modifiers as RecipeModifier[],reduceDamage as int=1,xyz as int[]=[0,1,0])as RecipePrimer{
    this.addCatalystInput(item.anyDamage(),tooltips,modifiers).setChance(0);
    this.addDamageItem(item,reduceDamage,xyz);
    this.addRecipeTooltip("§b此配方将会消耗§a"~item.displayName~"§e"~reduceDamage~"§b点耐久，耐久为§e0§b将会消耗物品！§r");
    return this;
}

.addDamageItemInput(<minecraft:diamond_sword>输入物品,1消耗耐久,[1,2,3]xyz)
//xyz写机器输入仓在结构文件的xyz，机器只能有一个输入仓
*/

//========================================不锈钢燃气涡轮========================================
RecipeBuilder.newBuilder("Hydrogen","stainless_steel_gas_turbine",20)
.addFluidInput(<liquid:hydrogen>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(4000)
.build();

RecipeBuilder.newBuilder("Carbon_monoxide","stainless_steel_gas_turbine",20)
.addFluidInput(<liquid:carbon_monoxide>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(4800)
.build();

RecipeBuilder.newBuilder("wood_gas","stainless_steel_gas_turbine",20)
.addFluidInput(<liquid:wood_gas>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(4800)
.build();

RecipeBuilder.newBuilder("Biogas","stainless_steel_gas_turbine",20)
.addFluidInput(<liquid:biogas>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(8000)
.build();

RecipeBuilder.newBuilder("sulfuric_gas","stainless_steel_gas_turbine",20)
.addFluidInput(<liquid:sulfuric_gas>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(5000)
.build();

RecipeBuilder.newBuilder("sulfuric_naphtha","stainless_steel_gas_turbine",20)
.addFluidInput(<liquid:sulfuric_naphtha>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(5000)
.build();

RecipeBuilder.newBuilder("methane","stainless_steel_gas_turbine",20)
.addFluidInput(<liquid:methane>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(20800)
.build();

RecipeBuilder.newBuilder("Ethylene","stainless_steel_gas_turbine",20)
.addFluidInput(<liquid:ethylene>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(25600)
.build();


RecipeBuilder.newBuilder("Refinery_gas","stainless_steel_gas_turbine",20)
.addFluidInput(<liquid:refinery_gas>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(32000)
.build();

RecipeBuilder.newBuilder("Propene","stainless_steel_gas_turbine",20)
.addFluidInput(<liquid:propene>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(38400)
.build();

RecipeBuilder.newBuilder("Phenol","stainless_steel_gas_turbine",30)
.addFluidInput(<liquid:phenol>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(38400)
.build();

RecipeBuilder.newBuilder("Naphtha","stainless_steel_gas_turbine",30)
.addFluidInput(<liquid:naphtha>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(42000)
.build();

RecipeBuilder.newBuilder("LPG","stainless_steel_gas_turbine",30)
.addFluidInput(<liquid:lpg>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(42000)
.build();

RecipeBuilder.newBuilder("Toluene_liquid","stainless_steel_gas_turbine",30)
.addFluidInput(<liquid:toluene_liquid>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(43700)
.build();

RecipeBuilder.newBuilder("Benzene","stainless_steel_gas_turbine",30)
.addFluidInput(<liquid:benzene>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(48000)
.build();

RecipeBuilder.newBuilder("Nitrobenzene","stainless_steel_gas_turbine",80)
.addFluidInput(<liquid:nitrobenzene>*1000)
.addDamageCatalystInput(<contenttweaker:steel_rotor>,//钢转子
["耐久值2400，能源产出系数105%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.05, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:aluminium_rotor>,//铝转子
["耐久值1800，能源产出系数110%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.1, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:chrome_rotor>,//铬转子
["耐久值3600，能源产出系数115%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.15, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:stainless_steel_rotor>,//不锈钢转子
["耐久值4800，能源产出系数120%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.2, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:titanium_rotor>,//钛转子
["耐久值6000，能源产出系数125%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.25, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungsten_rotor>,//钨转子
["耐久值7200，能源产出系数130%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.3, 1, false).build()
]
)
.addDamageCatalystInput(<contenttweaker:tungstensteel_rotor>,//钨钢转子
["耐久值9600，能源产出系数135%"],
[
    RecipeModifierBuilder.create("modularmachinery:energy", "output", 1.35, 1, false).build()
]
)
.addRecipeTooltip("§b涡轮同时只能安装一个转子!")
.addEnergyPerTickOutput(80000)
.build();
