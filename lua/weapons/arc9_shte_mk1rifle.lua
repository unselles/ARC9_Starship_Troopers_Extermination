AddCSLuaFile()

SWEP.Base					= "arc9_base"

SWEP.Spawnable				= true
SWEP.Category				= "ARC9 - Starship Troopers Extermination"
SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName				= "Morita MK1 Rifle"
SWEP.TrueName				= "Morita Rifle"

SWEP.Class					= "Bullpup Rifle"
SWEP.Trivia = {
	Manufacturer	= "Morita",
	Calibre			= "7.62x51mm",
	Mechanism		= "Open Bolt",
	Country			= "Terran Federation",
	Year			= 2312
}
if ARC9:UseTrueNames() then
	SWEP.PrintName				= SWEP.TrueName
    SWEP.Trivia.Manufacturer	= "Terran Federation"
end

SWEP.Credits = {
	Author	= "Unselles",
}

SWEP.Description				= [[A well rounded rifle with decent firepower. A reliable staple serving the Mobile Infantry for decades.]]


SWEP.ViewModel				= "models/weapons/arc9/mk1rifle.mdl"
SWEP.WorldModel				= "models/weapons/arc9/mk1rifle.mdl"
SWEP.ViewModelFOVBase		= 85

SWEP.Slot					= 2
SWEP.Crosshair				= true

SWEP.MirrorVMWM				= true
SWEP.WorldModelOffset = {
	Pos				= Vector(-8, 2, -6),
	Ang				= Angle(-5, 0, 180),
	Scale				= 1
}

SWEP.DefaultBodygroups		= "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax				= 15 -- Damage done at point blank range
SWEP.DamageMin				= 7.5 -- Damage done at maximum range

SWEP.DamageRand				= 0 -- Damage varies randomly per shot by this fraction. 0.1				= +- 10% damage per shot.

SWEP.RangeMin				= 15 / ARC9.HUToM -- How far bullets retain their maximum damage for.
SWEP.RangeMax				= 50 / ARC9.HUToM -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration			= 30 -- Units of wood that can be penetrated by this gun.

SWEP.PhysBulletMuzzleVelocity	= 715 / ARC9.HUToM

-------------------------- MAGAZINE

SWEP.Ammo						= "ar2" -- What ammo type this gun uses.
SWEP.ChamberSize				= 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize					= 60 -- Self-explanatory.
SWEP.SupplyLimit				= 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit		= 4 -- Amount of reserve UBGL magazines you can take.

-------------------------- FIREMODES

SWEP.RPM				= 900
-- SWEP.Firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2 },
    { Mode = 1, PoseParam = 1 }
}

SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.01 -- Time until weapon fires.
SWEP.TriggerDelayRepeat = false -- Whether to do it for every shot on automatics.
SWEP.TriggerDelayCancellable = true -- Whether it is possible to cancel trigger delay by releasing the trigger before it is done.
SWEP.TriggerDelayReleaseToFire = false -- Release the trigger to fire instead of firing as soon as the delay is over.
SWEP.TriggerStartFireAnim = false -- Whether trigger begins the firing animation


-------------------------- MELEE

SWEP.Bash						= false
SWEP.PrimaryBash				= false

SWEP.BashDamage					= 50
SWEP.BashLungeRange				= 128
SWEP.BashRange					= 64
SWEP.PreBashTime				= 0.25
SWEP.PostBashTime				= 0.5

-------------------------- RECOIL

SWEP.Recoil = 1

SWEP.RecoilUp = 1.1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1.0 -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 0.2
SWEP.RecoilRandomSide = 0.2

SWEP.RecoilUpAddSighted = -0.25 -- Multiplier for vertical recoil
SWEP.RecoilSideAddSighted = -1

SWEP.RecoilRandomUpAddSighted = -0.05
SWEP.RecoilRandomSideAddSighted = -0.1

SWEP.RecoilDissipationRate = 9
SWEP.RecoilAutoControl = 0.2
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.15

