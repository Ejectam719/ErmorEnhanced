#modname "厄尔莫的邪坟骑士 v1.00"
#description "将邪坟骑士加入厄尔莫的亡灵召唤体系。"
#version 1.00

#selectmonster 184
#fear 5
#end

#newmonster 4444
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
#fear 7
#cold 3
#end

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
