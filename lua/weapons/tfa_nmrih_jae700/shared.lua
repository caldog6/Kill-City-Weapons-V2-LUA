SWEP.Base = "tfa_nmrih_base_3d"
SWEP.Category = "TFA Kill City"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.PrintName = "JAE 700"
SWEP.ViewModel = "models/weapons/tfa_nmrih/v_fa_jae700.mdl" --Viewmodel path
SWEP.ViewModelFOV = 50
SWEP.WorldModel = "models/weapons/tfa_nmrih/w_fa_jae700.mdl" --Viewmodel path
SWEP.HoldType = "ar2"

SWEP.Offset = {
        Pos = {
                Up = 0.1,
                Right = 1,
                Forward = -1
        },
        Ang = {
                Up = -1,
                Right = -10,
                Forward = 178
        },
        Scale = 1.0
} --Procedural world model animation, defaulted for CS:S purposes.

SWEP.Scoped = false
SWEP.Shotgun = false
SWEP.ShellTime = 0.75
SWEP.DisableChambering = true
SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = 5
SWEP.Primary.Sound = "Weapon_JAE700.Single"
SWEP.Primary.Ammo = "SniperPenetratedRound"
SWEP.Primary.Automatic = false
SWEP.Primary.RPM = 45
SWEP.Primary.Damage = 70
SWEP.Primary.NumShots = 1
SWEP.Primary.Spread = .06 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .0001 -- Ironsight accuracy, should be the same for shotguns
SWEP.SelectiveFire = false
SWEP.Primary.KickUp = 1.45 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 1.2 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.4 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.85 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
SWEP.Primary.SpreadMultiplierMax = 2 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 2 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 3 --How much the spread recovers, per second.
SWEP.IronRecoilMultiplier = 0.8 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.5 --Less is more.
SWEP.Secondary.IronFOV = 70 --Ironsights FOV (90 = same)
SWEP.Secondary.ScopeZoom = 10
SWEP.BoltAction = true --Un-sight after shooting?
SWEP.BoltTimerOffset = 0.1 --How long do we remain in ironsights after shooting?
SWEP.IronSightsPos = Vector(-3.89, -3.945, 0.7735)
SWEP.IronSightsAng = Vector(0, -0.141, 0)
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-11.869, 17.129, -16.056)
SWEP.InspectionPos = Vector(12.8, -10.653, -4.19)
SWEP.InspectionAng = Vector(36.389, 48.549, 22.513)
SWEP.Primary.Range = 16 * 164.042 * 60 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = 0.8 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
SWEP.BlowbackEnabled = false
SWEP.BlowbackVector = Vector(0, -2.5, 0)
SWEP.Blowback_Shell_Effect = "RifleShellEject"
SWEP.RTMaterialOverride = 4
SWEP.ScopeAngleTransforms = {{"R", 90.0}, {"Y", -90.0}, {"P", -179.95}, {"Y", 0.17}}
SWEP.ScopeOverlayTransformMultiplier = 1
SWEP.ScopeOverlayTransforms = {0, 15}

SWEP.VElements = {
        ["rtcircle"] = {
                type = "Model",
                model = "models/rtcircle.mdl",
                bone = "jae_body",
                rel = "",
                pos = Vector(0.079, 0.009, 5.61),
                angle = Angle(0, 180, 0),
                size = Vector(0.411, 0.411, 0.411),
                color = Color(255, 255, 255, 255),
                surpresslightning = false,
                material = "!tfa_rtmaterial",
                skin = 0,
                bodygroup = {}
        }
}

SWEP.LuaShellEject = true
SWEP.LuaShellEffect = "RifleShellEject"
SWEP.LuaShellEjectDelay = 0.9

SWEP.Secondary.ScopeScreenScale = 671 / 1080