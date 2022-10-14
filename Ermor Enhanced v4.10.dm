#modname "Ermor Enhanced v4.10"
#description "对邪坟骑士、久死军团的能力稍作调整，将邪坟骑士加入厄尔莫的亡灵召唤体系，允许污染炽热正义之堂，允许摧毁皇家学院，允许召唤建筑师亡魂，允许将食尸鬼转化为裂魂食尸鬼，允许久死者和无魂者晋升。增加专属准神死亡化身。"
#version 4.10

--DEBUG
-- #selectnation 44
-- #startsite "皇家学院"
-- #end

-- #newspell
-- #copyspell 293
-- #name "debug summon"
-- #descr "debug summon"
-- #researchlevel 0
-- #pathlevel 0 1
-- #fatiguecost 100
-- #damage -2500
-- #nreff 25
-- #end

-- #newevent
-- #rarity 5
-- #req_fornation 44
-- #req_pop0ok
-- #req_unique 1
-- #msg "debug[无光灯笼]"
-- #magicitem 9
-- #end

----------Weapon-----------



#newweapon 1555
#copyweapon 310 -- Infernal Scythe
#name "夺魂之镰"
#len 4
#armorpiercing
#secondaryeffectalways 194
#end



----------Weapon-----------

----------Item-----------



#selectitem 544
#name "冥河古卷"
#constlevel 12
#mainpath 5
#mainlevel 5
#secondarypath 4
#secondarylevel 5
#copyspr 430
#spell "创世记录"
#onlyundead
#unique
#nofind
#yearaging 1
#end



----------Item-----------

----------Unit-----------



#selectmonster 184
#fear 5
#formationfighter 3
#end

#selectmonster 186
#formationfighter 2
#end

#selectmonster 187
#formationfighter 2
#end

#selectmonster 914
#name "无魂战士"
#montag 2500
#end

#selectmonster 915
#montag 2500
#end

#selectmonster 1657
#name "久死军团重步兵"
#formationfighter 4
#end

#selectmonster 1658
#name "久死军团剑盾手"
#clearweapons
#weapon 8
#weapon 21
#formationfighter 2
#end

#selectmonster 2124
#name "久死者重剑士"
#end

#newmonster 4184
#copystats 184
#spr1 "Ermor Enhanced\Monster\4184_1.tga"
#name "恐怖骑士"
#descr "恐怖骑士是强大的邪坟骑士团长，现在他们被黑暗魔法复活再次为帝国效忠。他们装备着锈蚀的板甲，在腐烂的马鞍中骑在骷髅马的顶端。看着恐怖骑士便是直面最深的恐惧，只有那些勇气卓绝者才能在战斗中与骑士交锋。恐怖骑士只能用强力的魔法复活。他们与幽冥世界紧密相连，环绕着令人麻痹的寒风。恐怖骑士是被魔法强化了骨骼的骷髅亡灵，但他们依旧脆弱。"
#expertundeadleader
#hp 10
#str 12
#att 14
#def 12
#mr 14
#mor 30
#clearspec
#holy
#mounted
#pooramphibian
#pierceres
#undead
#inanimate
#neednoteat
#noheal
#spiritsight
#coldres 15
#poisonres 25
#fear 7
#cold 3
#formationfighter 3
#end

#newmonster 4198
#copystats 2212
#copyspr 2212
#name "裂魂食尸鬼"
#descr "惧魔中有一种被称为裂魂者的存在，其形态结构与食尸鬼较为接近。死灵法师们通过研究这种惧魔，成功创造出了更加强大的食尸鬼。裂魂食尸鬼是获得了部分惧魔的能力的不死生物。"
#req_lab
#okundeadleader
#clearweapons
#weapon 43
#hp 10
#str 12
#att 12
#mr 12
#prot 4
#mapmove 18
#maxage 500
#rpcost 25
#undead
#poisonres 25
#regeneration 0
#magicpower 0
#voidsanity 5
#end

#newmonster 4000
#copystats 198
#copyspr 2212
#name "裂魂食尸鬼原型体"
#unique
#end

#newmonster 4001
#copystats 2119
#spr1 "Ermor Enhanced\Monster\4001_1.tga"
#spr2 "Ermor Enhanced\Monster\4001_2.tga"
#clearweapons
#weapon 1
#end

