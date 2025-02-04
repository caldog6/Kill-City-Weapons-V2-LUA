SWEP.Base = "tfa_gun_base"
SWEP.Category = "TFA Kill City" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = nil --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author = "" --Author Tooltip
SWEP.Contact = "" --Contact Info Tooltip
SWEP.Purpose = "" --Purpose Tooltip
SWEP.Instructions = "" --Instructions Tooltip
SWEP.Spawnable = true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable = true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair = true -- Draw the crosshair?
SWEP.DrawCrosshairIS = false --Draw the crosshair in ironsights?
SWEP.PrintName = "XM29 O.I.C.W" -- Weapon name (Shown on HUD)
SWEP.Slot = 2 -- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos = 73 -- Position in the slot
SWEP.AutoSwitchTo = true -- Auto switch to if we pick it up
SWEP.AutoSwitchFrom = true -- Auto switch from if you pick up a better weapon
SWEP.Weight = 30 -- This controls how "good" the weapon is for autopickup.
--[[WEAPON HANDLING]]
--
SWEP.Primary.Sound = Sound("TFA_MISC_OICW.1") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound = nil -- This is the sound of the weapon, when silenced.
SWEP.Primary.PenetrationMultiplier = 1 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = 34 -- Damage, in standard damage points.
SWEP.Primary.DamageTypeHandled = true --true will handle damagetype in base
SWEP.Primary.DamageType = nil --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = nil --Force value, leave nil to autocalc
SWEP.Primary.Knockback = nil --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = true -- Automatic/Semi Auto
SWEP.Primary.RPM = 650 -- This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Scoped = nil -- This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Semi = nil -- RPM for semi-automatic or burst fire.  This is in Rounds Per Minute / RPM
SWEP.Primary.RPM_Burst = nil -- RPM for burst fire, overrides semi.  This is in Rounds Per Minute / RPM
SWEP.Primary.DryFireDelay = nil --How long you have to wait after firing your last shot before a dryfire animation can play.  Leave nil for full empty attack length.  Can also use SWEP.StatusLength[ ACT_VM_BLABLA ]
SWEP.Primary.BurstDelay = nil -- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater = false
--Miscelaneous Sounds
SWEP.IronInSound = Sound("Weapon_AR2.Special1") --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = Sound("Weapon_AR2.Special2") --Sound to play when ironsighting out?  nil for default
--Silencing
SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?
-- Selective Fire Stuff
SWEP.SelectiveFire = true --Allow selecting your firemode?
SWEP.DisableBurstFire = true --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?
SWEP.DefaultFireMode = "" --Default to auto or whatev
SWEP.FireModeName = nil --Change to a text value to override it
--Ammo Related
SWEP.Primary.ClipSize = 30 -- This is the size of a clip
SWEP.Primary.DefaultClip = 30 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "ar2" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = false --Disable round-in-the-chamber
--Recoil Related
SWEP.Primary.BaseKick = 0.45 -- This is the maximum upwards recoil (rise)
SWEP.Primary.MaxKick = 0.35 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 0.3
SWEP.Primary.StaticRecoilFactor = 0.7 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
--Firing Cone Related
SWEP.Primary.Spread = .02 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .005 -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 3.2 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 0.4 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 7 --How much the spread recovers, per second.
--Range Related
SWEP.Primary.Range = -1 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = -1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
--Penetration Related
SWEP.MaxPenetrationCounter = 4 --The maximum number of ricochets.  To prevent stack overflows.
--Misc
SWEP.IronRecoilMultiplier = 0.6 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.6 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
--Movespeed
SWEP.MoveSpeed = 1 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = 0.8 --Multiply the player's movespeed by this when sighting.
--[[PROJECTILES]]
--
SWEP.ProjectileEntity = nil --Entity to shoot
SWEP.ProjectileVelocity = 0 --Entity to shoot's velocity
SWEP.ProjectileModel = nil --Entity to shoot's model
--[[VIEWMODEL]]
--
SWEP.ViewModel = "models/weapons/tfa_misc/c_oicw.mdl" --Viewmodel path
SWEP.ViewModelFOV = 54 -- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip = false -- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true --Use gmod c_arms system.
--SWEP.VMPos = Vector(0.300,-5.36,0.603) --Vector(0.300,-7.02,0.603) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
--SWEP.VMAng = Vector(0,0.2,-0.620) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = true --Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse
SWEP.CenteredPos = Vector(-2.76, 0, -5.04) --The viewmodel positional offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.CenteredAng = Vector(3.517, 0, 0) --The viewmodel angular offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.Bodygroups_V = nil --{
--[0] = 1,
--[1] = 4,
--[2] = etc.
--}
--[[WORLDMODEL]]
--
SWEP.WorldModel = "models/weapons/tfa_misc/w_oicw.mdl" -- Weapon world model path
SWEP.Bodygroups_W = nil --{
--[0] = 1,
--[1] = 4,
--[2] = etc.
--}
SWEP.HoldType = "ar2" -- This is how others view you carrying the weapon. Options include:

