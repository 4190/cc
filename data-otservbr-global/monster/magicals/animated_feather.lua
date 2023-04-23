local mType = Game.createMonsterType("Animated Feather")
local monster = {}

monster.description = "an animated feather"
monster.experience = 9860
monster.outfit = {
	lookType = 1058,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1671
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "The Secret Library."
	}

monster.health = 13000
monster.maxHealth = 13000
monster.race = "ink"
monster.corpse = 28578
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = false,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{name = "small sapphire", chance = 40000, maxCount = 12},
	{name = "platinum coin", chance = 80000, maxCount = 21},
	{id = 28570, chance = 80000, maxCount = 5}, -- glowing rune
	{name = "ultimate mana potion", chance = 20000, maxCount = 2},
	{id = 3051, chance = 15000}, -- energy ring
	{id = 7441, chance = 15000}, -- ice cube
	{name = "quill", chance = 15000},
	{name = "glacier mask", chance = 10000},
	{name = "small diamond", chance = 5000, maxCount = 12},
	{name = "diamond sceptre", chance = 5000},
	{name = "life crystal", chance = 4000},
	{name = "Glacier Amulet", chance = 3000},
	{name = "Crystal Mace", chance = 3000},
	{name = "Golden Mug", chance = 3000},
	{name = "Hailstorm Rod", chance = 3000},
	{name = "Glacial Rod", chance = 1000},
	{name = "Sapphire Hammer", chance = 1000},
	{name = "Leviathan's Amulet", chance = 500},
	{name = "Crystalline Armor", chance = 200},
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -800, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -800, maxDamage = -1200, length = 3, spread = 2, effect = CONST_ME_ICEATTACK, target = false},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -800, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -800, range = 5, radius = 3, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = true} 

	
}

monster.defenses = {
	defense = 40,
	armor = 79
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -18},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
