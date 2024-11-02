//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server
//模型：新星工程：世界服务器  模型使用已获得Kasumi_Nova授权

#loader crafttweaker reloadable

//导包
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

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.Sync;
import mods.modularmachinery.RecipeCheckEvent;

//工作模式-魔力+电产出植魔材料
//输入液态魔力产出基础魔法材料
RecipeBuilder.newBuilder("尘世之门-基础产出1", "alfheim_portal", 100)
.addItemInput(<cregtech:mode:1>).setChance(0)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*72)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<botania:manaresource>*8).setChance(1)
    .addIngredient(<botania:manaresource:1>*8).setChance(1)
    .addIngredient(<botania:manaresource:2>*8).setChance(1)
    .addIngredient(<botania:manaresource:23>*8).setChance(1)
    .build()
)
.build();

RecipeBuilder.newBuilder("尘世之门-基础产出2", "alfheim_portal", 100)
.addItemInput(<cregtech:mode:2>).setChance(0)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*4)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<botania:livingrock>*8).setChance(1)
    .addIngredient(<botania:livingwood>*8).setChance(1)
    .addIngredient(<botania:managlass>*8).setChance(1)
    .build()
)
.build();

//输入液态魔力产出精灵材料
RecipeBuilder.newBuilder("尘世之门-精灵产出1", "alfheim_portal", 100)
.addItemInput(<cregtech:mode:3>).setChance(0)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*144)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<botania:manaresource:7>*8).setChance(1)
    .addIngredient(<botania:manaresource:9>*8).setChance(1)
    .addIngredient(<botania:manaresource:8>*8).setChance(1)
    .build()
)
.build();

RecipeBuilder.newBuilder("尘世之门-精灵产出2", "alfheim_portal", 100)
.addItemInput(<cregtech:mode:4>).setChance(0)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*8)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<botania:shimmerrock>*8).setChance(1)
    .addIngredient(<botania:dreamwood>*8).setChance(1)
    .addIngredient(<botania:elfglass>*8).setChance(1)
    .build()
)
.build();

//共振宝石-尘世之门
RecipeBuilder.newBuilder("尘世之门-共振宝石", "alfheim_portal", 20)
.addItemInput(<astralsorcery:itemcraftingcomponent>*4)
.addEnergyPerTickInput(16384)
.addFluidInput(<liquid:fluidedmana>*120)
.addItemOutput(<astralsorcery:itemcraftingcomponent:4>*4)
.build();

//工作模式-合成蕴魔结晶
RecipeBuilder.newBuilder("尘世之门-蕴魔结晶1", "alfheim_portal", 50)
.addItemInput(<astralsorcery:itemcraftingcomponent:4>)
.addEnergyPerTickInput(16384)
.addFluidInput(<liquid:fluidedmana>*80)
.addItemOutput(<contenttweaker:mana_crystal1>)
.build();

RecipeBuilder.newBuilder("尘世之门-蕴魔结晶2", "alfheim_portal", 50)
.addItemInput(<contenttweaker:mana_crystal1>*2)
.addItemInput(<nuclearcraft:compound:1>*4)
.addEnergyPerTickInput(16384)
.addFluidInput(<liquid:fluidedmana>*300)
.addItemOutput(<contenttweaker:mana_crystal2>)
.build();

RecipeBuilder.newBuilder("尘世之门-蕴魔结晶3", "alfheim_portal", 50)
.addItemInput(<contenttweaker:mana_crystal2>*2)
.addItemInput(<nuclearcraft:compound:1>*8)
.addItemInput(<avaritia:resource:4>*4)
.addEnergyPerTickInput(16384)
.addFluidInput(<liquid:fluidedmana>*800)
.addItemOutput(<contenttweaker:mana_crystal3>)
.build();

//工作模式-绞杀盖亚
RecipeBuilder.newBuilder("尘世之门-盖亚1", "alfheim_portal", 300)
.addItemInput(<botania:manaresource:4>)
.addEnergyPerTickInput(32768)
.addFluidInput(<liquid:fluidedmana>*500)
.addItemOutput(<botania:manaresource:5>*8)
.build();

