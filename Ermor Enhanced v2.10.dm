#modname "Ermor Enhanced v2.10"
#description "对邪坟骑士、久死军团的能力稍作调整，将邪坟骑士加入厄尔莫的亡灵召唤体系，允许污染炽热正义之堂，允许将食尸鬼转化为裂魂食尸鬼，允许久死者和无魂者晋升。"
#version 2.10

--DEBUG
--#selectnation 44
--#startsite "炽热正义之堂"
--#end

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
#copyspr 184
#name "恐怖骑士"
#descr "恐怖骑士是强大的邪坟骑士团长，现在他们被黑暗魔法复活再次为帝国效忠。他们装备着锈蚀的板甲，在腐烂的马鞍中骑在骷髅马的顶端。看着邪坟骑士便是直面来自坟墓的恐惧，只有那些确信自身殉难者才能在战斗中与骑士交锋。恐怖骑士只能用强力的魔法复活。他们与幽冥世界紧密相连，环绕着令人麻痹的寒风。恐怖骑士是被魔法强化了骨骼的骷髅亡灵，但他们依旧脆弱。"
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
#spiritsight
#coldres 15
#poisonres 25
#fear 7
#cold 3
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

----------Site-----------


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


----------Nation-----------


-- #selectnation 44
-- #addrecunit 4198
-- #end


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

-----转变食尸鬼-----

-- #newevent
-- #rarity 5
-- #req_fornation 44
-- #req_turn 3
-- #req_unique 1
-- #msg "debug[无光灯笼]"
-- #magicitem 9
-- #end

#newevent
#rarity 5
#req_fornation 44
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
#req_unique 1
#msg "对于裂魂者的研究成功了！
死灵法师们成功创造了一种拥有部分裂魂者惧魔能力的食尸鬼。
这种新型食尸鬼被命名为裂魂食尸鬼，它比普通的食尸鬼更加强大！
现在，死灵法师们可以在研究的闲暇之余，于实验室中将食尸鬼转化为裂魂食尸鬼了。"
#nation 44
#tempunits 1
#1unit 4000
#code 0
#flagland 0
#end

#newevent
#rarity 5
#req_deadmnr 4000
#req_fornation 44
#req_targpath1 5
#req_targorder 4
#req_targowner 44
#req_monster 198
#msg "一些食尸鬼转化为了裂魂食尸鬼。"
#end

#newevent
#rarity 5
#req_deadmnr 4000
#req_fornation 44
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
#req_fort 1
#req_land 1
#req_5monsters 196
--#msg "久死者矛手晋升1"
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
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_5monsters 196
--#msg "久死者矛手晋升1"
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
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_5monsters 2120
--#msg "久死者矛手晋升2"
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
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 2120
--#msg "久死者矛手晋升2"
#notext
#nolog
#killmon 2120
#killmon 2120
#nation 44
#1unit 195
#1unit 195
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_5monsters 195
--#msg "久死者矛手矛手晋升3"
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
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_monster 195
--#msg "久死者矛手晋升3"
#notext
#nolog
#killmon 195
#nation 44
#1unit 2121
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 2121
--#msg "久死者长矛手晋升"
#notext
#nolog
#killmon 2121
#killmon 2121
#nation 44
#1unit 2451
#1unit 2451
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 2121
--#msg "久死者长矛手晋升"
#notext
#nolog
#killmon 2121
#killmon 2121
#nation 44
#1unit 2451
#1unit 2451
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 2451
--#msg "久死者重装步兵晋升"
#notext
#nolog
#killmon 2451
#killmon 2451
#nation 44
#1unit 2122
#1unit 2122
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_monster 2122
--#msg "久死者军团晋升"
#notext
#nolog
#killmon 2122
#nation 44
#1unit 1657
#code -402
#resetcodedelay -402
#end

--剑
#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_5monsters 194
--#msg "久死者剑士晋升1"
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
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 194
--#msg "久死者剑士晋升1"
#notext
#nolog
#killmon 194
#killmon 194
#nation 44
#1unit 193
#1unit 193
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 193
--#msg "久死者巨剑士晋升1"
#notext
#nolog
#killmon 193
#killmon 193
#nation 44
#1unit 2123
#1unit 2123
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 193
--#msg "久死者巨剑士晋升1"
#notext
#nolog
#killmon 193
#killmon 193
#nation 44
#1unit 2123
#1unit 2123
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 2123
--#msg "久死者巨剑士晋升2"
#notext
#nolog
#killmon 2123
#killmon 2123
#nation 44
#1unit 2124
#1unit 2124
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_5monsters 192
--#msg "久死者剑士晋升2"
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
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_monster 192
--#msg "久死者剑士晋升2"
#notext
#nolog
#killmon 192
#nation 44
#1unit 191
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 191
--#msg "久死军团晋升"
#notext
#nolog
#killmon 191
#killmon 191
#nation 44
#1unit 1658
#1unit 1658
#code -402
#resetcodedelay -402
#end

--久死军团
#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 186
--#msg "久死军团兵晋升"
#notext
#nolog
#killmon 186
#killmon 186
#nation 44
#1unit 187
#1unit 187
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 186
--#msg "久死军团兵晋升"
#notext
#nolog
#killmon 186
#killmon 186
#nation 44
#1unit 187
#1unit 187
#code -402
#resetcodedelay -402
#end

#newevent
#rarity 5
#req_fornation 44
#req_code -402
#msg "用本地的资源为部分久死者提供了装备。"
#end

--无魂者
--197 914
--197 915 2119

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_5monsters 197
--#msg "无魂者晋升"
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
#code -403
#resetcodedelay -403
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 197
--#msg "无魂者晋升"
#notext
#nolog
#killmon 197
#killmon 197
#nation 44
#1unit -2500
#1unit -2500
#code -403
#resetcodedelay -403
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 914
--#msg "无魂者晋升"
#notext
#nolog
#killmon 914
#killmon 914
#nation 44
#1unit 4001
#1unit 4001
#code -403
#resetcodedelay -403
#end

#newevent
#rarity 5
#req_fornation 44
#req_fort 1
#req_land 1
#req_2monsters 915
--#msg "无魂者晋升"
#notext
#nolog
#killmon 915
#killmon 915
#nation 44
#1unit 2119
#1unit 2119
#code -403
#resetcodedelay -403
#end

#newevent
#rarity 5
#req_fornation 44
#req_code -403
#msg "用本地的资源为部分无魂者提供了装备。"
#end