//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import mods.multiblockstages.IEMultiBlockStages;
import mods.ItemStages.addItemStage;
import crafttweaker.item.IItemStack;

IEMultiBlockStages.addStage("ban", "IE:AutoWorkbench", "§4该机器已被禁止建造");
IEMultiBlockStages.addStage("ban", "IE:CokeOven", "§4该机器已被禁止建造");
IEMultiBlockStages.addStage("ban", "IE:BlastFurnace", "§4该机器已被禁止建造");
IEMultiBlockStages.addStage("ban", "IE:BlastFurnaceAdvanced", "§4该机器已被禁止建造");
//IEMultiBlockStages.addStage("ban", "IE:Excavator", "§4该机器已被禁止建造");

/*
var hide as IItemStack[]=[
//樱护甲
<sakura:samurai_helmet>,
<sakura:samurai_chest>,
<sakura:samurai_pants>,
<sakura:samurai_shoes>,
<sakura:soldier_helmet>,
<sakura:soldier_chest>,
<sakura:soldier_pants>,
<sakura:soldier_shoes>,
<sakura:haori>,
<sakura:kimono>,
<sakura:strawhat>
];  
for a in hide{
addItemStage("ban", a );
}  
*/

var item as IItemStack[]=[
    <matteroverdrive:decomposer>,
    <matteroverdrive:replicator>,
    <matteroverdrive:matter_recycler>,
    <matteroverdrive:matter_analyzer>,
    <matteroverdrive:pattern_monitor>,
    <matteroverdrive:pattern_storage>,
    <matteroverdrive:network_switch>,
    <matteroverdrive:network_router>,
    <matteroverdrive:spacetime_accelerator>,
    <matteroverdrive:transporter>,
    <matteroverdrive:fusion_reactor_io>,
    <matteroverdrive:fusion_reactor_coil>,
    <matteroverdrive:fusion_reactor_controller>,
    <matteroverdrive:solar_panel>,
    <matteroverdrive:network_pipe>
];
for i in item{
addItemStage("ban",i);
}