RecipeBuilder.newBuilder("尘世之门-盖亚2", "alfheim_portal", 300,1)
.addItemInput(<botania:manaresource:14>)
.addEnergyPerTickInput(32768)
.addFluidInput(<liquid:fluidedmana>*1000)
.addItemOutput(<botania:manaresource:5>*16)
.addItemOutput(<extrabotany:rewardbag943>.withTag({weight: 157})*3)
.build();

RecipeBuilder.newBuilder("尘世之门-盖亚3", "alfheim_portal", 300)
.addItemInput(<extrabotany:material:6>)
.addEnergyPerTickInput(32768)
.addFluidInput(<liquid:fluidedmana>*2000)
.addItemOutput(<extrabotany:material:3>)
.addItemOutput(<extrabotany:rewardbag:3>.withTag({weight: 189})*9)
.addItemOutput(<extrabotany:rewardbag:2>.withTag({weight: 113})*9)
.addItemOutput(<extrabotany:rewardbag:1>.withTag({weight: 76})*12)
.addItemOutput(<extrabotany:rewardbag>.withTag({weight: 96})*20)
.build();

//工作模式-魔力转换
RecipeBuilder.newBuilder("尘世之门-魔力钢", "alfheim_portal", 20)
.addItemInput(<thermalfoundation:material:160>*64)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*192)
.addItemOutput(<botania:manaresource>*64)
.build();

RecipeBuilder.newBuilder("尘世之门-魔力珍珠", "alfheim_portal", 20)
.addItemInput(<minecraft:ender_pearl>*64)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*384)
.addItemOutput(<botania:manaresource:1>*64)
.build();

RecipeBuilder.newBuilder("尘世之门-魔力钻石", "alfheim_portal", 20)
.addItemInput(<minecraft:diamond>*64)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*640)
.addItemOutput(<botania:manaresource:2>*64)
.build();

RecipeBuilder.newBuilder("尘世之门-源质钢锭", "alfheim_portal", 20)
.addItemInput(<botania:manaresource>*128)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*32)
.addItemOutput(<botania:manaresource:7>*64)
.build();

RecipeBuilder.newBuilder("尘世之门-精灵尘", "alfheim_portal", 20)
.addItemInput(<botania:manaresource:1>*64)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*32)
.addItemOutput(<botania:manaresource:8>*64)
.build();

RecipeBuilder.newBuilder("尘世之门-龙石", "alfheim_portal", 20)
.addItemInput(<botania:manaresource:2>*64)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*32)
.addItemOutput(<botania:manaresource:9>*64)
.build();

RecipeBuilder.newBuilder("尘世之门-末影合金增强", "alfheim_portal", 20)
.addItemInput(<enderutilities:enderpart>*64)
.addEnergyPerTickInput(8192)
.addFluidInput(<liquid:fluidedmana>*1280)
.addItemOutput(<enderutilities:enderpart:1>*64)
.build();

RecipeBuilder.newBuilder("尘世之门-梦魇燃料", "alfheim_portal", 20)
.addEnergyPerTickInput(8192)
.addItemInput(<minecraft:coal>*64)
.addFluidInput(<liquid:fluidedmana>*128)
.addItemOutput(<extrabotany:nightmarefuel>*64)
.build();

RecipeBuilder.newBuilder("尘世之门-精神碎片", "alfheim_portal", 20)
.addEnergyPerTickInput(8192)
.addItemInput(<extrabotany:nightmarefuel>*64)
.addFluidInput(<liquid:fluidedmana>*200)
.addItemOutput(<extrabotany:material>*64)
.build();

RecipeBuilder.newBuilder("尘世之门-镀金土豆泥", "alfheim_portal", 20)
.addEnergyPerTickInput(8192)
.addItemInput(<minecraft:gold_nugget>*64)
.addItemInput(<minecraft:potato>*64)
.addFluidInput(<liquid:fluidedmana>*400)
.addItemOutput(<extrabotany:gildedmashedpotato>*64)
.build();

