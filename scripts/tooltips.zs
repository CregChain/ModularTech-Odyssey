//This script was created by ohxihh;
//Without the permission of ohxihh, you can't publish this script or apply it to your modpack or server

import crafttweaker.item.IItemStack;

//===========================================MMCE===========================================
//物质转换器控制器
<modularmachinery:matter_transformer_controller>.addTooltip("§e这台机器有着能够转换物质的神奇能力");
//蒸汽研磨机集成控制器
<modularmachinery:steam_crusher_factory_controller>.addTooltip("最高支持同时运转§e8个§7配方");
<modularmachinery:steam_crusher_factory_controller>.addTooltip("§a并不需要§6并行控制器");
<modularmachinery:steam_crusher_factory_controller>.addTooltip("可惜的是只能处理矿物");
//聚爆压缩机控制器
<modularmachinery:implosion_compressor_controller>.addTooltip("§e这台机器能够通过在密闭空间中引爆TNT并借助高压压缩物品");
<modularmachinery:implosion_compressor_controller>.addTooltip("§c艺术就是爆炸!");
//亚尔夫海姆-尘世维度之门集成控制器
<modularmachinery:alfheim_portal_factory_controller>.addTooltip("§e================================================");
<modularmachinery:alfheim_portal_factory_controller>.addTooltip("§a通过进一步发掘魔力的运用，你找到了打开一条稳固的亚尔夫海姆空间隧道的方法");
<modularmachinery:alfheim_portal_factory_controller>.addTooltip("§e亚尔夫海姆之门需要大量电力来维持开启，你可以输入纯净的魔力来获得通道在亚尔夫海姆世界所得的一些魔法材料");
<modularmachinery:alfheim_portal_factory_controller>.addTooltip("§d同样，大量的精纯魔力可以帮助你在通往亚尔夫海姆的通道中召唤并杀死盖亚以获得其战利品");
<modularmachinery:alfheim_portal_factory_controller>.addTooltip("§e================================================");
//一阶科研基站控制器
<modularmachinery:research1_controller>.addTooltip("§e================================================");
<modularmachinery:research1_controller>.addTooltip("§a在完成五彩祭坛后,你发觉到群星中所蕴含的强大力量与未知谜团");
<modularmachinery:research1_controller>.addTooltip("§c为了探索未知的知识并寻找更具效率的物质的运用方法,你建立了研究站");
<modularmachinery:research1_controller>.addTooltip("§d消耗科研币运行");
<modularmachinery:research1_controller>.addTooltip("§3阶段化可升级机械,当前为§6一阶");
<modularmachinery:research1_controller>.addTooltip("§e================================================");
//二阶科研基站控制器
<modularmachinery:research2_controller>.addTooltip("§e================================================");
<modularmachinery:research2_controller>.addTooltip("§a在完成五彩祭坛后,你发觉到群星中所蕴含的强大力量与未知谜团");
<modularmachinery:research2_controller>.addTooltip("§c为了探索未知的知识并寻找更具效率的物质的运用方法,你建立了研究站");
<modularmachinery:research2_controller>.addTooltip("§d消耗科研币运行");
<modularmachinery:research2_controller>.addTooltip("§3阶段化可升级机械,当前为§6二阶");
<modularmachinery:research2_controller>.addTooltip("§e================================================");
//三阶科研基站控制器
<modularmachinery:research3_controller>.addTooltip("§e================================================");
<modularmachinery:research3_controller>.addTooltip("§a在完成五彩祭坛后,你发觉到群星中所蕴含的强大力量与未知谜团");
<modularmachinery:research3_controller>.addTooltip("§c为了探索未知的知识并寻找更具效率的物质的运用方法,你建立了研究站");
<modularmachinery:research3_controller>.addTooltip("§d消耗科研币运行");
<modularmachinery:research3_controller>.addTooltip("§3阶段化可升级机械,当前为§6三阶");
<modularmachinery:research3_controller>.addTooltip("§e================================================");
//艾雅法拉
<modularmachinery:zl2_controller>.addTooltip("§eshadow_zl的私货");
//牛牛机控制器
<modularmachinery:niu_niu_controller>.addTooltip("§b感受它的压迫力吧");
<modularmachinery:niu_niu_controller>.addTooltip("§d§m真·电牛子");
//加速机控制器
<modularmachinery:speeder_controller>.addTooltip("§e放入的时间之瓶不论时间多少都会被修改为30分钟");
<modularmachinery:speeder_controller>.addTooltip("§e请不要将多于30分钟时间的时间之瓶放入，以防丢失时间储存");
//压缩加速机控制器
<modularmachinery:compressed_speeder_controller>.addTooltip("§e放入的时间之瓶不论时间多少都会被修改为5小时");
<modularmachinery:compressed_speeder_controller>.addTooltip("§e请不要将多于5小时时间的时间之瓶放入，以防丢失时间储存");
//高温烘干室集成控制器
<modularmachinery:hot_room_factory_controller>.addTooltip("§6你需要正对上方放置烈焰棒");
//大型蒸汽锅炉控制器
<modularmachinery:large_boiler_controller>.addTooltip("§6只接受固态燃料");
//液燃型蒸汽锅炉控制器
<modularmachinery:large_boiler_liquid_controller>.addTooltip("§6只接受液态燃料");
<modularmachinery:large_boiler_liquid_controller>.addTooltip("§d液态燃料能够更加充分地燃烧并在单位时间内产生更多蒸汽");