SWEP.RecoilAutoControlMultHipFire = 0.1
SWEP.RecoilAutoControlMultSights = 0.2
SWEP.RecoilAutoControlMultCrouch = 0.2

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoil = 0.4

SWEP.VisualRecoilMultHipFire = 0.3
SWEP.VisualRecoilMultSights = 0.1
SWEP.VisualRecoilMultCrouch = 0.2

SWEP.VisualRecoilCenter = Vector(0, 15, -0)
SWEP.VisualRecoilUp = 1
SWEP.VisualRecoilSide = 0.5 -- Horizontal tilt
SWEP.VisualRecoilSideAddSighted = -2 -- Horizontal tilt
SWEP.VisualRecoilRoll = 33 -- Roll tilt

SWEP.VisualRecoilPunch = 10 -- How far back visual recoil moves the gun
SWEP.VisualRecoilPunchSights = 250 -- How far back visual recoil moves the gun

SWEP.VisualRecoilSpringPunchDamping = 10
SWEP.VisualRecoilSpringPunchDampingAddSighted = 0
SWEP.VisualRecoilDampingConst = 190
SWEP.VisualRecoilPositionBumpUp = 1

SWEP.RecoilKick = 2
SWEP.RecoilKickDamping = 10

SWEP.RecoilPatternDrift = 15

-------------------------- SPREAD

SWEP.Spread				= math.rad(0.1)

SWEP.SpreadMultHipFire				= 2
SWEP.SpreadMultMidAir				= 2
SWEP.SpreadMultMove					= 2
SWEP.SpreadMultCrouch				= 0.5

-------------------------- HANDLING

SWEP.FreeAimRadius = 10 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 1 -- How much the gun sways.

SWEP.HoldBreathTime = 0 -- time that you can hold breath for, set to 0 to disable holding breath
SWEP.RestoreBreathTime = 10

SWEP.FreeAimRadiusMultSights = 0.25

SWEP.SwayMultSights = 0.5

SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

SWEP.NoSprintWhenLocked = false -- You cannot sprint while reloading with this gun

SWEP.ReloadTime = 1
SWEP.DeployTime = 1

SWEP.ShootWhileSprint = true

SWEP.Speed = 0.8

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.75
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

SWEP.BarrelLength = 40	

-------------------------- TRACERS

SWEP.TracerNum				= 6 -- Tracer every X
SWEP.TracerColor			= Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
	Pos			= Vector(-6.55, -10, 1.3),
	Ang			= Angle(0, 0, 0),
	Midpoint = { -- Where the gun should be at the middle of it's irons
		Pos			= Vector(0, 0, 0),
		Ang			= Angle(0, 0, 0),
	},
	ViewModelFOV = 65,
	Magnification	= 1.1,
}

SWEP.SprintPos				= Vector(-1, -12, -2)
SWEP.SprintAng				= Angle(15.5, 2, -7)

SWEP.ActivePos				= Vector(-2.8, -11.5, 0.65)
SWEP.ActiveAng				= Angle(2.25, 0, 0)

SWEP.CrouchPos				= Vector(-4, -12, -1)
SWEP.CrouchAng				= Angle(0, 0, -10)

SWEP.CustomizeAng			= Angle(90, 0, 0)
SWEP.CustomizePos			= Vector(25, 40, 5)
SWEP.CustomizeSnapshotFOV	= 70

-------------------------- HoldTypes

SWEP.HoldType				= "ar2"
SWEP.HoldTypeSprint			= "passive"
SWEP.HoldTypeHolstered		= "passive"
SWEP.HoldTypeSights			= "ar2"
SWEP.HoldTypeCustomize		= "slam"
SWEP.HoldTypeBlindfire		= "pistol"

SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload				= false
SWEP.AnimDraw				= false

-------------------------- EFFECTS

SWEP.MuzzleParticle			= "muzzleflash_1" -- Used for some muzzle effects.

SWEP.ShellModel				= "models/shared/shells/9mm/9mm_casing.mdl"
SWEP.ShellCorrectAng		= Angle(0, 0, -90)
SWEP.ShellScale				= 1.5
SWEP.ShellPhysBox			= Vector(0.5, 0.5, 2)