#newmonster 4002
#copystats 396
#spr1 "Ermor Enhanced\Monster\4002_1.tga"
#spr2 "Ermor Enhanced\Monster\4002_2.tga"
#name "建筑师亡魂"
#descr "建筑师亡魂由一个玛瑞尼翁皇家学院建筑师的亡灵占据一具尸体而来，具备生前的建筑学知识。"
#clearmagic
#clearweapons
#weapon 638
#siegebonus 15
#castledef 15
#mason
#end

#newmonster 4566
#copystats 566
#spr1 "Ermor Enhanced\Monster\4566_1.tga"
#spr2 "Ermor Enhanced\Monster\4566_2.tga"
#name "幽鬼"
#descr "幽鬼是徘徊在冥界极深之处的灵魂，只有死亡化身才能将其召唤到凡间，也因此它们被死亡的崇拜者视作神圣的象征。"
#hp 24
#mr 16
#mor 30
#str 14
#att 12
#def 16
#stealthy 20
#invulnerable 10
#saltvul 0
#darkpower 2
#holy
#amphibian
#flying
#stormimmune
#end

#newmonster 4872
#copystats 392 -- Ashen Angel
#spr1 "Ermor Enhanced\God\4872_1.tga"
#spr2 "Ermor Enhanced\God\4872_2.tga"
#name "死亡化身"
#fixedname "夜星"
#descr "祂是死亡本身的人格具现之一，如今因某种原因降临到凡间。祂将参与真神之位的角逐，并在凡间播洒死亡与恐惧。"
#clearweapons
#weapon 1555 -- Scythe of the Reaper
-- #itemslots 65310 -- 4 hands,3 heads,body,feet,4 misc
#size 2
#mr 18
#clearspec
#coldres 40
#poisonres 40
#stealthy 20
#fear 10
#invulnerable 40
#undead
#ethereal
#teleport
#amphibian
#neednoteat
#spiritsight
#maxage 10000
#cold 3
#damagerev 4
#raiseonkill 100
#deathcurse
#immortal
#reformtime -2
#incscale 3 -- DEBUFF?
#popkill 444 -- DEBUFF
#domsummon2 4566
#gemprod 5 4
#tmpdeathgems 10
#gcost 40
#pathcost 10
#startdom 4
#magicskill 4 3
#magicskill 5 6
#magicskill 6 3
#magicskill 7 3
#nowish
#startitem 544
#end



----------Site-----------



#selectsite 24
#blessdtv 2
#end

#newsite 1500
#name "被污染的正义之堂"
#level 0
#path 5
#gems 0 2
#gems 4 1
#gems 5 4
#rarity 5
#deathrange 3
#blessdtv 2
#blessmr 1
#temple
#end

#newsite 1501
#name "皇家学院遗迹"
#level 0
#path 5
#gems 5 2
#rarity 5
#end



----------Nation-----------



#selectnation 44
#addgod 4872
#cheapgod40 4872
#end



----------Spell-----------



#newspell
#name "复活邪坟骑士"
#descr "死灵法师复活一名邪坟骑士。不洁而恐怖，邪坟骑士在死后依然为埃尔德盖特主教服务，与他们活着的时候一般。他们穿着锈蚀的板甲，在腐烂的马鞍中骑在骷髅马的顶端。看着邪坟骑士便是直面来自坟墓的恐惧，只有那些确信自身殉难者才能在战斗中与骑士交锋。"
#school 0
#researchlevel 0
#path 0 5
#pathlevel 0 2
#fatiguecost 200
#effect 10001
#damage 184
#nreff 1
#restricted 44 --MA Ermor
#end

#newspell
#copyspell "复活邪坟骑士"
#name "邪坟骑士小队"
#descr "这一咒语召唤少量邪坟骑士。邪坟骑士是神圣的，他们在死后依然为埃尔德盖特主教服务。"
#researchlevel 3
#fatiguecost 700
#nreff 5
#end

#newspell
#copyspell 293
#name "邪坟骑士团"
#descr "这一咒语一整支邪坟骑士团。邪坟骑士是神圣的，邪坟骑士在死后依然为埃尔德盖特主教服务。"
#researchlevel 8
#pathlevel 0 4
#fatiguecost 2400
#damage 184
#nreff 25
#end

