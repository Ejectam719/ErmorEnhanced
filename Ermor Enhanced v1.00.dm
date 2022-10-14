#modname "Ermor Enhanced v1.00"
#description "对邪坟骑士、久死军团的能力稍作调整，将邪坟骑士加入厄尔莫的亡灵召唤体系，提供裂魂食尸鬼的招募，允许污染炽热正义之堂。"
#version 1.00

--DEBUG
--#selectnation 44
--#startsite "炽热正义之堂"
--#end

----------Unit-----------


-- 邪坟骑士
#selectmonster 184
#fear 5
#formationfighter 3
#end

-- 久死军团轻步兵
#selectmonster 186
#formationfighter 2
#end

-- 久死军团兵
#selectmonster 187
#formationfighter 2
#end

-- 久死军团后备兵
#selectmonster 1657
#formationfighter 4
#end

-- 久死军团壮年兵
#selectmonster 1658
#formationfighter 2
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

#newmonster 4198
#copystats 2212
#copyspr 2212
#name "裂魂食尸鬼"
#descr "惧魔中有一种被称为裂魂者的存在，其形态结构与食尸鬼较为接近。死灵法师们通过研究这种惧魔，成功创造出了更加强大的食尸鬼。裂魂食尸鬼是获得了部分惧魔的能力的不死生物。"
#req_lab
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

-- #clearspec
-- #undead
-- #pooramphibian
-- #pierceres
-- #neednoteat
-- #poisonres 25
-- #darkvision 100
-- #magicpower 0
-- #fear 5
-- #voidsanity 5


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
#temple
#end


----------Nation-----------


#selectnation 44
#addrecunit 4198
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
#damage 4444
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

----------

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
#req_pathholy 8 3
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
#req_pathdeath 5 5
#msg "你一名强大的死灵法师用死灵魔法开始污染炽热正义之堂，受到邪恶魔法浸染的圣火苏醒了，火焰之灵开始剧烈地反抗。[炽热正义之堂]" --The House of Fiery Justice
#nation 50
#com 2626
#1unit 594
#2d3units 594
#order 0
#code -447
#end

----------

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
#req_pathholy 8 3
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
#req_pathdeath 5 5
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