-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Offset = {
	Pos = {
		Up = 0,
		Right = 0,
		Forward = 0
	},
	Ang = {
		Up = -1,
		Right = -2,
		Forward = 178
	},
	Scale = 1
}

--Procedural world model animation, defaulted for CS:S purposes.
SWEP.ThirdPersonReloadDisable = false --Disable third person reload?  True disables.
--[[SCOPES]]
--
SWEP.IronSightsSensitivity = 1 --Useful for a RT scope.  Change this to 0.25 for 25% sensitivity.  This is if normal FOV compenstaion isn't your thing for whatever reason, so don't change it for normal scopes.
SWEP.BoltAction = false --Unscope/sight after you shoot?
SWEP.Scoped = true --Draw a scope overlay?
SWEP.ScopeOverlayThreshold = 0.875 --Percentage you have to be sighted in to see the scope.
SWEP.BoltTimerOffset = 0.25 --How long you stay sighted in after shooting, with a bolt action.
SWEP.ScopeScale = 0.5 --Scale of the scope overlay
SWEP.ReticleScale = 0.7 --Scale of the reticle overlay
--GDCW Overlay Options.  Only choose one.
SWEP.Secondary.UseACOG = false --Overlay option
SWEP.Secondary.UseMilDot = false --Overlay option
SWEP.Secondary.UseSVD = false --Overlay option
SWEP.Secondary.UseParabolic = false --Overlay option
SWEP.Secondary.UseElcan = false --Overlay option
SWEP.Secondary.UseGreenDuplex = false --Overlay option

SWEP.Secondary.ScopeTable = {	
	["ScopeMaterial"] =  Material("oicw/scope_lens.png", "smooth"),
	["ScopeBorder"] = color_black,
	["ScopeCrosshair"] = { ["r"] = 0, ["g"]  = 0, ["b"] = 0, ["a"] = 0, ["s"] = 1 }
}

--[[SHOTGUN CODE]]
--
SWEP.Shotgun = false --Enable shotgun style reloading.
SWEP.ShotgunEmptyAnim = false --Enable insertion of a shell directly into the chamber on empty reload?
SWEP.ShellTime = .35 -- For shotguns, how long it takes to insert a shell.
--[[SPRINTING]]
--
SWEP.RunSightsPos = Vector(5.226, -8.442, 0) --Change this, using SWEP Creation Kit preferably
SWEP.RunSightsAng = Vector(-6.332, 33.769, 0) --Change this, using SWEP Creation Kit preferably
--[[IRONSIGHTS]]
--
SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 25 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector(-5.801, -10.252, 1.519)
SWEP.IronSightsAng = Vector(0, 0, 0)