#newspell
#name "复活恐怖骑士"
#descr "死灵法师复活一名恐怖骑士。恐怖骑士是强大的邪坟骑士团长。他们的装备与邪坟骑士相同和他们有着一样的力量和弱点。恐怖骑士是指挥官，能够引导亡者。"
#school 0
#researchlevel 0
#path 0 5
#pathlevel 0 2
#fatiguecost 400
#effect 10021
#damage 4184
#nreff 1
#restricted 44 --MA Ermor
#end

#newspell
#copyspell 894
#name "创造建筑师亡魂"
#descr "死灵法师从皇家学院遗迹召唤出一个徘徊的建筑师灵魂，并使其占据一具人类的尸体。这样创造的亡魂拥有生前的建筑学知识。"
#damage 4002
#onlyatsite 1501
#restricted 44 --MA Ermor
#end

-- Copy by DE
-- Alter
#newspell
#name "化身巫妖"
#descr "有了这个仪式的知识，死亡法师发现了如何移除他们的内脏，使他们永生。施法法师在伪神的祝福下对自己进行巫妖术仪式，作为永久效忠的报酬。如果成功，该对象将被转化为一个拥有强大魔法力量的不死生物，即巫妖，但如果过程失败，法师可能无法存活。高魔法抗力可以帮助仪式。如果巫妖的身体在物理上被摧毁，一个新的巫妖会从死去的人类的尘土中形成。无生命的或已经死亡的生物不能以这种方式改变他们的形态，而一些特别强大的独特的生物会抵制改变他们形态的尝试，因此无法被影响。"
#researchlevel 8
#school 4 -- Ench
#effect 10130 -- ritual self-transformation
#damage 178
#path 0 5
#pathlevel 0 5 -- D5
#fatiguecost 2500
#sethome
#spec 537526272 -- (no undead, lifeless, mindless, or casting UW)
#end



----------Event-----------




-----污染正义之堂-1-----


#newevent
#rarity 5
#req_code 0
#req_fornation 44
#req_pop0ok
#req_foundsite 1
#req_fullowner 44
#req_nonation 50
#req_capital 1
#msg "虽然你攻占了玛瑞尼翁的首都，但炽热正义之堂的圣火仍在熊熊燃烧，并给你和你的亡灵大军带来无休止的伤亡。它已经成了你欲除之而后快的眼中钉肉中刺。也许你可以尝试着解决这个令你头疼的烦恼，比如摧毁它永绝后患，或者……试着让它为你所用？[炽热正义之堂]" --The House of Fiery Justice
#flagland 1
#order 289 --1+32+256
#code -444
#end


-----污染正义之堂-2-----


#newevent
#rarity 5
#req_code -444
#req_fornation 44
#req_pop0ok
#req_foundsite 1
#req_fullowner 44
#req_targorder 105
#msg "你粗暴地摧毁了炽热正义之堂，圣火剧烈得爆裂开来摧毁了许多建筑。不止如此，余波的凶猛能量扩散到整个省份，对所有的生物造成了伤害。虽然伤亡惨重，但壮士断腕总好过钝刀割肉。而且并非完全没有收获，你从炽热正义之堂的残骸中找到了些许宝石。[炽热正义之堂]" --The House of Fiery Justice
#removesite -1
#lab 0
#temple 0
#strikeunits 30
#kill 70
#unrest 100
#decscale 2
#incscale 3
#decscale 5
#3d6vis 0
#1d6vis 4
#flagland 0
#order 0
#code 0
#end

#newevent
#rarity 5
#req_code -444
#req_fornation 44
#req_pop0ok
#req_foundsite 1
#req_fullowner 44
#req_targorder 100
#req_targgod 1
#msg "你开始用神力污染炽热正义之堂，受到邪神力量浸染的圣火苏醒了，火焰之灵开始反抗，不过在你的压制下反抗很微弱。[炽热正义之堂]" --The House of Fiery Justice
#nation 50
#com 2626
#1unit 594
#1unit 594
#order 0
#code -445
#end

#newevent
#rarity 5
#req_code -444
#req_fornation 44
#req_pop0ok
#req_foundsite 1
#req_fullowner 44
#req_targorder 100
#req_targprophet 1
#msg "你的先知以你的名义开始污染炽热正义之堂，受到邪神力量浸染的圣火苏醒了，火焰之灵开始反抗，不过在先知的压制下反抗不强。[炽热正义之堂]" --The House of Fiery Justice
#nation 50
#com 2626
#1unit 594
#1unit 594
#1unit 594
#order 0
#code -446
#end

