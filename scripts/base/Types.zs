//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

#priority 8000
#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.Material;

//注册宝石类型
var pBuilder = mods.contenttweaker.MaterialSystem.getPartBuilder();
pBuilder.setName("gem");
pBuilder.setPartType(MaterialSystem.getPartType("item"));
var gemPart = pBuilder.build();