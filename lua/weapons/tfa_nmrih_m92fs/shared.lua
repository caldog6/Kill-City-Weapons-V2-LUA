SWEP.Base = "tfa_nmrih_base_fa"
SWEP.Category = "TFA Kill City"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.Slot = 1

SWEP.PrintName = "Beretta M92FS"

SWEP.ViewModel			= "models/weapons/tfa_nmrih/v_fa_m92fs.mdl" --Viewmodel path
SWEP.ViewModelFOV = 50

SWEP.WorldModel			= "models/weapons/tfa_nmrih/w_fa_m92fs.mdl" --Viewmodel path
SWEP.HoldType = "pistol"
SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -3,
        Right = 1,
        Forward = 3.5,
        },
        Ang = {
        Up = -1,
        Right = -2,
        Forward = 178
        },
		Scale = 1.1
}

SWEP.Scoped = false

SWEP.Shotgun = false
SWEP.ShellTime = 0.75

SWEP.Primary.ClipSize = 15
SWEP.Primary.DefaultClip = 15

SWEP.Primary.Sound = "Weapon_Beretta.Single"
SWEP.Primary.Ammo = "pistol"
SWEP.Primary.Automatic = false
SWEP.Primary.RPM = 600
SWEP.Primary.Damage = 19
SWEP.Primary.NumShots = 1
SWEP.Primary.Spread		= .012					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .006	-- Ironsight accuracy, should be the same for shotguns

SWEP.Primary.KickUp			= 0.35					-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 0.2					-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.2					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.6 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

SWEP.Primary.SpreadMultiplierMax = 4 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 1.1 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 7 --How much the spread recovers, per second.

SWEP.IronRecoilMultiplier = 0.8 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.6 --Less is more.

SWEP.Secondary.IronFOV = 90 --Ironsights FOV (90 = same)
SWEP.BoltAction = false --Un-sight after shooting?
SWEP.BoltTimerOffset = 0.0 --How long do we remain in ironsights after shooting?

SWEP.IronSightsPos = Vector(-2.53, -3.168, 1.039)
SWEP.IronSightsAng = Vector(0.204, 0, 0)

SWEP.RunSightsPos = Vector(-0.202, -13.664, -9.04)
SWEP.RunSightsAng = Vector(64.019, 0, 0)

SWEP.InspectionPos = Vector(11.112, -13.193, 1.041)
SWEP.InspectionAng = Vector(40, 38.693, 40)

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0.254, 0.09), angle = Angle(15.968, -11.193, 1.437) },
	["ValveBiped.Bip01_R_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(3.552, 4.526, 0) },
	["Thumb04"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(6, 0, 0) },
	["MagLite"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, -30), angle = Angle(0, 0, 0) }
}

SWEP.Primary.Range = 16*164.042*2 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 0.3 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.BlowbackEnabled = true
SWEP.BlowbackVector = Vector(0,-2.5,0)
SWEP.Blowback_PistolMode = true
SWEP.BlowbackBoneMods = {
	["Hammer"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -0.831) },
	["Slide"] = { scale = Vector(1, 1, 1), pos = Vector(-2.5, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.MoveSpeed = 1
SWEP.IronSightsMoveSpeed  = SWEP.MoveSpeed * 0.8