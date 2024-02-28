assert(BigWigs, "BigWigs not found!")

------------------------------
--      Are you local?      --
------------------------------

local L = AceLibrary("AceLocale-2.2"):new("BigWigsSound")
--~~ local dewdrop = DewdropLib:GetInstance("1.0")

local sounds = {
	Long = "Interface\\Addons\\BigWigs\\Sounds\\Long.mp3",
	Info = "Interface\\Addons\\BigWigs\\Sounds\\Info.ogg",
	Alert = "Interface\\Addons\\BigWigs\\Sounds\\Alert.mp3",
	Alarm = "Interface\\Addons\\BigWigs\\Sounds\\Alarm.mp3",
	Victory = "Interface\\Addons\\BigWigs\\Sounds\\Victory.mp3",

	Beware = "Interface\\Addons\\BigWigs\\Sounds\\Beware.wav",
	RunAway = "Interface\\Addons\\BigWigs\\Sounds\\RunAway.wav",

	One = "Interface\\Addons\\BigWigs\\Sounds\\1.ogg",
	Two = "Interface\\Addons\\BigWigs\\Sounds\\2.ogg",
	Three = "Interface\\Addons\\BigWigs\\Sounds\\3.ogg",
	Four = "Interface\\Addons\\BigWigs\\Sounds\\4.ogg",
	Five = "Interface\\Addons\\BigWigs\\Sounds\\5.ogg",
	Six = "Interface\\Addons\\BigWigs\\Sounds\\6.ogg",
	Seven = "Interface\\Addons\\BigWigs\\Sounds\\7.ogg",
	Eight = "Interface\\Addons\\BigWigs\\Sounds\\8.ogg",
	Nine = "Interface\\Addons\\BigWigs\\Sounds\\9.ogg",
	Ten = "Interface\\Addons\\BigWigs\\Sounds\\10.ogg",

	Murloc = "Sound\\Creature\\Murloc\\mMurlocAggroOld.wav",
	Pain = "Sound\\Creature\\Thaddius\\THAD_NAXX_ELECT.wav",
	Shakira = "Interface\\Addons\\BigWigs\\Sounds\\Shakira.mp3",

	BikeHorn = "Interface\\Addons\\BigWigs\\Sounds\\BikeHorn.ogg",
	AirHorn = "Interface\\Addons\\BigWigs\\Sounds\\AirHorn.ogg",

	ShackleBroke = "Interface\\Addons\\BigWigs\\Sounds\\ShackleBroke.mp3",
	ShackleOne = "Interface\\Addons\\BigWigs\\Sounds\\ShackleOne.mp3",
	ShackleTwo = "Interface\\Addons\\BigWigs\\Sounds\\ShackleTwo.mp3",
	ShackleThree = "Interface\\Addons\\BigWigs\\Sounds\\ShackleThree.mp3",

	MarkOne = "Interface\\Addons\\BigWigs\\Sounds\\MarkOne.mp3",
	MarkTwo = "Interface\\Addons\\BigWigs\\Sounds\\MarkTwo.mp3",
	MarkThree = "Interface\\Addons\\BigWigs\\Sounds\\MarkThree.mp3",
	MarkFour = "Interface\\Addons\\BigWigs\\Sounds\\MarkFour.mp3",
	MarkFive = "Interface\\Addons\\BigWigs\\Sounds\\MarkFive.mp3",
	MarkSix = "Interface\\Addons\\BigWigs\\Sounds\\MarkSix.mp3",
	MarkSeven = "Interface\\Addons\\BigWigs\\Sounds\\MarkSeven.mp3",
	MarkEight = "Interface\\Addons\\BigWigs\\Sounds\\MarkEight.mp3",
	MarkNine = "Interface\\Addons\\BigWigs\\Sounds\\MarkNine.mp3",
	MarkTen = "Interface\\Addons\\BigWigs\\Sounds\\MarkTen.mp3",
	MarkEleven = "Interface\\Addons\\BigWigs\\Sounds\\MarkEleven.mp3",
	MarkTwelve = "Interface\\Addons\\BigWigs\\Sounds\\MarkTwelve.mp3",
	HealerOneRotate = "Interface\\Addons\\BigWigs\\Sounds\\HealerOneRotate.mp3",
	HealerTwoRotate = "Interface\\Addons\\BigWigs\\Sounds\\HealerTwoRotate.mp3",
	HealerThreeRotate = "Interface\\Addons\\BigWigs\\Sounds\\HealerThreeRotate.mp3",
	VoidZoneMove = "Interface\\Addons\\BigWigs\\Sounds\\VoidZoneMove.mp3",

	ShadowFissure = "Interface\\Addons\\BigWigs\\Sounds\\ShadowFissure.mp3",
	MindControl = "Interface\\Addons\\BigWigs\\Sounds\\MindControl.mp3",
	FrostBlast = "Interface\\Addons\\BigWigs\\Sounds\\FrostBlast.mp3",

	Negative = "Interface\\Addons\\BigWigs\\Sounds\\Negative.mp3",
	Positive = "Interface\\Addons\\BigWigs\\Sounds\\Positive.mp3",
	NegativeSwitchSides = "Interface\\Addons\\BigWigs\\Sounds\\NegativeSwitchSides.mp3",
	PositiveSwitchSides = "Interface\\Addons\\BigWigs\\Sounds\\PositiveSwitchSides.mp3",

	DispelPoison = "Interface\\Addons\\BigWigs\\Sounds\\DispelPoison.mp3",

	Dance = "Interface\\Addons\\BigWigs\\Sounds\\Dance.mp3",
}


