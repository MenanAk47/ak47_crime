Config = {}
Config.PatreonEmail = 'Your Patron Email'               --Take authorization with your patreon email.
Config.SharedObjectName = 'esx:getSharedObject'         --Change if you Shared Object Name is different
Config.Locale = 'en'

Config.CheckCanCarryItem = false

Config.Whitelistedjobs = {
	['police'] = true,
	['sheriff'] = true,
}

Config.DamageChance = {
	cuff = 70,  -- 70%
	key = 70,	-- 70%
	blindfold = 70, --70%
}

Config.HandsUpAnimationData = {
	dir = 'random@mugging3',
	anim = 'handsup_standing_base',
}

Config.UnTieWeapons = {
	[`weapon_dagger`] = true,
	[`weapon_knife`] = true,
	[`weapon_switchblade`] = true,
}

Config.BlindFold = {
	skinOn = {
		male = {
			mask_1 = 62, mask_2 = 0,
		},
		female = {
			mask_1 = 126, mask_2 = 0,
		},
	},
	skinOff = {
		male = {
			mask_1 = 0, mask_2 = 0,
		},
		female = {
			mask_1 = 0, mask_2 = 0,
		},
	},
}

