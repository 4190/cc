-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 50,
		multiplier = 6
	}, {
		minlevel = 9,
		multiplier = 3
	}
}

skillsStages = {
	{
		minlevel = 10,
		multiplier = 5
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		multiplier = 5
	}
}
