//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import crafttweaker.world.IExplosion;
import mods.contenttweaker.Commands;

//ohxihh
var oh as ItemFood = VanillaFactory.createItemFood("ohxihh", 20);

oh.maxStackSize = 64;
oh.creativeTab = <creativetab:misc>;
oh.saturation = 20;
oh.alwaysEdible = true;
oh.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(6000, 4));
        player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(6000, 4));
        player.addPotionEffect(<potion:minecraft:water_breathing>.makePotionEffect(6000, 0));
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(6000,4));
        player.addPotionEffect(<potion:minecraft:health_boost>.makePotionEffect(6000, 99));
        player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(6000, 4));
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(6000, 4));
        player.addPotionEffect(<potion:minecraft:fire_resistance>.makePotionEffect(6000, 0));
        player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(6000, 0));
        player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(6000, 4));
    }
};
oh.register();

//九夏
var jx as ItemFood = VanillaFactory.createItemFood("JiuXia2025", 5);

jx.maxStackSize = 64;
jx.creativeTab = <creativetab:misc>;
jx.saturation = 1;
jx.alwaysEdible = true;
jx.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(400, 3));
        player.addPotionEffect(<potion:minecraft:jump_boost>.makePotionEffect(400, 3));
    }
};
jx.register();

//Sumlotus
var sum as ItemFood = VanillaFactory.createItemFood("Sumlotus", 20);

sum.maxStackSize = 64;
sum.creativeTab = <creativetab:misc>;
sum.saturation = 20;
sum.alwaysEdible = true;
sum.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:instant_damage>.makePotionEffect(600, 251));
    }
};
sum.register();

//芝麻
var zm as ItemFood = VanillaFactory.createItemFood("ZhiXiaoMa", 5);

zm.maxStackSize = 64;
zm.creativeTab = <creativetab:misc>;
zm.saturation = 1;
zm.alwaysEdible = true;
zm.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(400, 1));
        player.addPotionEffect(<potion:minecraft:saturation>.makePotionEffect(100, 1));
    }
};
zm.register();

//xiaoyu
var xiaoyu as ItemFood = VanillaFactory.createItemFood("xiaoyu", 5);

xiaoyu.maxStackSize = 64;
xiaoyu.creativeTab = <creativetab:misc>;
xiaoyu.saturation = 1;
xiaoyu.alwaysEdible = true;
xiaoyu.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(400, 1));
        player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(400, 1));
    }
};
xiaoyu.register();

//ximen
var ximen as ItemFood = VanillaFactory.createItemFood("ximen", 5);

ximen.maxStackSize = 64;
ximen.creativeTab = <creativetab:misc>;
ximen.saturation = 1;
ximen.alwaysEdible = true;
ximen.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(400, 1));
        player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(400, 0));
    }
};
ximen.register();

//chengzhenjie
var chengzhenjie as ItemFood = VanillaFactory.createItemFood("chengzhenjie", 10);

chengzhenjie.maxStackSize = 64;
chengzhenjie.creativeTab = <creativetab:misc>;
chengzhenjie.saturation = 1;
chengzhenjie.alwaysEdible = true;
chengzhenjie.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(2400, 2));
        player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(2400, 2));
        player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(2400, 0));
    }
};
chengzhenjie.register();

//shadow_zl
var shadow_zl as ItemFood = VanillaFactory.createItemFood("shadow_zl", 5);

shadow_zl.maxStackSize = 64;
shadow_zl.creativeTab = <creativetab:misc>;
shadow_zl.saturation = 1;
shadow_zl.alwaysEdible = true;
shadow_zl.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:health_boost>.makePotionEffect(400, 1));
        player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(400, 1));
    }
};
shadow_zl.register();

//capsh
var capsh as ItemFood = VanillaFactory.createItemFood("capsh", 5);

capsh.maxStackSize = 64;
capsh.creativeTab = <creativetab:misc>;
capsh.saturation = 1;
capsh.alwaysEdible = true;
capsh.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(400, 1));
        player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(400, 0));
    }
};
capsh.register();

//末一
var moyi as ItemFood = VanillaFactory.createItemFood("moyi", 5);

moyi.maxStackSize = 64;
moyi.creativeTab = <creativetab:misc>;
moyi.saturation = 1;
moyi.alwaysEdible = true;
moyi.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(400, 1));
        player.addPotionEffect(<potion:quark:curse>.makePotionEffect(400, 0));
    }
};
moyi.register();

//Oganesson897
var og as ItemFood = VanillaFactory.createItemFood("oganesson897", 5);

og.maxStackSize = 64;
og.saturation = 1;
og.alwaysEdible = true;
og.rarity = "RARE";
og.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        world.performExplosion(player, player.x, player.y, player.z, 200.0, false, false);
    }
};
og.register();

//XB_Asuna
var xb as ItemFood = VanillaFactory.createItemFood("xb_asuna", 5);

xb.maxStackSize = 64;
xb.creativeTab = <creativetab:misc>;
xb.saturation = 1;
xb.alwaysEdible = true;
xb.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:xaerominimap:no_minimap_harmful>.makePotionEffect(400, 0));
        player.addPotionEffect(<potion:xaeroworldmap:no_world_map_harmful>.makePotionEffect(400, 0));
    }
};
xb.register();

