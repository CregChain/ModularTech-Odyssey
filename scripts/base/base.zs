//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.Material;

//红宝石
val list1 as string[] = ["ore"];
val Ruby as Material = MaterialSystem.getMaterialBuilder().setName("Ruby").setColor(0xfc0a3a).build();
Ruby.registerParts(list1);

//蓝金石
val list2 as string[] = ["ore"];
val Lazurite as Material = MaterialSystem.getMaterialBuilder().setName("Lazurite").setColor(0x384bad).build();
Lazurite.registerParts(list2);

//钴矿
val list3 as string[] = ["ore"];
val Cobalt as Material = MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(0x2168db).build();
Cobalt.registerParts(list3);