--[[INSPECTION]]
--
SWEP.InspectPos = nil --Vector(0,0,0) --Replace with a vector, in style of ironsights position, to be used for inspection
SWEP.InspectAng = nil --Vector(0,0,0) --Replace with a vector, in style of ironsights angle, to be used for inspection
--[[VIEWMODEL ANIMATION HANDLING]]
--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon SWEP.Secondary while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.
--[[VIEWMODEL BLOWBACK]]
--
SWEP.BlowbackEnabled = false --Enable Blowback?
SWEP.BlowbackVector = Vector(0, -1, 0) --Vector to move bone <or root> relative to bone <or view> orientation.
SWEP.BlowbackCurrentRoot = 0 --Amount of blowback currently, for root
SWEP.BlowbackCurrent = 0 --Amount of blowback currently, for bones
SWEP.BlowbackBoneMods = nil --Viewmodel bone mods via SWEP Creation Kit
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true --Shoot shells through blowback animations
SWEP.Blowback_Shell_Effect = "ShellEject" --Which shell effect to use
--[[VIEWMODEL PROCEDURAL ANIMATION]]
--
SWEP.DoProceduralReload = false --Animate first person reload using lua?
SWEP.ProceduralReloadTime = 1 --Procedural reload time?
--[[HOLDTYPES]]
--
SWEP.IronSightHoldTypeOverride = "" --This variable overrides the ironsights holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.SprintHoldTypeOverride = "" --This variable overrides the sprint holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
--[[ANIMATION]]
--
SWEP.StatusLengthOverride = {} --Changes the status delay of a given animation; only used on reloads.  Otherwise, use SequenceLengthOverride or one of the others
SWEP.SequenceLengthOverride = {} --Changes both the status delay and the nextprimaryfire of a given animation
SWEP.SequenceRateOverride = {} --Like above but changes animation length to a target
SWEP.SequenceRateOverrideScaled = {} --Like above but scales animation length rather than being absolute
SWEP.ProceduralHoslterEnabled = nil
SWEP.ProceduralHolsterTime = 0.3
SWEP.ProceduralHolsterPos = Vector(3, 0, -5)
SWEP.ProceduralHolsterAng = Vector(-40, -30, 10)
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation
--MDL Animations Below
SWEP.IronAnimation = {}
SWEP.SprintAnimation = {}
--[[EFFECTS]]
--
--SWEP.Secondarys
SWEP.MuzzleAttachment = "muzzle" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment = "1" -- Should be "2" for CSS models or "shell" for hl2 models
SWEP.ShellAttachmentSecondary = "2" -- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleFlashEnabled = true --Enable muzzle flash
SWEP.MuzzleAttachmentRaw = 1 --This will override whatever string you gave.  This is the raw SWEP.Secondary number.  This is overridden or created when a gun makes a muzzle event.
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper SWEP.Secondary?
SWEP.MuzzleFlashEffect = nil --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.
SWEP.SmokeParticle = nil --Smoke particle (ID within the PCF), defaults to something else based on holdtype; "" to disable
SWEP.EjectionSmokeEnabled = false --Disable automatic ejection smoke
--Shell eject override
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject" --The effect used for shell ejection; Defaults to that used for blowback
--Tracer Stuff
SWEP.TracerName = nil --Change to a string of your tracer name.  Can be custom. There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount = 3 --0 disables, otherwise, 1 in X chance
--Impact Effects
SWEP.ImpactEffect = nil --Impact Effect
SWEP.ImpactDecal = nil --Impact Decal
--[[EVENT TABLE]]
--
SWEP.EventTable = {
	[ACT_VM_SECONDARYATTACK] = {
		{ ["time"] = 0, ["type"] = "lua", ["value"] = function( wep, viewmodel ) wep:MakeShellSecondary() end, ["client"] = false, ["server"] = true},
	}
} --Event Table, used for custom events when an action is played.  This can even do stuff like playing a pump animation after shooting.
--example:
--SWEP.EventTable = {
--	[ACT_VM_RELOAD] = {
--		{ ["time"] = 0.1, ["type"] = "lua", ["value"] = function( wep, viewmodel ) end, ["client"] = true, ["server"] = true},
--		{ ["time"] = 0.1, ["type"] = "sound", ["value"] = Sound("x") }
--	}
--}
--[[RENDER TARGET]]
--
SWEP.RTMaterialOverride = nil -- Take the material you want out of print(LocalPlayer():GetViewModel():GetMaterials()), subtract 1 from its index, and set it to this.
SWEP.RTOpaque = false -- Do you want your render target to be opaque?
SWEP.RTCode = nil --function(self) return end --This is the function to draw onto your rendertarget
--[[AKIMBO]]
--
SWEP.Akimbo = false --Akimbo gun?  Alternates between primary and secondary attacks.
SWEP.AnimCycle = 0 -- Start on the right
--[[SWEP.SecondaryS]]
--
SWEP.VElements = nil --Export from SWEP Creation Kit.  For each item that can/will be toggled, set active=false in its individual table
SWEP.WElements = nil --Export from SWEP Creation Kit.  For each item that can/will be toggled, set active=false in its individual table

