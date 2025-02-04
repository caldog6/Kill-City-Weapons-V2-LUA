SWEP.Base = "tfa_nmrih_base_fa"
SWEP.Category = "TFA Kill City"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.PrintName = "Colt M16A4"

SWEP.ViewModel			= "models/weapons/tfa_nmrih/v_fa_m16a4_carryhandle.mdl" --Viewmodel path
SWEP.ViewModelFOV = 50

SWEP.WorldModel			= "models/weapons/tfa_nmrih/w_fa_m16a4_carryhandle.mdl" --Viewmodel path
SWEP.DefaultHoldType = "ar2"
SWEP.HoldType = "ar2"
SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -4,
        Right = 1,
        Forward = 2,
        },
        Ang = {
        Up = 0,
        Right = -4,
        Forward = 175
        },
		Scale = 0.9
}

SWEP.Scoped = false

SWEP.Shotgun = false
SWEP.ShellTime = 0.75

SWEP.DisableChambering = false
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30

SWEP.Primary.Sound = "Weapon_AR15.Single"
SWEP.Primary.Ammo = "ar2"
SWEP.Primary.Automatic = true
SWEP.Primary.RPM = 700
SWEP.Primary.Damage = 34
SWEP.Primary.NumShots = 1
SWEP.Primary.Spread		= .02					--This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .01	-- Ironsight accuracy, should be the same for shotguns
SWEP.SelectiveFire = true

SWEP.Primary.KickUp			= 0.45					-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 0.35					-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.2					-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.7 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

SWEP.Primary.SpreadMultiplierMax = 3.8 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 0.5 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 5 --How much the spread recovers, per second.

SWEP.IronRecoilMultiplier = 0.7 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.6 --Less is more.

SWEP.Secondary.IronFOV = 80 --Ironsights FOV (90 = same)
SWEP.BoltAction = false --Un-sight after shooting?
SWEP.BoltTimerOffset = 0.25 --How long do we remain in ironsights after shooting?

SWEP.IronSightsPos = Vector(-3.096, -8.641, -0.195)
SWEP.IronSightsAng = Vector(0, 0.003, 0)

SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-11.869, 17.129, -16.056)

SWEP.InspectionPos = Vector(12.8, -10.653, -4.19)
SWEP.InspectionAng = Vector(36.389, 48.549, 22.513)

SWEP.Primary.Range = 16*164.042*10 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 0.8 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

SWEP.BlowbackEnabled = true
SWEP.BlowbackVector = Vector(0,-2.0,0)
SWEP.Blowback_Shell_Effect = "RifleShellEject"