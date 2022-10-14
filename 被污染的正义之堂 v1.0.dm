#modname "被污染的正义之堂 v1.00"
#description "允许厄尔莫污染炽热正义之堂。"
#version 1.00

--DEBUG
--#selectnation 44
--#startsite "炽热正义之堂"
--#end

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
#req_fornation 44
#req_foundsite 1
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
#end

#newevent
#rarity 5
#req_fornation 44
#req_foundsite 1
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
#end

#newevent
#rarity 5
#req_fornation 44
#req_foundsite 1
#req_targprophet 1
#msg "你的先知以你的名义污染了炽热正义之堂！这一过程也让他更深刻得体悟你的伟力。[炽热正义之堂]" --The House of Fiery Justice
#incscale 2
#incscale 3
#incdom 1
#temple 1
#removesite -1
#addsite 1500
#holyboost -1
#end

#newevent
#rarity 5
#req_fornation 44
#req_foundsite 1
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
#end