//本脚本由灵茗屿空岛作者仙贝提供，由ohxihh对整合包进行适配
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

function pInWorld(pName as string,item as IItemStack)as void
{
    events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {  
        var p=event.player;
        var w=p.world;
        var d=p.data;
        if(w.remote)return;
        if(p.name == pName){
            if(isNull(d.PlayerPersisted.Sponsor)){
                event.player.world.catenation()
                    .sleep(60)
                    .then(function(world, context) {
                        p.give(item);
                        p.update({PlayerPersisted:{Sponsor:1}});
                        context.data = world.time;
                    })
                    .start();
            }
        }
    });
}

pInWorld("Tyumen_",<contenttweaker:tyumen>);
pInWorld("ohxihh",<contenttweaker:ohxihh>);
pInWorld("JiuXia2025",<contenttweaker:jiuxia2025>);
pInWorld("Sumlotus",<contenttweaker:sumlotus>);
pInWorld("ZhiXiaoMa",<contenttweaker:zhixiaoma>);
pInWorld("XZ_xiaoyu_XY",<contenttweaker:xiaoyu>);
pInWorld("ximen",<contenttweaker:ximen>);
pInWorld("Creg_Chain",<contenttweaker:chengzhenjie>);
pInWorld("shadow_zl",<contenttweaker:shadow_zl>);
pInWorld("CapsH_",<contenttweaker:capsh>);
pInWorld("EnderYi",<contenttweaker:moyi>);
pInWorld("Oganesson897",<contenttweaker:oganesson897>);
pInWorld("XB_Asuna",<contenttweaker:xb_asuna>);
pInWorld("Ionite",<contenttweaker:ionite>);
pInWorld("ibicir",<contenttweaker:ibicir>);
pInWorld("Loaf_Hime",<contenttweaker:loaf_hime>);
pInWorld("InkAndSoul",<contenttweaker:inkandsoul>);
pInWorld("quicktel",<contenttweaker:quicktel>);
pInWorld("Kasumi_Nova",<contenttweaker:kasumi_nova>);
pInWorld("xian_bei",<contenttweaker:xian_bei>);
pInWorld("Clouly",<contenttweaker:clouly>);