SWEP.Attachments = {
}

SWEP.ViewModelBoneMods = {
}

--[MDL_SWEP.Secondary] = = { offset = { 0, 0 }, atts = { "si_eotech" }, sel = 0 }
--Sorry for kind-of copying your syntax, Spy, but it makes it easier on the users and you did an excellent job.  The internal code's all mine anyways.
--sel allows you to have an SWEP.Secondary pre-selected, and is used internally by the base to show which SWEP.Secondary is selected in each category.
SWEP.AttachmentDependencies = {} --{["si_acog"] = {"bg_rail"}}
SWEP.AttachmentExclusions = {} --{ ["si_iron"] = {"bg_heatshield"} }
--[[MISC INFO FOR MODELERS]]
--
--[[

Used Animations (for modelers):

ACT_VM_DRAW - Draw
ACT_VM_DRAW_EMPTY - Draw empty
ACT_VM_DRAW_SILENCED - Draw silenced, overrides empty

ACT_VM_IDLE - Idle
ACT_VM_IDLE_SILENCED - Idle empty, overwritten by silenced
ACT_VM_IDLE_SILENCED - Idle silenced

ACT_VM_PRIMARYATTACK - Shoot
ACT_VM_PRIMARYATTACK_EMPTY - Shoot last chambered bullet
ACT_VM_PRIMARYATTACK_SILENCED - Shoot silenced, overrides empty
ACT_VM_PRIMARYATTACK_1 - Shoot ironsights, overriden by everything besides normal shooting
ACT_VM_DRYFIRE - Dryfire

ACT_VM_RELOAD - Reload / Tactical Reload / Insert Shotgun Shell
ACT_SHOTGUN_RELOAD_START - Start shotgun reload, unless ACT_VM_RELOAD_EMPTY is there.
ACT_SHOTGUN_RELOAD_FINISH - End shotgun reload.
ACT_VM_RELOAD_EMPTY - Empty mag reload, chambers the new round.  Works for shotguns too, where applicable.
ACT_VM_RELOAD_SILENCED - Silenced reload, overwrites all

ACT_VM_HOLSTER - Holster
ACT_VM_HOLSTER_SILENCED - Holster empty, overwritten by silenced
ACT_VM_HOLSTER_SILENCED - Holster silenced

]]
--
DEFINE_BASECLASS(SWEP.Base)

SWEP.FireAnims = {
	[0] = ACT_VM_PRIMARYATTACK,
	[1] = ACT_VM_RECOIL1,
	[2] = ACT_VM_RECOIL2,
	[3] = ACT_VM_RECOIL3
}

function SWEP:Deploy(...)
	self.SetNW2Int = self.SetNW2Int or self.SetNWInt
	self.GetNW2Int = self.GetNW2Int or self.GetNWInt
	self.SetNW2Bool = self.SetNW2Bool or self.SetNWBool
	self.GetNW2Bool = self.GetNW2Bool or self.GetNWBool
	self:SetNW2Int("FireCount", 0)
	local b = self:GetNW2Bool("AltGL")

	if b == nil then
		self:SetNW2Bool("AltGL", false)
	end

	return BaseClass.Deploy(self, ...)
end

function SWEP:Think2(...)
	local nsfac = self:GetNW2Int("FireCount") + 1
	self.Primary.Recoil = 1
	self.Primary.KickUp = math.min(self.Primary.BaseKick * nsfac, self.Primary.MaxKick)
	self.Primary.KickDown = self.Primary.KickUp
	self.Primary.KickHorizontal = self.Primary.KickUp / 3

	if self:GetStatus() == TFA.GetStatus("idle") then
		if not self.LastIdleTime then
			self.LastIdleTime = CurTime()
		elseif CurTime() > self.LastIdleTime + 0.1 then
			self:SetNW2Int("FireCount", 0)
		end
	else
		self.LastIdleTime = nil
	end

	return BaseClass.Think2(self, ...)
end