//===========================================余烬===========================================
<embers:ancient_motive_core>.addTooltip("§e你可以通过车万女仆的祭坛召唤太古魔像");
<embers:archaic_circuit>.addTooltip("§e可用作一些基础齿轮的铸模,不会在浇筑时消耗");

//===========================================沉浸===========================================
<immersiveengineering:blueprint>.withTag({blueprint: "components"}).addTooltip("§4此物品已被禁用");
<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}).addTooltip("§4此物品已被禁用");
<immersiveengineering:blueprint>.withTag({blueprint: "molds"}).addTooltip("§4此物品已被禁用");
<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}).addTooltip("§4此物品已被禁用");
<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}).addTooltip("§4此物品已被禁用");
<immersiveengineering:wooden_device0:2>.addTooltip("§4此物品已被禁用");

//===========================================原版===========================================
//雪球
<minecraft:snowball>.addTooltip("§e可以使用冷冻机制造!");
//木棍
<minecraft:stick>.addTooltip("§e右键模块化机械的控制器可以自动搭建");
//玻璃碎片
<quark:glass_shards>.addTooltip("§e击碎玻璃获得");

//===========================================COT===========================================
//科研点
<contenttweaker:nova>.addTooltip("§a五彩祭坛的建成,让我们的星空探索迈出了第一步。");
<contenttweaker:nova>.addTooltip("§a通过§b星能§a的力量,我们的科研人员接收到了一些不太和谐的在星空中激荡的§5电磁波§a。");
<contenttweaker:nova>.addTooltip("§c这一§5电磁波§c由§e恒星的电磁震荡§c传播,我们的祭坛敏锐的捕获到了这一变化并对其进行了记录。");
<contenttweaker:nova>.addTooltip("§c惊人的是,使用我们的终端设备,竟可以将其解读。记录员报告如下:");
<contenttweaker:nova>.addTooltip("§f“我...§5dow_z§f...自§b新星§f...找...文明...帮助发展...§1科研点§f...§5首席执行官Nova§f在上。”");
<contenttweaker:nova>.addTooltip("§7在这段文字之后,附录了一个§1新型电路板§7的制作方法。从留言中似乎可以看出这一§1电路板§7有助于我们的科技发展。");
<contenttweaker:nova>.addTooltip("§7我们尚未知晓§b新星§7为何物,但绝非此世所有。");
<contenttweaker:nova>.addTooltip("§7这一§5天外来信§7,似乎并不抱有恶意,但由于其科技特殊性,我们尝试使用计算机进行运算以制作这一科技产品并获得了成功。");
<contenttweaker:nova>.addTooltip("§a不过我们仍需要建造一台§5研究站§a以对其进行进一步的开发。");
//zl矿
<contenttweaker:zl_ore>.addTooltip("§4“warning...warning...”§2矿机发出了尖锐的报警声,工作人员急忙前去查看。矿机的产出仓内,出现了一些§5异常的矿物§2。");
<contenttweaker:zl_ore>.addTooltip("§a它由沙子组成,其间§c红§b蓝§8光芒闪烁§a。后工作人员接受调查时表示,自己听到了某种§5低语§a,并非使用我们的语言,但是却可以无障碍的理解。§f工作人员解读如下：");
<contenttweaker:zl_ore>.addTooltip("§f“我是§aECO实验室§d教廷§f小组研究组长§5shadow_zl§f,代号§5‘教皇’§f。这是我们第一次正式见面,请不要害怕。我来自§b新星宇宙§f,既出于科研目的,也出于作为§5多元宇宙跳跃者§f的私心,");
<contenttweaker:zl_ore>.addTooltip("§f我在不同的宇宙中散布消息,希望以不同形态的信息载体受到截获的方式与不同文明取得联系。我在你们的文明发现了类似§b新星文明§f的§b星能装置§§f,推断出你们可能需要我的帮助。");
<contenttweaker:zl_ore>.addTooltip("§f这一矿石是由我的种族§9‘海嗣’§f的特殊§8源石技艺§7(工作人员:‘可能是某种法术’)§f制成,可以作为我§d跨宇宙沟通§f的工具,也可以作为一种材料。");
<contenttweaker:zl_ore>.addTooltip("§f经过我的改造,这一材料可以配合之前所提供的§1‘科研点’§f进行制作,可以赋予机器特殊的力量。”");
<contenttweaker:zl_ore>.addTooltip("§a经过一番讨论,我们决定相信这位“教皇”,对矿物进行处理。");
//深溟矿
<contenttweaker:shenming_ore>.addTooltip("§4来自深渊的矿物，闪烁着不祥的红色光芒。上方覆盖有蠕动的§8灰蓝色半流体§4，闪烁着§b荧光");
<contenttweaker:shenming_ore>.addTooltip("§5“第一次尝试。”");
<contenttweaker:shenming_ore>.addTooltip("§8似乎与某位§5天外来客§8有关......");
//教皇锭
<contenttweaker:zl_ingot>.addTooltip("§a终于,我们成功的将“教皇矿”进行处理。即使经过熔炼,红蓝的光芒仍未散去,这使我们更加坚信§5“教皇”§a所言的真实性。");
<contenttweaker:zl_ingot>.addTooltip("§a我们决定在新建成的§5研究站§a中将其与§1“科研点”§a进行结合,尝试制作科研升级。");
//指北针
<contenttweaker:north_compass>.addTooltip("§e如你所见，它并不能指引方向，但是可以在自动合成中变得可以识别");
//充能柚子
<contenttweaker:bat>.addTooltip("§e不是挺喜欢加模组的吗,不是喜欢用加速火把吗，把火把插你屁股里，给你好好加个速!");
//发酵混合物
<contenttweaker:fermentation_mixture>.addTooltip("§d这是什么？尝一下————呕!");
//平台手杖
<contenttweaker:building_wand>.addTooltip("§6右键使用，以自己为中心在Y=200处生成一个129*129的石砖平台");
<contenttweaker:building_wand>.addTooltip("§d在平台生成后将你传送至平台中央");
<contenttweaker:building_wand>.addTooltip("§e一次性用品，请在周边区域加载完成后使用");
//世界再见
<contenttweaker:kill_yourself>.addTooltip("§4右键使用与世界告别");
<contenttweaker:kill_yourself>.addTooltip("§6好评率百分之百");
<contenttweaker:kill_yourself>.addTooltip("§e不会消耗");
//速效救心丸
<contenttweaker:heal>.addTooltip("§6只要还没死都能救回来的神药");
<contenttweaker:heal>.addTooltip("§4右键瞬间使用");
<contenttweaker:heal>.addTooltip("§d在合成时只接受瞬间治疗IV的药水");
//压缩饼干
<contenttweaker:feed>.addTooltip("§6顶饱");
<contenttweaker:feed>.addTooltip("§4右键瞬间使用");
<contenttweaker:feed>.addTooltip("§b什么?这不是压缩毛巾......");
//地狱堡垒定位器
<contenttweaker:locate>.addTooltip("§6右键定位最近的地狱堡垒");
<contenttweaker:locate>.addTooltip("§b定位可能存在一定偏差");
//晴朗之空
<contenttweaker:sunny>.addTooltip("§6使用后立即放晴");
<contenttweaker:sunny>.addTooltip("§4一次性物品");

