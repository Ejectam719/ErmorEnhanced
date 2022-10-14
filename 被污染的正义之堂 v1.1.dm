#modname "被污染的正义之堂 v1.10"
#description "允许厄尔莫污染炽热正义之堂。"
#version 1.10

--DEBUG
--#selectnation 44
--#startsite "炽热正义之堂"
--#end

--Mask	Event Order		Chinese		Targ Order
--0		Nil				清除			-
--1		Investigate		调查			100
--2		Continue		继续			101
--4		Accept			接受			102
--8		Decline			拒绝			103
--16	Withdraw		撤退			104
--32	Attack			攻击			105
--64	Diplomacy		外交			106
--128	Subterfuge		托辞			107
--256	Magic			魔法			108

#newsite 1500
#name "被污染的正义之堂"
#level 0
#path 5
#gems 0 2
#gems 4 1
#gems 5 4
#rarity 5
#deathrange 3
#temple
#end

#newevent
#rarity 5
#req_fullowner 44
#req_fornation 44
#req_foundsite 1
#req_code 0
#msg "虽然你攻占了玛瑞尼翁的首都，但炽热正义之堂的圣火仍在熊熊燃烧，并给你和你的亡灵大军带来无休止的伤亡。它已经成了你欲除之而后快的眼中钉肉中刺。也许你可以尝试着解决这个令你头疼的烦恼，比如摧毁它永绝后患，或者……试着让它为你所用？[炽热正义之堂]" --The House of Fiery Justice
#flagland 1
#order 289 --1+32+256
#code -444
#end

#newevent
#rarity 5
#req_fullowner 44
#req_fornation 44
#req_foundsite 1
#req_code -444
#req_targorder 100
#req_targgod 1
#msg "你用神力污染了炽热正义之堂！这一过程也让你在火焰和死亡魔法上有了更深的理解。[炽热正义之堂]" --The House of Fiery Justice
#incscale 2
#incscale 3
#incdom 1
#temple 1
#removesite -1
#addsite 1500
#fireboost -1
#deathboost -1
#flagland 0
#order 0
#code 0
#end

#newevent
#rarity 5
#req_fullowner 44
#req_fornation 44
#req_foundsite 1
#req_code -444
#req_targorder 100
#req_targprophet 1
#msg "你的先知以你的名义污染了炽热正义之堂！这一过程也让他更深刻得体悟你的伟力。[炽热正义之堂]" --The House of Fiery Justice
#incscale 2
#incscale 3
#incdom 1
#temple 1
#removesite -1
#addsite 1500
#holyboost -1
#flagland 0
#order 0
#code 0
#end

#newevent
#rarity 5
#req_fullowner 44
#req_fornation 44
#req_foundsite 1
#req_code -444
#req_targorder 100
#req_commander 1
#req_pathholy 8 3
#msg "你一名虔诚的死亡牧师污染了炽热正义之堂！这一过程也让他更深刻得体悟你的伟力。[炽热正义之堂]" --The House of Fiery Justice
#incscale 2
#incscale 3
#incdom 1
#temple 1
#removesite -1
#addsite 1500
#holyboost -1
#flagland 0
#order 0
#code 0
#end

#newevent
#rarity 5
#req_fullowner 44
#req_fornation 44
#req_foundsite 1
#req_code -444
#req_targorder 105
#msg "你粗暴地摧毁了炽热正义之堂，圣火剧烈得爆裂开来摧毁了许多建筑。不止如此，余波的凶猛能量扩散到整个省份，对所有的生物造成了伤害。虽然伤亡惨重，但壮士断腕总好过钝刀割肉。而且并非完全没有收获，你从炽热正义之堂的残骸中找到了不少宝石。[炽热正义之堂]" --The House of Fiery Justice
#removesite -1
#lab 0
#temple 0
#strikeunits 30
#kill 70
#3d6vis 0
#1d6vis 4
#flagland 0
#order 0
#code 0
#end

#newevent
#rarity 5
#req_fullowner 44
#req_fornation 44
#req_foundsite 1
#req_code -444
#req_targorder 108
#req_commander 1
#req_pathdeath 5 5
#msg "你一名强大的死灵法师污染了炽热正义之堂！这一过程也让他在火焰和死亡魔法上有了更深的理解。[炽热正义之堂]" --The House of Fiery Justice
#incscale 2
#incscale 3
#incdom 1
#temple 1
#removesite -1
#addsite 1500
#fireboost -1
#deathboost -1
#flagland 0
#order 0
#code 0
#end

