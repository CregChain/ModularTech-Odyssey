//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.astralsorcery.Altar;

//活石
mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
mods.botania.PureDaisy.addRecipe(<astralsorcery:blockmarble>, <botania:livingrock>);

//活木
mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
mods.botania.PureDaisy.addRecipe(<astralsorcery:blockinfusedwood>, <botania:livingwood>);

//蕴魔土
recipes.addShapeless(<botania:enchantedsoil>, [<botania:overgrowthseed>,<minecraft:grass>]);

//魔力转换器
recipes.remove(<botania:rfgenerator>);
recipes.addShaped(<botania:rfgenerator>, [[<mekanism:reinforcedplasticblock:15>, <minecraft:redstone_block>, <mekanism:reinforcedplasticblock:15>],[<minecraft:redstone_block>, <tconevo:metal_block:7>, <minecraft:redstone_block>], [<mekanism:reinforcedplasticblock:15>, <minecraft:redstone_block>, <mekanism:reinforcedplasticblock:15>]]);

//FE转换器
recipes.remove(<extrabotany:managenerator>);
recipes.addShaped(<extrabotany:managenerator>, [[<mekanism:reinforcedplasticblock:15>, <avaritia:block_resource>, <mekanism:reinforcedplasticblock:15>],[<avaritia:block_resource>, <extrabotany:material:1>, <avaritia:block_resource>], [<mekanism:reinforcedplasticblock:15>, <avaritia:block_resource>, <mekanism:reinforcedplasticblock:15>]]);

//无尽块转换泥土
mods.botania.PureDaisy.addRecipe(<avaritia:block_resource:1>,<minecraft:dirt>);

//金块转换粪土
mods.botania.PureDaisy.addRecipe(<minecraft:gold_block>,<cropdusting:fertile_dirt>);

//超频透镜
recipes.addShaped(<gugu-utils:lensoverclocking>, [[null, <extrabotany:specialbag>, null],[<extrabotany:specialbag>, <botania:lens:0>, <extrabotany:specialbag>], [null, <extrabotany:specialbag>, null]]);

//手掌花
mods.botania.Apothecary.removeRecipe("rannuncarpus");

//聚宝花
mods.botania.Apothecary.removeRecipe("loonium");
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "loonium"}), [<botania:rune:14>,<botania:rune:10>,<botania:rune:12>,<ancientspellcraft:astral_diamond_charged>,<ore:petalGray>,<ore:petalGreen>,<ore:petalGreen>,<ore:petalGreen>,<ore:petalGreen>,<botania:manaresource:6>,<botania:manaresource:8>]);

//叮当舞
mods.botania.Apothecary.removeRecipe("tinkle");
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "tinkle"}), [<botania:rune:0>,<botania:rune:2>,<botania:rune:12>,<botania:rune:15>,<contenttweaker:mana_crystal1>,<extrabotany:material>,<extrabotany:material>,<deepmoblearning:living_matter_extraterrestrial>]);

//热爆花
mods.botania.Apothecary.removeRecipe("entropinnyum");
mods.botania.Apothecary.addRecipe(<contenttweaker:entropinnyum>, [<botania:petal:14>,<botania:petal:14>,<botania:petal:7>,<botania:petal:7>,<botania:petal>,<botania:petal>,<botania:rune:1>,<botania:rune:13>]);

//柚子
mods.botania.Apothecary.addRecipe(<harvestcraft:grapefruititem>, [<minecraft:golden_apple>,<ore:dyeYellow>,<ore:dyeYellow>]);

//彩虹花瓣
mods.botania.Apothecary.addRecipe(<contenttweaker:rainbow_petal>, [<botania:petal:0>,<botania:petal:1>,<botania:petal:2>,<botania:petal:3>,<botania:petal:4>,<botania:petal:5>,<botania:petal:6>,<botania:petal:7>,<botania:petal:8>,<botania:petal:9>,<botania:petal:10>,<botania:petal:11>,<botania:petal:12>,<botania:petal:13>,<botania:petal:14>,<botania:petal:15>]);

//微光活木
recipes.remove(<botania:livingwood:5>);
recipes.addShaped(<botania:livingwood:5> * 3, [[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],[<minecraft:glowstone>, <embers:glimmer_shard>, <minecraft:glowstone>], [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);

//花药台
recipes.remove(<botania:altar>);
mods.astralsorcery.Altar.addAttunementAltarRecipe("ohxihh:shaped/internal/altar/huayaotai", <botania:altar>, 1500, 300, [
	//1-9
	<environmentaltech:erodium_crystal>, <astralsorcery:itemcraftingcomponent:3>, <environmentaltech:erodium_crystal>,
	<ore:blockMarble>, <contenttweaker:starstone>, <ore:blockMarble>,
	<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>,
	//10-13
	<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:2>]);

//魔力钢
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>,<ore:ingotSteel>, 3000);
mods.botania.ManaInfusion.addInfusion(<botania:storage>,<ore:blockSteel>, 27000);

//盖亚魂锭
recipes.remove(<botania:manaresource:14>);
recipes.addShaped(<botania:manaresource:14>, [[<botania:manaresource:5>, <astralsorcery:itemcraftingcomponent:4>, <botania:manaresource:5>],[<environmentaltech:kyronite_crystal>, <botania:manaresource:4>, <environmentaltech:kyronite_crystal>], [<botania:manaresource:5>, <astralsorcery:itemcraftingcomponent:4>, <botania:manaresource:5>]]);

//奥利哈钢
mods.botania.RuneAltar.removeRecipe(<extrabotany:material:1>);

//水晶花(自定义)
mods.botania.Apothecary.addRecipe(<contenttweaker:crystal_flower>, [<botania:rune:8>,<botania:rune:10>,<botania:rune:11>,<botania:rune:12>,<botania:rune:13>,<botania:rune:14>,<botania:rune:15>,<contenttweaker:mana_crystal2>,<contenttweaker:mana_crystal2>,<contenttweaker:mana_crystal2>,<contenttweaker:mana_crystal2>]);

//风铃花
mods.botania.Apothecary.removeRecipe("bellflower");
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "bellflower"}), [<extrabotany:material>,<ore:petalYellow>,<ore:petalYellow>,<botania:petal:5>,<botania:petal:5>,<botania:rune:3>]);