//===========================================龙研===========================================
//龙矿
<draconicevolution:draconium_ore:0>.addTooltip("§5只有蕴含龙之力的工具才能采集这种矿石");
<draconicevolution:draconium_ore:1>.addTooltip("§5只有蕴含龙之力的工具才能采集这种矿石");
<draconicevolution:draconium_ore:2>.addTooltip("§5只有蕴含龙之力的工具才能采集这种矿石");
//龙锭
<draconicevolution:draconium_ingot>.addTooltip("§e这种材料所制成的工具所蕴含的龙之力过于稀少,不足以采集龙矿");

//===========================================纪念品===========================================
//九夏
<contenttweaker:jiuxia2025>.addTooltip("§eJiuXia2025纪念品");
<contenttweaker:jiuxia2025>.addTooltip("感谢您的支持！");
//ohxihh
<contenttweaker:ohxihh>.addTooltip("§eohxihh纪念品");
<contenttweaker:ohxihh>.addTooltip("魔改负责人");
<contenttweaker:ohxihh>.addTooltip("写魔改好累,好想摸鱼...");
<contenttweaker:ohxihh>.addTooltip("精神状态十分健康");
//Sumlotus
<contenttweaker:sumlotus>.addTooltip("§eSumlotus纪念品");
<contenttweaker:sumlotus>.addTooltip("扭曲的模块化机械搭建者");
//芝麻
<contenttweaker:zhixiaoma>.addTooltip("§eZhiXiaoMa纪念品");
<contenttweaker:zhixiaoma>.addTooltip("据说吃了这个东西,肚子会膨胀");
//xiaoyu
<contenttweaker:xiaoyu>.addTooltip("§exiaoyu纪念品");
<contenttweaker:xiaoyu>.addTooltip("最帅玩家,你值得拥有");
//ximen
<contenttweaker:ximen>.addTooltip("§eximen纪念品");
<contenttweaker:ximen>.addTooltip("远古时代的**玩家");
<contenttweaker:ximen>.addTooltip("因为太无聊重新回到服务器");
<contenttweaker:ximen>.addTooltip("主要还是和芝麻贴贴");
//chengzhenjie
<contenttweaker:chengzhenjie>.addTooltip("§echengzhenjie纪念品");
<contenttweaker:chengzhenjie>.addTooltip("你收到了来自GT的祝福");
//CapsH_
<contenttweaker:capsh>.addTooltip("§eCapsH_纪念品");
<contenttweaker:capsh>.addTooltip("中间参与模块化的投稿");
<contenttweaker:capsh>.addTooltip("我真的不会建筑......呜呜呜呜......");
//shadow_zl
<contenttweaker:shadow_zl>.addTooltip("§eshadow_zl纪念品");
<contenttweaker:shadow_zl>.addTooltip("究极无敌游戏杂食怪shadow_zl在线加刀客塔好友");
<contenttweaker:shadow_zl>.addTooltip("这是zl的老婆,认识一下");
<contenttweaker:shadow_zl>.addTooltip("学校去死啊啊啊啊啊啊");
//nova
<contenttweaker:nova>.addTooltip("§e赞美§6nova");
//末一
<contenttweaker:moyi>.addTooltip("§e末一纪念品");
<contenttweaker:moyi>.addTooltip("关注末一喵，关注末一谢谢喵");
//Oganesson897
<contenttweaker:oganesson897>.addTooltip("§eOganesson897纪念品");
<contenttweaker:oganesson897>.addTooltip("Oganesson897半衰期只有0.3秒");
//XB_Asuna
<contenttweaker:xb_asuna>.addTooltip("§eXB_Asuna纪念品");
<contenttweaker:xb_asuna>.addTooltip("格雷：量子跃迁作者");
<contenttweaker:xb_asuna>.addTooltip("凭此物品可以在作者处领取女装照一张");
//ionite
<contenttweaker:ionite>.addTooltip("§eionite纪念品");
<contenttweaker:ionite>.addTooltip("我是个鲨bee");
<contenttweaker:ionite>.addTooltip("§6喜欢在直播间拉屎");
//ibicir
<contenttweaker:ibicir>.addTooltip("§eibicir纪念品");
<contenttweaker:ibicir>.addTooltip("色色是第一生产力！");
//Loaf_Hime
<contenttweaker:loaf_hime>.addTooltip("§eLoaf_Hime纪念品");
<contenttweaker:loaf_hime>.addTooltip("我真的好后悔把NaClFish这个正版ID改掉(悲)");
<contenttweaker:loaf_hime>.addTooltip("Loaf是摸鱼的意思啦！不是面包的意思！");
//InkAndSoul
<contenttweaker:inkandsoul>.addTooltip("§eInkAndSoul纪念品");
<contenttweaker:inkandsoul>.addTooltip("“繁荣与衰败的又一个见证者罢了……”");
<contenttweaker:inkandsoul>.addTooltip("“墨白言靈？他早就不在了，与他守护的那方土壤一同去了。”");
<contenttweaker:inkandsoul>.addTooltip("“虚无是最好的归宿，亦是最终。”");
//quicktel
<contenttweaker:quicktel>.addTooltip("§equicktel纪念品");
<contenttweaker:quicktel>.addTooltip("余烬挺好的，就是有点坏，爱来自讨厌环氧树脂的苦逼(吃下有惊喜)");
//Kasumi_Nova
<contenttweaker:kasumi_nova>.addTooltip("§eKasumi_Nova纪念品");
<contenttweaker:kasumi_nova>.addTooltip("你在这个神奇的产物上闻到了大饼的香气");
<contenttweaker:kasumi_nova>.addTooltip("明明是一张萌妹子的照片，但不知为何你的潜意识里认为这是一张大饼");
<contenttweaker:kasumi_nova>.addTooltip("也许它是照片，但是你吃下它时只感觉嘴里有饼");
<contenttweaker:kasumi_nova>.addTooltip("吃下它，你感觉一群星星围着火堆跳舞");
<contenttweaker:kasumi_nova>.addTooltip("致电471614563，新星医院欢迎您");
//xian_bei
<contenttweaker:xian_bei>.addTooltip("§exian_bei纪念品");
<contenttweaker:xian_bei>.addTooltip("灵茗屿空岛作者");
<contenttweaker:xian_bei>.addTooltip("诋毁赛马娘，理解赛马娘，成为赛马娘");
//clouly
<contenttweaker:clouly>.addTooltip("§e第一位完成整合包全流程实况的UP主Clouly纪念品");
<contenttweaker:clouly>.addTooltip("花不完，根本花不完");
//秋明
<contenttweaker:tyumen>.addTooltip("§eSweet秋明纪念品");
<contenttweaker:tyumen>.addTooltip("割了");

