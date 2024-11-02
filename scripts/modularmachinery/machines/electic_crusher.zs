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

//.addCatalystInput(<thermalfoundation:material:1027>, ["§6消耗地岩粉可以使矿物的产出大幅度提高"], [RecipeModifierBuilder.create("modularmachinery:item", "output", 8.0F , 0, false).build()])

MachineModifier.setMaxParallelism("earth_crusher", 16);

//==================================================余烬催化==================================================
RecipeBuilder.newBuilder("A_iron_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreIron>*4)
.addItemOutput(<ore:dustIron>*20)
.build();

RecipeBuilder.newBuilder("A_gold_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreGold>*4)
.addItemOutput(<ore:dustGold>*20)
.build();

RecipeBuilder.newBuilder("A_tin_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreTin>*4)
.addItemOutput(<ore:dustTin>*20)
.build();

RecipeBuilder.newBuilder("A_copper_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreCopper>*4)
.addItemOutput(<ore:dustCopper>*20)
.build();

RecipeBuilder.newBuilder("A_platinum_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:orePlatinum>*4)
.addItemOutput(<ore:dustPlatinum>*20)
.build();

RecipeBuilder.newBuilder("A_aluminum_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreAluminum>*4)
.addItemOutput(<ore:dustAluminum>*20)
.build();

RecipeBuilder.newBuilder("A_iridium_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreIridium>*4)
.addItemOutput(<ore:dustIridium>*20)
.build();

RecipeBuilder.newBuilder("A_nickel_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreNickel>*4)
.addItemOutput(<ore:dustNickel>*20)
.build();

RecipeBuilder.newBuilder("A_cobalt_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreCobalt>*4)
.addItemOutput(<ore:dustCobalt>*20)
.build();

RecipeBuilder.newBuilder("A_ardite_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreArdite>*4)
.addItemOutput(<ore:dustArdite>*20)
.build();

RecipeBuilder.newBuilder("A_lithium_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreLithium>*4)
.addItemOutput(<ore:dustLithium>*20)
.build();

RecipeBuilder.newBuilder("A_magnesium_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreMagnesium>*4)
.addItemOutput(<ore:dustMagnesium>*20)
.build();

RecipeBuilder.newBuilder("A_thorium_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreThorium>*4)
.addItemOutput(<ore:dustThorium>*20)
.build();

RecipeBuilder.newBuilder("A_boron_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreBoron>*4)
.addItemOutput(<ore:dustBoron>*20)
.build();

RecipeBuilder.newBuilder("A_osmium_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreOsmium>*4)
.addItemOutput(<ore:dustOsmium>*20)
.build();

RecipeBuilder.newBuilder("A_uranium_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreUranium>*4)
.addItemOutput(<ore:dustUranium>*20)
.build();

RecipeBuilder.newBuilder("A_fluorite_gem_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreFluorite>*4)
.addItemOutput(<ore:gemFluorite>*20)
.build();

RecipeBuilder.newBuilder("A_astralStarmetal_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreAstralStarmetal>*4)
.addItemOutput(<ore:dustAstralStarmetal>*20)
.build();

RecipeBuilder.newBuilder("A_silver_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreSilver>*4)
.addItemOutput(<ore:dustSilver>*20)
.build();

RecipeBuilder.newBuilder("A_lead_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreLead>*4)
.addItemOutput(<ore:dustLead>*20)
.build();

RecipeBuilder.newBuilder("A_quartz_gem_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreQuartz>*4)
.addItemOutput(<ore:gemQuartz>*20)
.build();

RecipeBuilder.newBuilder("A_certusQuartz_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreCertusQuartz>*4)
.addItemOutput(<ore:dustCertusQuartz>*20)
.build();

RecipeBuilder.newBuilder("A_emerald_gem_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreEmerald>*4)
.addItemOutput(<ore:gemEmerald>*20)
.build();

RecipeBuilder.newBuilder("A_diamond_gem_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreDiamond>*4)
.addItemOutput(<ore:gemDiamond>*20)
.build();

RecipeBuilder.newBuilder("A_lapis_gem_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreLapis>*4)
.addItemOutput(<ore:gemLapis>*80)
.build();

RecipeBuilder.newBuilder("A_redstone_dust_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreRedstone>*4)
.addItemOutput(<ore:dustRedstone>*60)
.build();

RecipeBuilder.newBuilder("A_coal_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreCoal>*4)
.addItemOutput(<ore:coal>*40)
.build();

RecipeBuilder.newBuilder("A_bauxite_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreBauxite>*4)
.addItemOutput(<contenttweaker:bauxite_dust>*12)
.build();

RecipeBuilder.newBuilder("A_ilmenite_e","earth_crusher", 100,0,false)
.addEnergyPerTickInput(256)
.addEmberInput(200)
.addItemInput(<ore:oreIlmenite>*4)
.addItemOutput(<contenttweaker:ilmenite_dust>*12)
.build();

//==================================================无催化==================================================
RecipeBuilder.newBuilder("iron_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreIron>*4)
.addItemOutput(<ore:dustIron>*12)
.build();

RecipeBuilder.newBuilder("gold_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreGold>*4)
.addItemOutput(<ore:dustGold>*12)
.build();

RecipeBuilder.newBuilder("tin_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreTin>*4)
.addItemOutput(<ore:dustTin>*12)
.build();

RecipeBuilder.newBuilder("copper_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreCopper>*4)
.addItemOutput(<ore:dustCopper>*12)
.build();

RecipeBuilder.newBuilder("platinum_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:orePlatinum>*4)
.addItemOutput(<ore:dustPlatinum>*12)
.build();

RecipeBuilder.newBuilder("aluminum_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreAluminum>*4)
.addItemOutput(<ore:dustAluminum>*12)
.build();

RecipeBuilder.newBuilder("iridium_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreIridium>*4)
.addItemOutput(<ore:dustIridium>*12)
.build();

RecipeBuilder.newBuilder("nickel_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreNickel>*4)
.addItemOutput(<ore:dustNickel>*12)
.build();

RecipeBuilder.newBuilder("cobalt_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreCobalt>*4)
.addItemOutput(<ore:dustCobalt>*12)
.build();

RecipeBuilder.newBuilder("ardite_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreArdite>*4)
.addItemOutput(<ore:dustArdite>*12)
.build();

RecipeBuilder.newBuilder("lithium_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreLithium>*4)
.addItemOutput(<ore:dustLithium>*12)
.build();

RecipeBuilder.newBuilder("magnesium_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreMagnesium>*4)
.addItemOutput(<ore:dustMagnesium>*12)
.build();

RecipeBuilder.newBuilder("thorium_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreThorium>*4)
.addItemOutput(<ore:dustThorium>*12)
.build();

RecipeBuilder.newBuilder("boron_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreBoron>*4)
.addItemOutput(<ore:dustBoron>*12)
.build();

RecipeBuilder.newBuilder("osmium_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreOsmium>*4)
.addItemOutput(<ore:dustOsmium>*12)
.build();

RecipeBuilder.newBuilder("uranium_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreUranium>*4)
.addItemOutput(<ore:dustUranium>*12)
.build();

RecipeBuilder.newBuilder("fluorite_gem_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreFluorite>*4)
.addItemOutput(<ore:gemFluorite>*12)
.build();

RecipeBuilder.newBuilder("astralStarmetal_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreAstralStarmetal>*4)
.addItemOutput(<ore:dustAstralStarmetal>*12)
.build();

RecipeBuilder.newBuilder("silver_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreSilver>*4)
.addItemOutput(<ore:dustSilver>*12)
.build();

RecipeBuilder.newBuilder("lead_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreLead>*4)
.addItemOutput(<ore:dustLead>*12)
.build();

RecipeBuilder.newBuilder("quartz_gem_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreQuartz>*4)
.addItemOutput(<ore:gemQuartz>*12)
.build();

RecipeBuilder.newBuilder("certusQuartz_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreCertusQuartz>*4)
.addItemOutput(<ore:dustCertusQuartz>*12)
.build();

RecipeBuilder.newBuilder("emerald_gem_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreEmerald>*4)
.addItemOutput(<ore:gemEmerald>*12)
.build();

RecipeBuilder.newBuilder("diamond_gem_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreDiamond>*4)
.addItemOutput(<ore:gemDiamond>*12)
.build();

RecipeBuilder.newBuilder("lapis_gem_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreLapis>*4)
.addItemOutput(<ore:gemLapis>*48)
.build();

RecipeBuilder.newBuilder("redstone_dust_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreRedstone>*4)
.addItemOutput(<ore:dustRedstone>*36)
.build();

RecipeBuilder.newBuilder("coal_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreCoal>*4)
.addItemOutput(<ore:coal>*24)
.build();

RecipeBuilder.newBuilder("bauxite_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreBauxite>*4)
.addItemOutput(<contenttweaker:bauxite_dust>*12)
.build();

RecipeBuilder.newBuilder("ilmenite_e","earth_crusher", 100,2,false)
.addEnergyPerTickInput(256)
.addItemInput(<ore:oreIlmenite>*4)
.addItemOutput(<contenttweaker:ilmenite_dust>*12)
.build();