//哥布林杀手套
recipes.remove(<extrabotany:goblinslayerhelm>);
recipes.remove(<extrabotany:goblinslayerchest>);
recipes.remove(<extrabotany:goblinslayerlegs>);
recipes.remove(<extrabotany:goblinslayerboots>);
recipes.addShaped(<extrabotany:goblinslayerlegs>, [[<extrabotany:material:8>, <extrabotany:material:8>, <extrabotany:material:8>],[<extrabotany:material:8>, <botania:terrasteellegs>, <extrabotany:material:8>], [<extrabotany:material:8>, <extrabotany:material:1>, <extrabotany:material:8>]]);
recipes.addShaped(<extrabotany:goblinslayerchest>, [[<extrabotany:material:8>, <extrabotany:material:1>, <extrabotany:material:8>],[<extrabotany:material:8>, <botania:terrasteelchest>, <extrabotany:material:8>], [<extrabotany:material:8>, <extrabotany:material:8>, <extrabotany:material:8>]]);
recipes.addShaped(<extrabotany:goblinslayerhelm>, [[<extrabotany:material:8>, <extrabotany:material:8>, <extrabotany:material:8>],[<extrabotany:material:8>, <botania:terrasteelhelm>, <extrabotany:material:8>], [null, <extrabotany:material:1>, null]]);
recipes.addShaped(<extrabotany:goblinslayerboots>, [[<extrabotany:material:8>, <extrabotany:material:1>, <extrabotany:material:8>],[<extrabotany:material:8>, <botania:terrasteelboots>, <extrabotany:material:8>], [null, null, null]]);


//暗影武士套
recipes.remove(<extrabotany:shadowwarriorhelm>);
recipes.remove(<extrabotany:shadowwarriorchest>);
recipes.remove(<extrabotany:shadowwarriorlegs>);
recipes.remove(<extrabotany:shadowwarriorboots>);
recipes.addShaped(<extrabotany:shadowwarriorhelm>, [[<extrabotany:material:5>, <extrabotany:material:5>, <extrabotany:material:5>],[<extrabotany:material:5>, <botania:terrasteelhelm>, <extrabotany:material:5>], [null, <extrabotany:material:1>, null]]);
recipes.addShaped(<extrabotany:shadowwarriorchest>, [[<extrabotany:material:5>, <extrabotany:material:1>, <extrabotany:material:5>],[<extrabotany:material:5>, <botania:terrasteelchest>, <extrabotany:material:5>], [<extrabotany:material:5>, <extrabotany:material:5>, <extrabotany:material:5>]]);
recipes.addShaped(<extrabotany:shadowwarriorlegs>, [[<extrabotany:material:5>, <extrabotany:material:5>, <extrabotany:material:5>],[<extrabotany:material:5>, <botania:terrasteellegs>, <extrabotany:material:5>], [<extrabotany:material:5>, <extrabotany:material:1>, <extrabotany:material:5>]]);
recipes.addShaped(<extrabotany:shadowwarriorboots>, [[<extrabotany:material:5>, <extrabotany:material:1>, <extrabotany:material:5>],[<extrabotany:material:5>, <botania:terrasteelboots>, <extrabotany:material:5>], [null, null, null]]);

//女仆套
recipes.remove(<extrabotany:combatmaidhelm>);
recipes.remove(<extrabotany:combatmaidchest>);
recipes.remove(<extrabotany:combatmaidlegs>);
recipes.remove(<extrabotany:combatmaidboots>);

mods.botania.RuneAltar.addRecipe(<extrabotany:combatmaidhelm>, [<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:shadowwarriorhelm>,<extrabotany:goblinslayerhelm>,<extrabotany:material:1>,<extrabotany:material:1>,<extrabotany:material:1>],1000000);
mods.botania.RuneAltar.addRecipe(<extrabotany:combatmaidchest>, [<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:shadowwarriorchest>,<extrabotany:goblinslayerchest>,<extrabotany:material:1>,<extrabotany:material:1>,<extrabotany:material:1>],1000000);
mods.botania.RuneAltar.addRecipe(<extrabotany:combatmaidlegs>, [<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:shadowwarriorlegs>,<extrabotany:goblinslayerlegs>,<extrabotany:material:1>,<extrabotany:material:1>,<extrabotany:material:1>],1000000);
mods.botania.RuneAltar.addRecipe(<extrabotany:combatmaidboots>, [<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:material:7>,<extrabotany:shadowwarriorboots>,<extrabotany:goblinslayerboots>,<extrabotany:material:1>,<extrabotany:material:1>,<extrabotany:material:1>],1000000);