//===========================================植魔===========================================
//盖亚头
<botania:gaiahead>.addTooltip("§e利用源质钢斧附加的斩首效果对盖亚进行击杀有概率获得");

//===========================================AE2===========================================
//物质聚合器
<appliedenergistics2:condenser>.addTooltip("§e或许你可以试试往里面灌水?");

//===========================================杂项===========================================
//红色药物
<matteroverdrive:android_pill>.addTooltip("§4谨慎使用！§6吃下后你会变成机器人");
//蓝色药丸
<matteroverdrive:android_pill:1>.addTooltip("§6吃下后你会变回人类");
//焦炉砖
<immersiveengineering:stone_decoration>.addTooltip("§6沉浸原版的焦炉已被禁用");
//高炉砖
<immersiveengineering:stone_decoration:1>.addTooltip("§6沉浸原版的高炉和强化高炉已被禁用");
//POOP
<cropdusting:poop>.addTooltip("§6你不会真想尝尝吧?");
//悬赏榜
<bountiful:bountyboarditem>.addTooltip("§6在村庄以低概率生成，你也可以在商店中购买");
<bountiful:bountyboarditem>.addTooltip("§d所有悬赏榜共用同一个任务池，且大部分悬赏难度较高，不建议游戏初期尝试");
//TOP指南
<theoneprobe:probenote>.addTooltip("§e请不要乱玩这张纸,可能会导致你的高亮显示丢失");
//ohxihh的头
<minecraft:skull:3>.withTag({SkullOwner: {Id: "1936e770-14bd-30f0-b41c-863e10b9c30b", Name: "ohxihh"}}).addTooltip("§e整合包作者-ohxihh的头");
//水晶花
<contenttweaker:crystal_flower>.addTooltip("§b这朵花会消耗富含魔力的晶体来产生魔力");
//铜齿轮
<thermalfoundation:material:256>.addTooltip("§e通过浇筑太古电路来获取第一批铜齿轮");
//焦黑砖
<tconstruct:materials>.addTooltip("§e或许你可以通过熔化石头来获取焦黑砖");
//基岩粉
<enderio:item_material:20>.addTooltip("§e不要尝试火烧基岩了,去看看流体转置机怎么样？");
//MEK锅炉外壳
<mekanism:basicblock2:7>.addTooltip("§e锅炉结构已被禁止");
//耐久大板
<tconstruct:materials:14>.addTooltip("§e耐久最多强化到四级而不是不毁");
//奥术工作台
<ebwizardry:arcane_workbench>.addTooltip("§e不要在家鉴定法术!!!");
//P点
<touhou_little_maid:power_point>.addTooltip("§e女仆祭坛现在可以召唤一些其他生物");
//大理石
<astralsorcery:blockmarble>.addTooltip("§e不会自然生成，你需要通过合成获得");
//陨石
<appliedenergistics2:sky_stone_block>.addTooltip("§e不会自然生成，你需要通过合成获得");
//谐振末影络合物
<thermalfoundation:material:895>.addTooltip("§e可以在熔化后浇筑为末影珍珠");
//蒸汽能源炉
<thermalexpansion:dynamo>.addTooltip("§e红色凸起为能量输出端，需要在能源炉内部储能满后才能输出");
//指示之书
<bloodmagic:sanguine_book>.addTooltip("手持其对空气右击调试层级");
<bloodmagic:sanguine_book>.addTooltip("§e看着血之祭坛会显示出搭建方块的镜像");
<bloodmagic:sanguine_book>.addTooltip("§eShift+右键血之祭坛使镜像固定不再因为视线移开而使镜像消失");
//暴雪粉
<thermalfoundation:material:2049>.addTooltip("§e流体转置机或生物农场抑或者是磨粉机？");
//殷钢隔热机械方块
<cregtech:heat_proof_invar_machine_casing>.displayName = "殷钢隔热机械方块";
//赌狗奖励箱
<ftbquests:lootcrate>.withTag({type: "coin"}).addTooltip("§b梭哈是一种智慧");
<ftbquests:lootcrate>.withTag({type: "coin"}).addTooltip("§d你可能小赚，但我永远不亏");
<ftbquests:lootcrate>.withTag({type: "coin"}).addTooltip("§6珍爱生命，远离赌博");
//解谜大师
<lootgames:puzzle_master>.addTooltip("§e需离地一格放置，放置后会替换下方第二格高的地面");