SWEP.CamQCA					= 3
SWEP.CamOffsetAng			= Angle(0, 0, 0)
SWEP.CamQCA_Mult = 1 -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS = 1 -- Intensity for QC camera movement in ADS.

-------------------------- MAGDROP

SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.74
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180, 0)
SWEP.DropMagazineVelocity = Vector(15, 30, 30)

-------------------------- SOUNDS

SWEP.ShootVolume = 100
SWEP.ShootPitch = 100


local path					= ")^weapons/mk1rifle/"
local common				= ")^weapons/shared/"

SWEP.FirstShootSound			= path .. "A_Morita_Fire_1P_Loop_01.ogg"
SWEP.ShootSound = {
    path .. "A_Morita_Fire_1P_Loop_01.ogg",
    path .. "A_Morita_Fire_1P_Loop_02.ogg",
    path .. "A_Morita_Fire_1P_Loop_03.ogg",
    path .. "A_Morita_Fire_1P_Loop_04.ogg",
	path .. "A_Morita_Fire_1P_Loop_05.ogg",
    path .. "A_Morita_Fire_1P_Loop_06.ogg",
    path .. "A_Morita_Fire_1P_Loop_07.ogg",
    path .. "A_Morita_Fire_1P_Loop_08.ogg",
	path .. "A_Morita_Fire_1P_Loop_09.ogg",
    path .. "A_Morita_Fire_1P_Loop_10.ogg"
}


SWEP.DistantShootSound			= {path .. "A_Morita_Fire_1P_Tail_01.ogg", path .. "A_Morita_Fire_1P_Tail_02.ogg", path .. "A_Morita_Fire_1P_Tail_03.ogg"}
SWEP.ShootSoundSilenced			= path .. ""
SWEP.DistantShootSoundSilenced	= common .. ""
SWEP.DryFireSound				= {common .. "A_Rifle_Trigger_01.ogg", common .. "A_Rifle_Trigger_02.ogg"}

SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ratel
SWEP.ExitSightsSound = ratel


SWEP.FiremodeSound				= "A_WeaponRifle_Safety_01.ogg"

local ci = CHAN_AUTO
local ratel = {common .. "A_ADS_Pilum_Foley_01.ogg", common .. "A_ADS_Pilum_Foley_02.ogg", common .. "A_ADS_ChiHong_Foley_01.ogg"}
local rottle = {common .. "A_ADS_Foley_Movement_01.ogg", common .. "A_ADS_Foley_Movement_02.ogg", common .. "A_ADS_Foley_Movement_03.ogg", common .. "A_Rifle_Foley_02.ogg", common .. "rattle.ogg"}

SWEP.ReloadInSights				= false -- This weapon can aim down sights while reloading.