#newevent
#rarity 5
#req_code -444
#req_fornation 44
#req_pop0ok
#req_foundsite 1
#req_fullowner 44
#req_targorder 100
#req_commander 1
#req_pathholy 3
#msg "你一名虔诚的死亡牧师以你的名义开始污染炽热正义之堂，受到邪神力量浸染的圣火苏醒了，火焰之灵开始反抗。[炽热正义之堂]" --The House of Fiery Justice
#nation 50
#com 2626
#1unit 594
#1unit 594
#1d3units 594
#order 0
#code -446
#end

#newevent
#rarity 5
#req_code -444
#req_fornation 44
#req_pop0ok
#req_foundsite 1
#req_fullowner 44
#req_targorder 108
#req_commander 1
#req_pathdeath 5
#msg "你一名强大的死灵法师用死灵魔法开始污染炽热正义之堂，受到邪恶魔法浸染的圣火苏醒了，火焰之灵开始剧烈地反抗。[炽热正义之堂]" --The House of Fiery Justice
#nation 50
#com 2626
#1unit 594
#2d3units 594
#order 0
#code -447
#end


-----污染正义之堂-3-----


#newevent
#rarity 5
#req_code -445
#req_fornation 44
#req_pop0ok
#req_foundsite 1
#req_fullowner 44
#req_nomonster 2626
#req_targgod 1
#msg "你成功用神力侵蚀了炽热正义之堂，被污染的正义之堂现在将为你所用！而这一过程也让你在火焰和死亡魔法上有了更深的理解。[炽热正义之堂]" --The House of Fiery Justice
#incscale 2
#incscale 3
#incdom 1
#temple 1
#removesite -1
#addsite 1500
#fireboost -1
#deathboost -1
#flagland 0
#code 0
#end

#newevent
#rarity 5
#req_code -446
#req_fornation 44
#req_pop0ok
#req_foundsite 1
#req_fullowner 44
#req_nomonster 2626
#req_targprophet 1
#msg "你的先知成功以你的名义污染了炽热正义之堂！这一过程也让他更深刻得体悟你的伟力。[炽热正义之堂]" --The House of Fiery Justice
#incscale 2
#incscale 3
#incdom 1
#temple 1
#removesite -1
#addsite 1500
#holyboost -1
#flagland 0
#code 0
#end

#newevent
#rarity 5
#req_code -446
#req_fornation 44
#req_pop0ok
#req_foundsite 1
#req_fullowner 44
#req_nomonster 2626
#req_commander 1
#req_pathholy 3
#msg "你一名虔诚的死亡牧师成功以你的名义污染了炽热正义之堂！这一过程也让他更深刻得体悟你的伟力。[炽热正义之堂]" --The House of Fiery Justice
#incscale 2
#incscale 3
#incdom 1
#temple 1
#removesite -1
#addsite 1500
#holyboost -1
#flagland 0
#code 0
#end

#newevent
#rarity 5
#req_code -447
#req_fornation 44
#req_pop0ok
#req_foundsite 1
#req_fullowner 44
#req_nomonster 2626
#req_commander 1
#req_pathdeath 5
#msg "你一名强大的死灵法师成功以死灵魔法污染了炽热正义之堂！这一过程也让他在火焰和死亡魔法上有了更深的理解。[炽热正义之堂]" --The House of Fiery Justice
#incscale 2
#incscale 3
#incdom 1
#temple 1
#removesite -1
#addsite 1500
#fireboost -1
#deathboost -1
#flagland 0
#code 0
#end


-----摧毁皇家学院-----


#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_foundsite 1
#req_fullowner 44
#req_nonation 50
#req_capital 1
#req_unique 1
#msg "在解决了正义之堂后，你终于有余力处理一些其他的问题，比如……皇家学院。在轻而易举地摧毁了皇家学院后，你收获了不少建筑学方面的资料文献及仪器，利用这些东西或许可以让你的国家像玛瑞尼翁那样拥有更坚固的堡垒。
坏消息是，你和你的死灵法师们一时看不太懂这些文献，它们属于另一个知识体系；而好消息是，你们可以直接复活一些建筑师来为你们服务，参照这些文献和现成的玛瑞尼翁堡垒，想必复刻应该不算难事……[被污染的正义之堂]"
#removesite 192
#addsite 1501
#nation 44
#com 4002
#end


