SWEP.Base = "tfa_nmrih_base_fa"
SWEP.Category = "TFA Kill City"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.Slot = 3

SWEP.PrintName = "Beretta Perennia SV10"

SWEP.ViewModel			= "models/weapons/tfa_nmrih/v_fa_sv10.mdl" --Viewmodel path
SWEP.ViewModelFOV = 50

SWEP.WorldModel			= "models/weapons/tfa_nmrih/w_fa_sv10.mdl" --Viewmodel path
SWEP.HoldType = "shotgun"
SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -2,
        Right = 1,
        Forward = 10,
        },
        Ang = {
        Up = -1,
        Right = -10,
        Forward = 178
        },
		Scale = 1.1
}

SWEP.Scoped = false

SWEP.DisableChambering = true
SWEP.Shotgun = false
SWEP.ShellTime = 8/12

SWEP.Primary.ClipSize = 2
SWEP.Primary.DefaultClip = 2

SWEP.Primary.Sound = "weapon_db.Single"
SWEP.Primary.Ammo = "buckshot"
SWEP.Primary.RPM = 200
SWEP.FireModes = {"Semi","2Burst"}
SWEP.Primary.RPM_Burst = 600
SWEP.Primary.Damage = 10
SWEP.Primary.NumShots = 12
SWEP.Primary.Spread		= .025					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .02	-- Ironsight accuracy, should be the same for shotguns

SWEP.Primary.Automatic = false
SWEP.SelectiveFire = true --Allow selecting your firemode?
SWEP.DisableBurstFire = false --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?
SWEP.DefaultFireMode = "Semi" --Default to auto or whatev
SWEP.FireModeName = "Break-Action" --Change to a text value to override it

SWEP.Primary.KickUp			= 2.4					-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 2					-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.2					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 1.25 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

SWEP.Primary.SpreadMultiplierMax = 2 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 2 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 3 --How much the spread recovers, per second.

SWEP.IronRecoilMultiplier = 0.6 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.5

SWEP.Primary.Range = 16*164.042 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 0.3 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.Secondary.IronFOV = 80 --Ironsights FOV (90 = same)
SWEP.BoltAction = true --Un-sight after shooting?
SWEP.BoltTimerOffset = 0.0 --How long do we remain in ironsights after shooting?
SWEP.IronSightsPos = Vector(-3.58, -2.638, 2.4)
SWEP.IronSightsAng = Vector(-0.071, 0.009, 0)

SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-8.443, 5.627, 0)

SWEP.InspectionPos = Vector(12.8, -10.653, -4.19)
SWEP.InspectionAng = Vector(36.389, 48.549, 22.513)

SWEP.LuaShellEject = false