function SWEP:ChooseShootAnim()
	local cnt = self:GetNW2Int("FireCount")
	local ind = self.FireAnims[cnt] or self.FireAnims[3]
	self:SendViewModelAnim(ind)
	self:EventShell()
	self:SetNW2Int("FireCount", cnt + 1)

	return true, ACT_VM_PRIMARYATTACK
end

function SWEP:CanSecondaryAttack()
	
	if self:Ammo2() < 1 then
		if not self.HasPlayedEmptyClick then
			self:EmitSound("Weapon_SMG1.Empty")

			self.HasPlayedEmptyClick = true
		end
		return false
	end
	
	if self.FiresUnderwater == false and self:GetOwner():WaterLevel() >= 3 then
		self:SetNextSecondaryFire(CurTime() + 0.5)
		self:EmitSound("Weapon_SMG1.Empty")
		return false
	else
		return true
	end
end

function SWEP:AltAttack()
	local vecSrc = self.Owner:GetShootPos();
	local Forward = self.Owner:EyeAngles():Forward()
	local Right = self.Owner:EyeAngles():Right()
	local Up = self.Owner:EyeAngles():Up()

	if CurTime() > self:GetNextSecondaryFire() and self:Ammo2() > 0 and TFA.Enum.ReadyStatus[self:GetStatus()] and not self:GetSprinting() and self:CanSecondaryAttack() then
		if SERVER then
			local ent = ents.Create(self.Secondary.Ent)
			if (self:GetIronSights())then
				ent:SetPos(self.Owner:EyePos() + ( self.Owner:GetAimVector() * 16 ))
			else
				ent:SetPos( self.Owner:GetShootPos() + Forward * 7 + Right * 6 + Up * -12 );
			end
			ent:SetAngles( self.Owner:EyeAngles() )
			ent:Spawn()
			ent:Activate()
			if (self:GetIronSights()) then
				ent:GetPhysicsObject():SetVelocity( Forward*1200.0 );
				ent:GetPhysicsObject():AddAngleVelocity( Vector( -400, 400, 0 ) );
			else
				ent:GetPhysicsObject():SetVelocity(self.Owner:GetAimVector()*1000)
				ent:GetPhysicsObject():AddAngleVelocity( Vector( -400, 400, 0 ) );
			end
			ent:SetOwner(self.Owner)
		end

		self:SendViewModelAnim(self.Secondary.Act)
		self:SetNextSecondaryFire(CurTime() + self.Secondary.Delay)
		self.Owner:SetAmmo(self.Owner:GetAmmoCount(self.Secondary.Ammo) - 1, self.Secondary.Ammo)
		if (not sp) then
			self:EmitSoundSafe(self.Secondary.Sound)
		else
			self:EmitSound(self.Secondary.Sound)
		end
	end
end

function SWEP:MakeShellSecondary()
	local retVal = hook.Run("TFA_MakeShell",self)
	if retVal ~= nil then
		return retVal
	end
	
	shelltype = "tfa_shell_secondary"

	if IsValid(self) then
		self:EjectionSmoke(true)
		local vm = (self:IsFirstPerson()) and self.OwnerViewModel or self
		if type(shelltype) ~= "string" or shelltype == "" then return end -- allows to disable shells by setting override to "" - will shut up all rp fags

		if IsValid(vm) then
			fx = EffectData()
			local attid = vm:LookupAttachment("2")

			attid = math.Clamp(attid and attid or 2, 1, 127)
			local angpos = vm:GetAttachment(attid)

			if angpos then
				fx:SetEntity(self)
				fx:SetAttachment(attid)
				fx:SetMagnitude(1)
				fx:SetScale(1)
				fx:SetOrigin(angpos.Pos)
				fx:SetNormal(angpos.Ang:Forward())
				TFA.Effects.Create(shelltype, fx)
			end
		end
	end
end

SWEP.Secondary.Act = ACT_VM_SECONDARYATTACK
SWEP.Secondary.Delay = 1
SWEP.Secondary.Ent = "sent_oicw_grenade"
SWEP.Secondary.Velocity = 1500
SWEP.Secondary.Ammo = "smg1_grenade"
SWEP.Secondary.Automatic = false
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = 1
SWEP.Secondary.Delay = 1
SWEP.Secondary.Sound = Sound("weapons/tfa_misc/oicw/oicw_altfire.wav")