-----转变食尸鬼-----


#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_targitem 337
#req_unique 1
#msg "无光灯笼的光芒吸引了惧魔的袭击！"
#tempunits 1
#assassin 2212
#code -400
#flagland 1
#end

#newevent
#rarity 5
#req_code -400
#req_fornation 44
#req_pop0ok
#req_unique 1
#msg "在遭到了一种被称为裂魂者的惧魔袭击后，帝国的死灵法师们发现它和食尸鬼的形态与构造颇有相似之处。
于是，死灵法师们就此展开了研究，希望能得到一些有用的成果，用于加强帝国的亡灵大军。"
#code -401
#delay25 4
#end

#newevent
#rarity 5
#req_code -401
#req_fornation 44
#req_pop0ok
#req_unique 1
#msg "对于裂魂者的研究成功了！
死灵法师们成功创造了一种拥有部分裂魂者惧魔能力的食尸鬼。
这种新型食尸鬼被命名为裂魂食尸鬼，它比普通的食尸鬼更加强大！
现在，死灵法师们可以在研究的闲暇之余，于实验室中将食尸鬼转化为裂魂食尸鬼了。"
#1unit 4000
#killmon 4000
#code 0
#flagland 0
#end

-- #newevent
-- #rarity 5
-- #req_deadmnr 4000
-- #req_fornation 44
-- #req_pop0ok
-- #req_targpath1 5
-- #req_targorder 4
-- #req_targowner 44
-- #req_monster 198
-- #msg "一些食尸鬼转化为了裂魂食尸鬼。"
-- #end

#newevent
#rarity 5
#req_deadmnr 4000
#req_fornation 44
#req_pop0ok
#req_targpath1 5
#req_targorder 4
#req_targowner 44
#req_monster 198
#killmon 198
#notext
#nolog
#nation 44
#1unit 4198
#end

#newevent
#rarity 5
#req_deadmnr 4000
#req_fornation 44
#req_pop0ok
#req_targpath1 5
#req_targorder 4
#req_targowner 44
#req_monster 198
#killmon 198
#notext
#nolog
#nation 44
#1unit 4198
#end

#newevent
#rarity 5
#req_deadmnr 4000
#req_fornation 44
#req_pop0ok
#req_targpath1 5
#req_targorder 4
#req_targowner 44
#req_monster 198
#killmon 198
#notext
#nolog
#nation 44
#1unit 4198
#end

#newevent
#rarity 5
#req_deadmnr 4000
#req_fornation 44
#req_pop0ok
#req_targpath1 5
#req_targorder 4
#req_targowner 44
#req_monster 198
#killmon 198
#notext
#nolog
#nation 44
#1unit 4198
#end

#newevent
#rarity 5
#req_deadmnr 4000
#req_fornation 44
#req_pop0ok
#req_targpath1 5
#req_targorder 4
#req_targowner 44
#req_monster 198
#killmon 198
#notext
#nolog
#nation 44
#1unit 4198
#end


-----久死者晋升-----


