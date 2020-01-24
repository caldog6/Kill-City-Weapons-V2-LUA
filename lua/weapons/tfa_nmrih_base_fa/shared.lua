DEFINE_BASECLASS("tfa_bash_base")

SWEP.Slot = 2
SWEP.SlotPos = 73

SWEP.Primary.Recoil = 0.85
SWEP.LuaShellEject = true
SWEP.Secondary.BashSound = Sound("Weapon_Crowbar.Shove")
SWEP.Secondary.BashDelay = 0.05
SWEP.ViewModelFOV = 50
SWEP.UseHands = true
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0.254, 0.09), angle = Angle(15.968, -11.193, 1.437) },
	["ValveBiped.Bip01_R_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(3.552, 4.526, 0) },
	["Thumb04"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(6, 0, 0) }
}

SWEP.KF2StyleShotgun = false --Allow empty reloads for shotguns?

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

SWEP.MoveSpeed = 0.9
SWEP.IronSightsMoveSpeed  = SWEP.MoveSpeed * 0.8


SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, Hybrid = stop mdl animation, Lua = hybrid but continue idle
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, Hybrid = ani + lua, Lua = lua only
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH

SWEP.IronAnimation = {
        ["in"] = {
                ["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
                ["value"] = "Idle_To_Iron", --Number for act, String/Number for sequence
                ["value_empty"] = "Idle_To_Iron_Dry",
                ["transition"] = true
        }, --Inward transition
        ["loop"] = {
                ["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
                ["value"] = "Idle_Iron", --Number for act, String/Number for sequence
                ["value_empty"] = "Idle_Iron_Dry"
        }, --Looping Animation
        ["out"] = {
                ["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
                ["value"] = "Iron_To_Idle", --Number for act, String/Number for sequence
                ["value_empty"] = "Iron_To_Idle_Dry",
                ["transition"] = true
        }, --Outward transition
        ["shoot"] = {
                ["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
                ["value"] = "Fire_Iron", --Number for act, String/Number for sequence
                ["value_last"] = "Fire_Iron_Last",
                ["value_empty"] = "Fire_Iron_Dry"
        } --What do you think
}

SWEP.SprintAnimation = {
        ["in"] = {
                ["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
                ["value"] = "Idle_to_Sprint", --Number for act, String/Number for sequence
                ["value_empty"] = "Idle_to_Sprint_Empty",
                ["transition"] = true
        }, --Inward transition
        ["loop"] = {
                ["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
                ["value"] = "Sprint_", --Number for act, String/Number for sequence
                ["value_empty"] = "Sprint_Empty_",
                ["is_idle"] = true
        },--looping animation
        ["out"] = {
                ["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
                ["value"] = "Sprint_to_Idle", --Number for act, String/Number for sequence
                ["value_empty"] = "Sprint_to_Idle_Empty",
                ["transition"] = true
        } --Outward transition
}

function SWEP:Initialize()
        BaseClass.Initialize(self)
end

function SWEP:Deploy()
        BaseClass.Deploy(self)
        local vm = self.OwnerViewModel
        if not IsValid(vm) then return true end
        if vm:LookupSequence("Sprint_") < 0 then
                self.Sprint_Mode = TFA.Enum.LOCOMOTION_LUA
        elseif vm:LookupSequence(self.SprintAnimation["loop"].value_empty) then
                if vm:LookupSequence("Sprint_Dry_") >= 0 then
                        self.SprintAnimation["loop"].value_empty = "Sprint_Dry_"
                else
                        self.SprintAnimation["loop"].value_empty = self.SprintAnimation["loop"].value
                end
        end
        if self.Sprint_Mode == TFA.Enum.LOCOMOTION_ANI then
                if vm:LookupSequence("Idle_to_Sprint") < 0 then
                        self.SprintAnimation["in"].value = self.SprintAnimation["loop"].value
                elseif vm:LookupSequence(self.SprintAnimation["in"].value_empty) < 0 then
                        if vm:LookupSequence("Idle_to_Sprint_Dry") >= 0 then
                                self.SprintAnimation["in"].value_empty = "Idle_to_Sprint_Dry"
                        else
                                self.SprintAnimation["in"].value_empty = self.SprintAnimation["in"].value
                        end
                end
                if vm:LookupSequence("Sprint_to_Idle") < 0 then
                        self.SprintAnimation["loop"].value = self.SprintAnimation["loop"].value
                elseif vm:LookupSequence(self.SprintAnimation["out"].value_empty) < 0 then
                        if vm:LookupSequence("Sprint_to_Idle_Dry") >= 0 then
                                self.SprintAnimation["out"].value_empty = "Sprint_to_Idle_Dry"
                        else
                                self.SprintAnimation["out"].value_empty = self.SprintAnimation["out"].value
                        end
                end
        end
        self.Idle_Mode = TFA.Enum.IDLE_BOTH
        return true
end