----------------------------
--      Localization      --
----------------------------

L:RegisterTranslations("enUS", function()
	return {
		["Sounds"] = true,
		["sounds"] = true,
		["Options for sounds."] = true,

		["toggle"] = true,
		["Use sounds"] = true,
		["Toggle sounds on or off."] = true,
		["default"] = true,
		["Default only"] = true,
		["Use only the default sound."] = true,
	}
end)

L:RegisterTranslations("esES", function()
	return {
		["Sounds"] = "Sonidos",
		--["sounds"] = true,
		["Options for sounds."] = "Opciones para sonidos",

		--["toggle"] = "Alternar",
		["Use sounds"] = "Usar sonidos",
		["Toggle sounds on or off."] = "Alterna los sonidos activos o desactivos",
		--["default"] = "defecto",
		["Default only"] = "Solamente defecto",
		["Use only the default sound."] = "Solamente usa el sonido por defecto",
	}
end)

L:RegisterTranslations("koKR", function()
	return {
		["Sounds"] = "효과음",
		["Options for sounds."] = "효과음 옵션.",

		["Use sounds"] = "효과음 사용",
		["Toggle sounds on or off."] = "효과음을 켜거나 끔.",
		["Default only"] = "기본음",
		["Use only the default sound."] = "기본음만 사용.",
	}
end)

L:RegisterTranslations("deDE", function()
	return {
		["Sounds"] = "Sound",
		["Options for sounds."] = "Optionen f\195\188r Sound.",
		["Use sounds"] = "Sound nutzen",
		["Toggle sounds on or off."] = "Sound aktivieren/deaktivieren.",
		["Default only"] = "Nur Standard",
		["Use only the default sound."] = "Nur Standard Sound.",
	}
end)

----------------------------------
--      Module Declaration      --
----------------------------------

BigWigsSound = BigWigs:NewModule(L["Sounds"])
BigWigsSound.defaultDB = {
	defaultonly = false,
	sound = true,
}
BigWigsSound.consoleCmd = L["sounds"]
BigWigsSound.consoleOptions = {
	type = "group",
	name = L["Sounds"],
	desc = L["Options for sounds."],
	args = {
		[L["toggle"]] = {
			type = "toggle",
			name = L["Sounds"],
			desc = L["Toggle sounds on or off."],
			get = function()
				return BigWigsSound.db.profile.sound
			end,
			set = function(v)
				BigWigsSound.db.profile.sound = v
				BigWigs:ToggleModuleActive(L["Sounds"], v)
			end,
		},
		[L["default"]] = {
			type = "toggle",
			name = L["Default only"],
			desc = L["Use only the default sound."],
			get = function()
				return BigWigsSound.db.profile.defaultonly
			end,
			set = function(v)
				BigWigsSound.db.profile.defaultonly = v
			end,
		},
	}
}

------------------------------
--      Initialization      --
------------------------------

function BigWigsSound:OnEnable()
	self:RegisterEvent("BigWigs_Message")
	self:RegisterEvent("BigWigs_Sound")
end
function BigWigsSound:OnDisable()
	BigWigs:DebugMessage("OnDisable")
end

function BigWigsSound:BigWigs_Message(text, color, noraidsay, sound, broadcastonly)
	if self.db.profile.sound then
		if not text or sound == false or broadcastonly then
			return
		end

		if sounds[sound] and not self.db.profile.defaultonly then
			PlaySoundFile(sounds[sound])
		else
			PlaySound("RaidWarning")
		end
	end
end

function BigWigsSound:BigWigs_Sound(sound)
	if self.db.profile.sound then
		if sounds[sound] and not self.db.profile.defaultonly then
			PlaySoundFile(sounds[sound])
		else
			PlaySound("RaidWarning")
		end
	end
end