SWEP.Animations = {

	["idle"] = {
		Source				= "idle",
		Time				= 1
	},
	["idle_empty"] = {
		Source				= "idle_empty",
		Time				= 1
	},
	["draw"] = {
		Source				= "draw",
		Time				= 30 / 22,
		EventTable = {
			{s	= common .. "A_Rifle_Foley_01.ogg",			t = 0.35},
			{s	= common .. "A_ADS_Foley_Movement_02.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["draw_empty"] = {
		Source				= "draw",
		Time				= 30 / 22,
		EventTable = {
			{s	= common .. "A_Rifle_Foley_01.ogg",			t = 0.35},
			{s	= common .. "A_ADS_Foley_Movement_02.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["holster"] = {
		Source				= "holster",
		Time				= 0.9,
		EventTable = {
			{s	= common .. "A_Rifle_Foley_02.ogg",			t = 0.35},
			{s	= common .. "A_ADS_Foley_Movement_01.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["holster_empty"] = {
		Source				= "holster",
		Time				= 0.9,
		EventTable = {
			{s	= common .. "A_Rifle_Foley_02.ogg",			t = 0.35},
			{s	= common .. "A_ADS_Foley_Movement_01.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["fire"] = {
		Source				= "fire",
		Time				= 0.8,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= {
		
				path .. "A_Morita_Fire_1P_Tail_01.ogg",
				path .. "A_Morita_Fire_1P_Tail_02.ogg",
				path .. "A_Morita_Fire_1P_Tail_03.ogg"
			},										t = 0.03},
		},
	},
	["fire_iron"] = {
	Source				= "fire_ads",
	Time				= 1,
	},
	["fire_empty"] = {
		Source				= "fire",
		Time				= 1,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= {
		
				path .. "A_Morita_Fire_1P_Tail_01.ogg",
				path .. "A_Morita_Fire_1P_Tail_02.ogg",
				path .. "A_Morita_Fire_1P_Tail_03.ogg"
			},										t = 0.03},
		},
	},
    ["firemode_1"] = {
        Source = "firemodedown",
		EventTable = {
			{s	= path .. "",			t = 0.03},
		},
    },
    ["firemode_2"] = {
        Source = "firemodeup",
		EventTable = {
			{s	= path .. "",			t = 0.03},
		},
    },

	-- Reloads --

	["reload"] = {
		Source				= "reload",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 2.4,
		MinProgress				= 1.1,
		LastClip1OutTime				= 0.9,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.35},
			{v1	= 10000, v2	= 20000, vt	= 0.3,	t = 0.9},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 1.55},
			{FOV = -6,
			FOV_Start = 1.4,
			FOV_End = 1.7,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 0},
			{s = rottle,									t = 0},
			{s = path .. "A_MoritaMK1Rifle_reload_magout_01.ogg",		t = 0.075},
			{s = rottle,									t = 0.3},
			{s = path .. "MK18_Reload_Normal_MagOut.ogg",				t = 0.5, c = ci},
			{s = rottle,									t = 0.35},
			{s = path .. "A_MoritaMK1Rifle_reload_magin_01.ogg", "A_MoritaMK1Rifle_reload_magin_02.ogg", "A_MoritaMK1Rifle_reload_magin_03.ogg", "A_MoritaMK1Rifle_reload_magin_04.ogg",					t = 0.95, c = ci},
			{s = rottle,									t = 0.6},
			{s = common .. "A_Weapon_Slap.ogg",	t = 1.52},
			{s = rottle,	},
		},
	},
	["reload_empty"] = {
		Source				= "reload_empty",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 3.1,
		MinProgress				= 1.5,
		LastClip1OutTime				= 0.7,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.4},
			{v1	= 10000, v2	= 20000, vt	= 0.1,	t = 0.9},
			{v1	= 40000, v2	= 40000, vt	= 0.2,	t = 1.7},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 2.1},
			{FOV = -6,
			FOV_Start = 1.8,
			FOV_End = 2.4,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 0},
			{FOV = 6,
			FOV_Start = 0.2,
			FOV_End = 0.4,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 1.8},
			{s = rattel,								t = 0},
			{s = common .. "A_Rifle_Foley_01.ogg",			t = 0, c = ci},
			{s = path .. "A_MoritaMK1Rifle_reload_magout_01.ogg",				t = 0.12, c = ci},
			{s = common .. "A_Weapon_Slap.ogg",	t = 1.5},
			{s = path .. "A_MoritaMK1Rifle_reload_magin_01.ogg", "A_MoritaMK1Rifle_reload_magin_02.ogg", "A_MoritaMK1Rifle_reload_magin_03.ogg", "A_MoritaMK1Rifle_reload_magin_04.ogg",				t = 0.80, c = ci},
			{s = path .. "A_MoritaMK1Rifle_Bolt_01.ogg",					t = 2, c = ci},
			{s = common .. "A_Rifle_Foley_02.ogg",			t = 0, c = ci},
			{s = rottle,								t = 1.9},
		},
	},

	-- Inspect --
	
	["inspect"] = {
        Source = "inspect",
		Time				= 3,
		EventTable = {
			{s	= path .. "",			t = 0},
			{s	= common .. "",			t = 0},
			{s	= common .. "",			t = 0},
		},
	},
}




-------------------------- ATTACHMENTS





