//本脚本由ohxihh创建
//未经ohxihh允许，任何人不允许发布修改过的脚本或将其应用于你的整合包或服务器

#loader crafttweaker reloadable

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.IngredientArrayBuilder;

//========================================生物模型装配间========================================
//骷髅模型
RecipeBuilder.newBuilder("骷髅模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:skull>*16)
.addItemInput(<minecraft:bone>*64)
.addItemInput(<minecraft:arrow>*64)
.addFluidInput(<liquid:ender_distillation> * 16000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_skeleton>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_skeleton>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_skeleton>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_skeleton>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_skeleton>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//僵尸模型
RecipeBuilder.newBuilder("僵尸模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:skull:2>*16)
.addItemInput(<minecraft:rotten_flesh>*64)
.addItemInput(<tconstruct:edible:10>*64)
.addItemInput(<minecraft:potato>*64)
.addItemInput(<minecraft:carrot>*64)
.addFluidInput(<liquid:ender_distillation> * 16000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_zombie>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_zombie>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_zombie>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_zombie>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_zombie>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//爬行者模型
RecipeBuilder.newBuilder("爬行者模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:skull:4>*16)
.addItemInput(<minecraft:gunpowder>*64)
.addFluidInput(<liquid:ender_distillation> * 16000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_creeper>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_creeper>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_creeper>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_creeper>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_creeper>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//蜘蛛模型
RecipeBuilder.newBuilder("蜘蛛模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:string>*64)
.addItemInput(<minecraft:web>*16)
.addItemInput(<minecraft:spider_eye>*64)
.addFluidInput(<liquid:ender_distillation> * 16000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_spider>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_spider>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_spider>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_spider>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_spider>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//史莱姆模型
RecipeBuilder.newBuilder("史莱姆模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*2)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:slime_ball>*64)
.addItemInput(<deepmoblearning:living_matter_overworldian>*32)
.addFluidInput(<liquid:ender_distillation> * 32000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_slime>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_slime>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_slime>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_slime>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_slime>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//蓝色史莱姆模型
RecipeBuilder.newBuilder("蓝色史莱姆模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*2)
.addEnergyPerTickInput(16384)
.addItemInput(<tconstruct:edible:1>*64)
.addItemInput(<tconstruct:edible:2>*64)
.addItemInput(<tconstruct:edible:3>*64)
.addItemInput(<deepmoblearning:living_matter_overworldian>*32)
.addFluidInput(<liquid:ender_distillation> * 32000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_tinker_slime>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_tinker_slime>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_tinker_slime>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_tinker_slime>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_tinker_slime>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//女巫模型
RecipeBuilder.newBuilder("女巫模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*4)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:redstone_block>*64)
.addItemInput(<minecraft:glowstone>*64)
.addItemInput(<quark:sugar_block>*64)
.addItemInput(<deepmoblearning:living_matter_overworldian>*64)
.addFluidInput(<liquid:ender_distillation> * 64000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_witch>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_witch>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_witch>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_witch>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_witch>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//守卫者模型
RecipeBuilder.newBuilder("守卫者模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*4)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:prismarine_shard>*64)
.addItemInput(<minecraft:prismarine_crystals>*64)
.addItemInput(<minecraft:fish:1>*64)
.addItemInput(<minecraft:fish>*64)
.addItemInput(<deepmoblearning:living_matter_overworldian>*64)
.addFluidInput(<liquid:ender_distillation> * 64000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_guardian>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_guardian>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_guardian>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_guardian>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_guardian>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//热力模型
RecipeBuilder.newBuilder("热力模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*4)
.addEnergyPerTickInput(16384)
.addItemInput(<thermalfoundation:material:2051>*64)
.addItemInput(<thermalfoundation:material:2049>*64)
.addItemInput(<thermalfoundation:material:2053>*64)
.addItemInput(<thermalfoundation:material:772>*64)
.addItemInput(<minecraft:snowball>*64)
.addItemInput(<thermalfoundation:material:770>*64)
.addItemInput(<deepmoblearning:living_matter_overworldian>*64)
.addFluidInput(<liquid:ender_distillation> * 64000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_thermal_elemental>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_thermal_elemental>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_thermal_elemental>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_thermal_elemental>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_thermal_elemental>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//烈焰人模型
RecipeBuilder.newBuilder("烈焰人模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*8)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:blaze_rod>*64)
.addItemInput(<thermalfoundation:material:771>*64)
.addItemInput(<deepmoblearning:living_matter_hellish>*64)
.addFluidInput(<liquid:fire_water> * 160000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_blaze>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_blaze>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_blaze>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_blaze>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_blaze>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//恶魂模型
RecipeBuilder.newBuilder("恶魂模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*8)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:ghast_tear>*64)
.addItemInput(<minecraft:gunpowder>*64)
.addItemInput(<deepmoblearning:living_matter_hellish>*64)
.addFluidInput(<liquid:fire_water> * 160000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_ghast>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_ghast>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_ghast>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_ghast>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_ghast>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//凋零骷髅模型
RecipeBuilder.newBuilder("凋零骷髅模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*16)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:skull:1>*64)
.addItemInput(<minecraft:coal>*128)
.addItemInput(<deepmoblearning:living_matter_hellish>*128)
.addFluidInput(<liquid:fire_water> * 320000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_wither_skeleton>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_wither_skeleton>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_wither_skeleton>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_wither_skeleton>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_wither_skeleton>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//末影人模型
RecipeBuilder.newBuilder("末影人模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*16)
.addEnergyPerTickInput(16384)
.addItemInput(<enderio:block_enderman_skull:2>*64)
.addItemInput(<minecraft:ender_pearl>*128)
.addItemInput(<deepmoblearning:living_matter_extraterrestrial>*64)
.addFluidInput(<liquid:ender_nak>*160000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_enderman>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_enderman>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_enderman>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_enderman>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_enderman>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//潜影贝模型
RecipeBuilder.newBuilder("潜影贝模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*16)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:shulker_shell>*64)
.addItemInput(<avaritia:resource>*64)
.addItemInput(<deepmoblearning:living_matter_extraterrestrial>*64)
.addFluidInput(<liquid:ender_nak> * 160000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_shulker>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_shulker>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_shulker>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_shulker>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_shulker>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//凋零模型
RecipeBuilder.newBuilder("凋零模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*32)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:nether_star>*64)
.addItemInput(<deepmoblearning:living_matter_extraterrestrial>*128)
.addFluidInput(<liquid:ender_nak> * 320000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_wither>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_wither>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_wither>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_wither>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_wither>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();

//末影龙模型
RecipeBuilder.newBuilder("末影龙模型", "mob_model", 1200)
.addItemInput(<deepmoblearning:data_model_blank>*32)
.addEnergyPerTickInput(16384)
.addItemInput(<minecraft:dragon_egg>*8)
.addItemInput(<draconicevolution:dragon_heart>*4)
.addItemInput(<minecraft:skull:5>*4)
.addItemInput(<minecraft:dragon_breath>*32)
.addItemInput(<draconicevolution:draconic_block>*8)
.addItemInput(<deepmoblearning:living_matter_extraterrestrial>*128)
.addFluidInput(<liquid:ender_nak> * 320000)
.addRandomItemOutput(
    IngredientArrayBuilder.newBuilder()
    .addIngredient(<deepmoblearning:data_model_dragon>).setChance(50)
    .addIngredient(<deepmoblearning:data_model_dragon>.withTag({tier: 1})).setChance(25)
    .addIngredient(<deepmoblearning:data_model_dragon>.withTag({tier: 2})).setChance(15)
    .addIngredient(<deepmoblearning:data_model_dragon>.withTag({tier: 3})).setChance(7)
    .addIngredient(<deepmoblearning:data_model_dragon>.withTag({tier: 4})).setChance(3)
    .build()
)
.build();