//ionite
var ionite as ItemFood = VanillaFactory.createItemFood("ionite", 5);

ionite.maxStackSize = 64;
ionite.creativeTab = <creativetab:misc>;
ionite.saturation = 1;
ionite.alwaysEdible = true;
ionite.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:luck>.makePotionEffect(400, 0));
        player.addPotionEffect(<potion:quark:danger_sight>.makePotionEffect(400, 0));
    }
};
ionite.register();

//ibicir
var ibicir as ItemFood = VanillaFactory.createItemFood("ibicir", 5);

ibicir.maxStackSize = 64;
ibicir.creativeTab = <creativetab:misc>;
ibicir.saturation = 1;
ibicir.alwaysEdible = true;
ibicir.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(1200, 0));
        player.addPotionEffect(<potion:bloodmagic:soul_fray>.makePotionEffect(1200, 0));
    }
};
ibicir.register();

//Loaf_Hime
var loaf_hime as ItemFood = VanillaFactory.createItemFood("loaf_hime", 5);

loaf_hime.maxStackSize = 64;
loaf_hime.creativeTab = <creativetab:misc>;
loaf_hime.saturation = 1;
loaf_hime.alwaysEdible = true;
loaf_hime.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 1));
    }
};
loaf_hime.register();

//InkAndSoul
var inkandsoul as ItemFood = VanillaFactory.createItemFood("inkandsoul", 5);

inkandsoul.maxStackSize = 64;
inkandsoul.creativeTab = <creativetab:misc>;
inkandsoul.saturation = 1;
inkandsoul.alwaysEdible = true;
inkandsoul.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(200, 1));
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(400, 0));
    }
};
inkandsoul.register();

//quicktel
var quicktel as ItemFood = VanillaFactory.createItemFood("quicktel", 5);

quicktel.maxStackSize = 64;
quicktel.creativeTab = <creativetab:misc>;
quicktel.saturation = 1;
quicktel.alwaysEdible = true;
quicktel.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(1200, 1));
        player.addPotionEffect(<potion:minecraft:saturation>.makePotionEffect(20, 99));
    }
};
quicktel.register();

//Kasumi_Nova
var kasumi_nova as ItemFood = VanillaFactory.createItemFood("kasumi_nova", 5);

kasumi_nova.maxStackSize = 64;
kasumi_nova.creativeTab = <creativetab:misc>;
kasumi_nova.saturation = 1;
kasumi_nova.alwaysEdible = true;
kasumi_nova.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        Commands.call("/tell @p 小nova：来玩新星工程，来玩新星工程谢谢喵~", player, world);
        player.addPotionEffect(<potion:minecraft:saturation>.makePotionEffect(20, 99));
    }
};
kasumi_nova.register();

//xian_bei
var xian_bei as ItemFood = VanillaFactory.createItemFood("xian_bei", 5);

xian_bei.maxStackSize = 64;
xian_bei.creativeTab = <creativetab:misc>;
xian_bei.saturation = 1;
xian_bei.alwaysEdible = true;
xian_bei.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(2280, 3));
        player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(10280, 0));
    }
};
xian_bei.register();

//Clouly
var clouly as ItemFood = VanillaFactory.createItemFood("clouly", 5);

clouly.maxStackSize = 64;
clouly.creativeTab = <creativetab:misc>;
clouly.saturation = 1;
clouly.alwaysEdible = true;
clouly.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:bloodmagic:flight>.makePotionEffect(600, 1));
    }
};
clouly.register();

//Tyumen
var tyumen as ItemFood = VanillaFactory.createItemFood("tyumen", 5);

tyumen.maxStackSize = 64;
tyumen.creativeTab = <creativetab:misc>;
tyumen.saturation = 1;
tyumen.alwaysEdible = true;
tyumen.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(400, 1));
        player.addPotionEffect(<potion:minecraft:saturation>.makePotionEffect(100, 1));
    }
};
tyumen.register();

//老婆饼
var pastry as ItemFood = VanillaFactory.createItemFood("pastry", 5);

pastry.maxStackSize = 64;
pastry.creativeTab = <creativetab:misc>;
pastry.saturation = 1;
pastry.alwaysEdible = true;
pastry.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:fire_resistance>.makePotionEffect(1200, 0));
        player.addPotionEffect(<potion:minecraft:saturation>.makePotionEffect(100, 0));
    }
};
pastry.register();

//充能柚子
var bat as ItemFood = VanillaFactory.createItemFood("bat", 5);

bat.maxStackSize = 64;
bat.creativeTab = <creativetab:misc>;
bat.saturation = 1;
bat.alwaysEdible = true;
bat.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:ebwizardry:paralysis>.makePotionEffect(200, 0));
    }
};
bat.register();

//发酵混合物
var fermentation_mixture as ItemFood = VanillaFactory.createItemFood("fermentation_mixture", 1);

fermentation_mixture.maxStackSize = 64;
fermentation_mixture.creativeTab = <creativetab:misc>;
fermentation_mixture.saturation = 1;
fermentation_mixture.alwaysEdible = true;
fermentation_mixture.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(300, 0));
    }
};
fermentation_mixture.register();