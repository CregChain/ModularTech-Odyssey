//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import mods.modularmachinery.MachineModifier;

//========================================自然祭坛========================================
//贪食花
RecipeBuilder.newBuilder("kekimurus", "nature_altar", 200)
.addItemInput(<botania:specialflower>.withTag({type: "kekimurus"})).setChance(0)
.addItemInput(<ore:cake>)
.addManaPerTickOutput(80)
.build();

//热爆花
RecipeBuilder.newBuilder("entropinnyum", "nature_altar", 40)
.addItemInput(<contenttweaker:entropinnyum>).setChance(0)
.addItemInput(<minecraft:tnt>)
.addManaPerTickOutput(180)
.build();

//全知瑾
RecipeBuilder.newBuilder("omniviolet", "nature_altar", 40)
.addItemInput(<botania:specialflower>.withTag({type: "omniviolet"})).setChance(0)
.addItemInput(<minecraft:book>)
.addManaPerTickOutput(100)
.build();

//风铃花
RecipeBuilder.newBuilder("bellflower", "nature_altar", 400)
.addItemInput(<botania:specialflower>.withTag({type: "bellflower"})).setChance(0.1)
.setAltitude(200, 256)
.addManaPerTickOutput(80)
.build();

//========================================星光祭坛========================================
//雪绒花
RecipeBuilder.newBuilder("edelweiss", "star_altar", 40)
.addStarlightInput(1200)
.addItemInput(<botania:specialflower>.withTag({type: "edelweiss"})).setChance(0)
.addItemInput(<forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000})).setChance(0)
.addItemInput(<minecraft:pumpkin>*4)
.addManaPerTickOutput(160)
.build();

//勿落草
RecipeBuilder.newBuilder("shulk_me_not", "star_altar", 600)
.addStarlightInput(1200)
.addItemInput(<botania:specialflower>.withTag({type: "shulk_me_not"})).setChance(0)
.addItemInput(<extrabotany:cocoondesire>*2).setChance(0)
.addItemInput(<minecraft:chorus_fruit>*2)
.addManaOutput(100000)
.build();

//贪食花
RecipeBuilder.newBuilder("kekimurus_star", "star_altar", 120)
.addStarlightInput(4800)
.addItemInput(<botania:specialflower>.withTag({type: "kekimurus"})).setChance(0)
.addItemInput(<minecraft:pumpkin>)
.addManaPerTickOutput(160)
.build();

//热爆花
RecipeBuilder.newBuilder("entropinnyum_star", "star_altar", 40)
.addStarlightInput(4800)
.addItemInput(<contenttweaker:entropinnyum>).setChance(0)
.addItemInput(<minecraft:sand>*5)
.addItemInput(<minecraft:gunpowder>*4)
.addManaPerTickOutput(200)
.build();