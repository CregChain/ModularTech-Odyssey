//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//cakes
var cake as IItemStack[]=[
<actuallyadditions:item_food:8>,
<minecraft:cake>,
<harvestcraft:carrotcakeitem>,
<harvestcraft:cheesecakeitem>,
<harvestcraft:cherrycheesecakeitem>,
<harvestcraft:chocolatesprinklecakeitem>,
<harvestcraft:holidaycakeitem>,
<harvestcraft:lamingtonitem>,
<harvestcraft:pavlovaitem>,
<telepastries:overworld_cake>,
<telepastries:nether_cake>,
<telepastries:end_cake>,
<harvestcraft:fruitcakeitem>,
<harvestcraft:lemondrizzlecakeitem>,
<harvestcraft:jaffaitem>,
<harvestcraft:redvelvetcakeitem>,
<harvestcraft:pumpkincheesecakeitem>,
<harvestcraft:pineappleupsidedowncakeitem>
];  
for i in cake{
<ore:cake>.add(i);
}

//seeds
var seed as IItemStack[]=[
<immersiveengineering:seed>,
<actuallyadditions:item_rice_seed>,
<actuallyadditions:item_canola_seed>,
<actuallyadditions:item_flax_seed>,
<actuallyadditions:item_coffee_seed>
];  
for s in seed{
<ore:listAllseed>.add(s);
}

//ores
<ore:oreAluminum>.remove(<immersiveengineering:ore:1>);
<ore:oreBauxite>.add(<immersiveengineering:ore:1>);

//油井坐标卡
//石油
<ore:oilcardTier1>.add(<contenttweaker:oil_beach1>);
<ore:oilcardTier1>.add(<contenttweaker:oil_desert1>);
<ore:oilcardTier1>.add(<contenttweaker:oil_basin1>);

<ore:oilcardTier2>.add(<contenttweaker:oil_beach2>);
<ore:oilcardTier2>.add(<contenttweaker:oil_desert2>);
<ore:oilcardTier2>.add(<contenttweaker:oil_basin2>);

<ore:oilcardTier3>.add(<contenttweaker:oil_beach3>);
<ore:oilcardTier3>.add(<contenttweaker:oil_desert3>);
<ore:oilcardTier3>.add(<contenttweaker:oil_basin3>);

<ore:oilcardTier4>.add(<contenttweaker:oil_beach4>);
<ore:oilcardTier4>.add(<contenttweaker:oil_desert4>);
<ore:oilcardTier4>.add(<contenttweaker:oil_basin4>);

//重油
<ore:heavyoilcardTier1>.add(<contenttweaker:oil_beach1h>);
<ore:heavyoilcardTier1>.add(<contenttweaker:oil_desert1h>);
<ore:heavyoilcardTier1>.add(<contenttweaker:oil_basin1h>);

<ore:heavyoilcardTier2>.add(<contenttweaker:oil_beach2h>);
<ore:heavyoilcardTier2>.add(<contenttweaker:oil_desert2h>);
<ore:heavyoilcardTier2>.add(<contenttweaker:oil_basin2h>);

<ore:heavyoilcardTier3>.add(<contenttweaker:oil_beach3h>);
<ore:heavyoilcardTier3>.add(<contenttweaker:oil_desert3h>);
<ore:heavyoilcardTier3>.add(<contenttweaker:oil_basin3h>);

<ore:heavyoilcardTier4>.add(<contenttweaker:oil_beach4h>);
<ore:heavyoilcardTier4>.add(<contenttweaker:oil_desert4h>);
<ore:heavyoilcardTier4>.add(<contenttweaker:oil_basin4h>);

//编程电路
<ore:modecard>.add(<cregtech:mode:0>);
<ore:modecard>.add(<cregtech:mode:1>);
<ore:modecard>.add(<cregtech:mode:2>);
<ore:modecard>.add(<cregtech:mode:3>);
<ore:modecard>.add(<cregtech:mode:4>);
<ore:modecard>.add(<cregtech:mode:5>);
<ore:modecard>.add(<cregtech:mode:6>);
<ore:modecard>.add(<cregtech:mode:7>);
<ore:modecard>.add(<cregtech:mode:8>);
<ore:modecard>.add(<cregtech:mode:9>);

//蛋糕
var magicalcrystal as IItemStack[]=[
<ebwizardry:crystal_ore>,
<ancientspellcraft:crystal_ore_fire>,
<ancientspellcraft:crystal_ore_earth>,
<ancientspellcraft:crystal_ore_healing>,
<ancientspellcraft:crystal_ore_ice>,
<ancientspellcraft:crystal_ore_lightning>,
<ancientspellcraft:crystal_ore_necromancy>,
<ancientspellcraft:crystal_ore_sorcery>,
<ancientspellcraft:devoritium_ore>
];  
for crystal in magicalcrystal{
<ore:oreMagicalcrystal>.add(crystal);
}

//DME物质
{
var matter as IItemStack[]=[
<deepmoblearning:pristine_matter_blaze>,
<deepmoblearning:pristine_matter_creeper>,
<deepmoblearning:pristine_matter_enderman>,
<deepmoblearning:pristine_matter_dragon>,
<deepmoblearning:pristine_matter_ghast>,
<deepmoblearning:pristine_matter_guardian>,
<deepmoblearning:pristine_matter_shulker>,
<deepmoblearning:pristine_matter_skeleton>,
<deepmoblearning:pristine_matter_slime>,
<deepmoblearning:pristine_matter_spider>,
<deepmoblearning:pristine_matter_witch>,
<deepmoblearning:pristine_matter_wither>,
<deepmoblearning:pristine_matter_wither_skeleton>,
<deepmoblearning:pristine_matter_zombie>,
<deepmoblearning:pristine_matter_thermal_elemental>,
<deepmoblearning:pristine_matter_tinker_slime>
];  
for m in matter{
<ore:matter>.add(m);
}}

//月岩
<ore:stone>.add(<galacticraftcore:basic_block_moon:4>);