//===========================================超能物质===========================================
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
    <matteroverdrive:gravitational_stabilizer>,
    <matteroverdrive:solar_panel>,
    <matteroverdrive:network_pipe>
];
for i in item{
i.addTooltip("§d该物品已被禁用！");
}

//===========================================物品名称显示修改===========================================
//cot钴矿
<contenttweaker:sub_block_holder_0:2>.displayName = "辉钴矿石";
//西柚
<harvestcraft:grapefruititem>.displayName = "柚子";
<harvestcraft:grapefruit_sapling>.displayName = "柚子树苗";
//余烬流体管道
<embers:pipe>.displayName = "流体管道";
<embers:pump>.displayName = "流体机械泵管道";
//余烬锅炉
<embers:boiler>.displayName = "高压能量激发器";
//余烬储物仓
<embers:bin>.displayName = "储物仓";
//混合离心器(搅拌机WIP)
<embers:mixer>.displayName = "混合离心器";
//量子控制电路
<mekanism:controlcircuit:4>.displayName = "量子控制电路";
//炼金处理仓
<chambers:alchemy_chamber>.displayName = "炼金处理仓";
//饰品汉化
<artifacts:shock_pendant>.displayName = "震颤吊坠(佩戴后有几率雷击攻击者)";
<artifacts:flame_pendant>.displayName = "火焰吊坠(佩戴时有几率点燃攻击者)";
<artifacts:thorn_pendant>.displayName = "荆棘吊坠(有几率给予攻击者伤害)";
<artifacts:ultimate_pendant>.displayName = "终极之怒吊坠(佩戴时有几率反伤/点燃/雷击攻击者)";
<artifacts:panic_necklace>.displayName = "恐慌项链(佩戴后受伤时增加移速)";
<artifacts:whoopie_cushion>.displayName = "整蛊坐垫(增加佩戴者的胀气感)";
<artifacts:bottled_cloud>.displayName = "瓶中云朵(佩戴后玩家可获得二段跳的能力)";
<artifacts:bottled_fart>.displayName = "罐中屁?(佩戴后玩家可获得二段跳的能力，但其音效被替换为放屁声(奇怪的名字))";
<artifacts:magma_stone>.displayName = "熔岩石(使穿戴者近战攻击附加火焰效果)";
<artifacts:feral_claws>.displayName = "猛禽之爪(佩戴后可以增加玩家的攻速)";
<artifacts:power_glove>.displayName = "力量手套(提升穿戴者近战攻击伤害)";
<artifacts:mechanical_glove>.displayName = "机械手套(提升穿戴者的近战伤害以及攻击速度)";
<artifacts:power_glove>.displayName = "力量手套(提升穿戴者近战攻击伤害)";
<artifacts:fire_gauntlet>.displayName = "烈火手套(提升穿戴者的近战攻击伤害及攻击速度，并对目标附加火焰效果)";
<artifacts:drinking_hat>.displayName = "饱食之帽(佩戴后使玩家吃食物时多增加1点饱食度)";
<artifacts:star_cloak>.displayName = "星辰披风(当你受伤时会引来星辰坠落)";
<artifacts:pocket_piston>.displayName = "袖珍活塞(佩戴后可增加玩家攻击击退)";
<artifacts:lucky_clover>.displayName = "幸运四叶草(幸运值+2)";
<artifacts:antidote_vessel>.displayName = "解毒容器(压制负面效果最大等级至1级，最大持续时间至600s)";
<artifacts:bubble_wrap>.displayName = "泡泡卷纸(免疫撞击伤害)";
<artifacts:sacrificial_amulet>.displayName = "牺牲护符(每击杀1个敌人获得1点祭祀值，当祭祀值满100时，该吊坠将自动销毁并补偿佩戴者一个奖励箱)";
/*物质汉化
game.setLocalization("item.deepmoblearning.pristine_matter_blaze.name","§b原始烈焰人物质");
<deepmoblearning:pristine_matter_blaze>.displayName = "§b原始烈焰人物质";
<deepmoblearning:pristine_matter_creeper>.displayName = "§b原始爬行者物质";
<deepmoblearning:pristine_matter_dragon>.displayName = "§b原始末影龙物质";
<deepmoblearning:pristine_matter_enderman>.displayName = "§b原始末影人物质";
<deepmoblearning:pristine_matter_ghast>.displayName = "§b原始恶魂物质";
<deepmoblearning:pristine_matter_guardian>.displayName = "§b原始守卫者物质";
<deepmoblearning:pristine_matter_shulker>.displayName = "§b原始潜影贝物质";
<deepmoblearning:pristine_matter_skeleton>.displayName = "§b原始骷髅物质";
<deepmoblearning:pristine_matter_slime>.displayName = "§b原始史莱姆物质";
<deepmoblearning:pristine_matter_spider>.displayName = "§b原始蜘蛛物质";
<deepmoblearning:pristine_matter_witch>.displayName = "§b原始女巫物质";
<deepmoblearning:pristine_matter_wither>.displayName = "§b原始凋灵物质";
<deepmoblearning:pristine_matter_wither_skeleton>.displayName = "§b原始凋灵骷髅物质";
<deepmoblearning:pristine_matter_zombie>.displayName = "§b原始僵尸物质";
<deepmoblearning:pristine_matter_thermal_elemental>.displayName = "§b原始热力元素物质";
<deepmoblearning:pristine_matter_tinker_slime>.displayName = "§b原始匠魂史莱姆物质";
<deepmoblearning:pristine_matter_mo_android>.displayName = "§b原始机器人物质";*/
//古代咒法汉化
<ancientspellcraft:unsealing_scroll>.displayName = "解锁卷轴";
<ancientspellcraft:unsealing_scroll>.addTooltip("§6右键使用解开遗迹封锁");
<ancientspellcraft:duplication_scroll>.displayName = "复写卷轴";
<ancientspellcraft:duplication_scroll>.addTooltip("§6右键使用复制副手上的法术书或卷轴");
<ancientspellcraft:knowledge_scroll>.displayName = "知识卷轴";
<ancientspellcraft:knowledge_scroll>.addTooltip("§6将魔杖放置在副手时右键使用获得魔杖进阶至下一等级所需经验的1/3");
<ancientspellcraft:amnesia_scroll>.displayName = "失忆卷轴";
<ancientspellcraft:amnesia_scroll>.addTooltip("§6右键对友善巫师使用，刷新并解锁该巫师的所有交易");
<ancientspellcraft:imbuement_scroll>.displayName = "注灵卷轴";
<ancientspellcraft:imbuement_scroll>.addTooltip("§6将法杖或巫师装备放在注灵祭坛中，在四个容杯中放入同一元素的灵尘，用此卷轴右键注灵祭坛即可将法杖或装备的元素属性转换为放入灵尘的元素属性");
<ancientspellcraft:theory_scroll>.displayName = "理论卷轴";
<ancientspellcraft:theory_scroll>.addTooltip("§6shift右键获取1点理论点数，理论点数用于在讲台获取神秘法术书，点数可以在Scribe贤者法术书查看");
<ancientspellcraft:theory_scroll>.displayName = "空理论卷轴";
<ancientspellcraft:theory_scroll>.addTooltip("§6shift右键存入1点理论点数，卷轴变为理论卷轴");
<ancientspellcraft:bartering_scroll>.displayName = "易物卷轴";
<ancientspellcraft:bartering_scroll>.addTooltip("§6右键使用在露天处创造出魔法信标，吸引游荡巫师前来与你交易");
<ancientspellcraft:transmutation_scroll>.displayName = "转化卷轴";
<ancientspellcraft:transmutation_scroll>.addTooltip("§6这一卷轴内蕴强大的魔法，可以将魔法物品转化为其他品质与类型相同物品，使用特殊饰品可以固定转化出的类型，手持此卷轴，长按右键3秒即可将副手的物品进行转化");
<ancientspellcraft:empty_mystic_spell_book>.displayName = "空神秘法术书";
<ancientspellcraft:empty_mystic_spell_book>.addTooltip("§6将空神秘法术书放在讲台上，用贤者宝典施放贤者法术Scribe持续5秒，然后消耗1点理论点数为空法术书写上内容");
<ancientspellcraft:empty_mystic_spell_book>.addTooltip("§d理论点数由理论卷轴或贤者法术Experiment获得。点数可以在Scribe贤者法术书中查看,最基本的Experiment和Scribe贤者法术书可以直接由空神秘法术书和5个魔力水晶合成获得");
<ancientspellcraft:mystic_spell_book>.displayName = "神秘法术书";
<ancientspellcraft:mystic_spell_book>.addTooltip("§6神秘法术书只能由贤者宝典使用，可以在奥术工作台绑定");