--矛
#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_5monsters 196
--#msg "DEBUG-久死者矛手晋升1"
#notext
#nolog
#killmon 196
#killmon 196
#killmon 196
#killmon 196
#killmon 196
#nation 44
#1unit 2120
#1unit 2120
#1unit 2120
#1unit 2120
#1unit 2120
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_5monsters 196
--#msg "DEBUG-久死者矛手晋升1"
#notext
#nolog
#killmon 196
#killmon 196
#killmon 196
#killmon 196
#killmon 196
#nation 44
#1unit 2120
#1unit 2120
#1unit 2120
#1unit 2120
#1unit 2120
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_5monsters 2120
--#msg "DEBUG-久死者矛手晋升2"
#notext
#nolog
#killmon 2120
#killmon 2120
#killmon 2120
#killmon 2120
#killmon 2120
#nation 44
#1unit 195
#1unit 195
#1unit 195
#1unit 195
#1unit 195
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 2120
--#msg "DEBUG-久死者矛手晋升2"
#notext
#nolog
#killmon 2120
#killmon 2120
#nation 44
#1unit 195
#1unit 195
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_5monsters 195
--#msg "DEBUG-久死者矛手矛手晋升3"
#notext
#nolog
#killmon 195
#killmon 195
#killmon 195
#killmon 195
#killmon 195
#nation 44
#1unit 2121
#1unit 2121
#1unit 2121
#1unit 2121
#1unit 2121
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_monster 195
--#msg "DEBUG-久死者矛手晋升3"
#notext
#nolog
#killmon 195
#nation 44
#1unit 2121
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 2121
--#msg "DEBUG-久死者长矛手晋升"
#notext
#nolog
#killmon 2121
#killmon 2121
#nation 44
#1unit 2451
#1unit 2451
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 2121
--#msg "DEBUG-久死者长矛手晋升"
#notext
#nolog
#killmon 2121
#killmon 2121
#nation 44
#1unit 2451
#1unit 2451
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 2451
--#msg "DEBUG-久死者重装步兵晋升"
#notext
#nolog
#killmon 2451
#killmon 2451
#nation 44
#1unit 2122
#1unit 2122
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_monster 2122
--#msg "DEBUG-久死者军团晋升"
#notext
#nolog
#killmon 2122
#nation 44
#1unit 1657
#end

--剑
#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_5monsters 194
--#msg "DEBUG-久死者剑士晋升1"
#notext
#nolog
#killmon 194
#killmon 194
#killmon 194
#killmon 194
#killmon 194
#nation 44
#1unit 193
#1unit 193
#1unit 193
#1unit 193
#1unit 193
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 194
--#msg "DEBUG-久死者剑士晋升1"
#notext
#nolog
#killmon 194
#killmon 194
#nation 44
#1unit 193
#1unit 193
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 193
--#msg "DEBUG-久死者巨剑士晋升1"
#notext
#nolog
#killmon 193
#killmon 193
#nation 44
#1unit 2123
#1unit 2123
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 193
--#msg "DEBUG-久死者巨剑士晋升1"
#notext
#nolog
#killmon 193
#killmon 193
#nation 44
#1unit 2123
#1unit 2123
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 2123
--#msg "DEBUG-久死者巨剑士晋升2"
#notext
#nolog
#killmon 2123
#killmon 2123
#nation 44
#1unit 2124
#1unit 2124
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_5monsters 192
--#msg "DEBUG-久死者剑士晋升2"
#notext
#nolog
#killmon 192
#killmon 192
#killmon 192
#killmon 192
#killmon 192
#nation 44
#1unit 191
#1unit 191
#1unit 191
#1unit 191
#1unit 191
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_monster 192
--#msg "DEBUG-久死者剑士晋升2"
#notext
#nolog
#killmon 192
#nation 44
#1unit 191
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 191
--#msg "DEBUG-久死军团晋升"
#notext
#nolog
#killmon 191
#killmon 191
#nation 44
#1unit 1658
#1unit 1658
#end

--久死军团
#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 186
--#msg "DEBUG-久死军团兵晋升"
#notext
#nolog
#killmon 186
#killmon 186
#nation 44
#1unit 187
#1unit 187
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 186
--#msg "DEBUG-久死军团兵晋升"
#notext
#nolog
#killmon 186
#killmon 186
#nation 44
#1unit 187
#1unit 187
#end

--无魂者

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_5monsters 197
--#msg "DEBUG-无魂者晋升"
#notext
#nolog
#killmon 197
#killmon 197
#killmon 197
#killmon 197
#killmon 197
#nation 44
#1unit -2500
#1unit -2500
#1unit -2500
#1unit -2500
#1unit -2500
#end

#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 197
--#msg "DEBUG-无魂者晋升"
#notext
#nolog
#killmon 197
#killmon 197
#nation 44
#1unit -2500
#1unit -2500
#end

--剑
#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 914
--#msg "DEBUG-无魂者晋升"
#notext
#nolog
#killmon 914
#killmon 914
#nation 44
#1unit 4001
#1unit 4001
#end

--矛
#newevent
#rarity 5
#req_fornation 44
#req_pop0ok
#req_fort 1
#req_land 1
#req_2monsters 915
--#msg "DEBUG-无魂者晋升"
#notext
#nolog
#killmon 915
#killmon 915
#nation 44
#1unit 2119
#1unit 2119
#end