RecipeBuilder.newBuilder("尘世之门-奥利哈钢锭", "alfheim_portal", 5,0)
.addEnergyPerTickInput(8192)
.addItemInput(<botania:manaresource:5>*4)
.addItemInput(<extrabotany:material:3>)
.addItemInput(<extrabotany:gildedmashedpotato>)
.addItemInput(<botania:manaresource:14>*2)
.addFluidInput(<liquid:fluidedmana>*1000)
.addItemOutput(<extrabotany:material:1>*1)
.build();

RecipeBuilder.newBuilder("尘世之门-泰拉钢锭", "alfheim_portal", 5)
.addEnergyPerTickInput(8192)
.addItemInput(<botania:manaresource:0>)
.addItemInput(<botania:manaresource:1>)
.addItemInput(<botania:manaresource:2>)
.addFluidInput(<liquid:fluidedmana>*500)
.addItemOutput(<botania:manaresource:4>*1)
.build();

RecipeBuilder.newBuilder("尘世之门-光子锭", "alfheim_portal", 5)
.addEnergyPerTickInput(8192)
.addItemInput(<botania:manaresource:7>)
.addItemInput(<extrabotany:material>*3)
.addItemInput(<extrabotany:gildedmashedpotato>)
.addFluidInput(<liquid:fluidedmana>*4)
.addItemOutput(<extrabotany:material:8>*1)
.build();

RecipeBuilder.newBuilder("尘世之门-暗影锭", "alfheim_portal", 5)
.addEnergyPerTickInput(8192)
.addItemInput(<botania:manaresource:7>)
.addItemInput(<extrabotany:nightmarefuel>*3)
.addItemInput(<extrabotany:gildedmashedpotato>)
.addFluidInput(<liquid:fluidedmana>*4)
.addItemOutput(<extrabotany:material:5>*1)
.build();

//工作模式-面包彩蛋
RecipeBuilder.newBuilder("尘世之门-面包", "alfheim_portal", 160)
.addEnergyPerTickInput(8192)
.addItemInput(<minecraft:bread>)
.addItemOutput(<cropdusting:poop>)
.addRecipeTooltip("§6精灵不喜欢面包！")
.addRecipeTooltip("§d如果你一意孤行，精灵会让你知道他们的§4愤怒！")
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
    var ctrl=event.controller;
    var w=ctrl.world;
    var d=w.getDimension();
    if(d!=114514){
        Sync.addSyncTask(function(){
            w.performExplosion(null,ctrl.pos.x + 0,ctrl.pos.y,ctrl.pos.z + 0,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 0,ctrl.pos.y,ctrl.pos.z + 4,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 0,ctrl.pos.y,ctrl.pos.z + -4,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 0,ctrl.pos.y,ctrl.pos.z + 8,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 0,ctrl.pos.y,ctrl.pos.z + -8,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 4,ctrl.pos.y,ctrl.pos.z + 0,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 4,ctrl.pos.y,ctrl.pos.z + 4,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 4,ctrl.pos.y,ctrl.pos.z + -4,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 4,ctrl.pos.y,ctrl.pos.z + 8,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 4,ctrl.pos.y,ctrl.pos.z + -8,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + -4,ctrl.pos.y,ctrl.pos.z + 0,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + -4,ctrl.pos.y,ctrl.pos.z + 4,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + -4,ctrl.pos.y,ctrl.pos.z + -4,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + -4,ctrl.pos.y,ctrl.pos.z + 8,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + -4,ctrl.pos.y,ctrl.pos.z + -8,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 8,ctrl.pos.y,ctrl.pos.z + 0,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 8,ctrl.pos.y,ctrl.pos.z + 4,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 8,ctrl.pos.y,ctrl.pos.z + -4,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 8,ctrl.pos.y,ctrl.pos.z + 8,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + 8,ctrl.pos.y,ctrl.pos.z + -8,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + -8,ctrl.pos.y,ctrl.pos.z + 0,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + -8,ctrl.pos.y,ctrl.pos.z + 4,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + -8,ctrl.pos.y,ctrl.pos.z + -4,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + -8,ctrl.pos.y,ctrl.pos.z + 8,16.0,false,false);
            w.performExplosion(null,ctrl.pos.x + -8,ctrl.pos.y,ctrl.pos.z + -8,16.0,false,false);
        });
    }})
.build();