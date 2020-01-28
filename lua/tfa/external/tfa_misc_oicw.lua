local path = "weapons/tfa_misc/oicw/"
local pref = "TFA_MISC_OICW"
local hudcolor = Color(255, 80, 0, 191)

TFA.AddFireSound(pref .. ".1", path .. "ar2_fire1.wav","ar2_fire2.wav","ar2_fire3.wav", false, ")")
TFA.AddFireSound(pref .. ".2", path .. "oicw_altfire.wav", false, ")")
TFA.AddWeaponSound(pref .. ".Deploy", path .. "oicw_deploy.wav")
TFA.AddWeaponSound(pref .. ".Magout", path .. "oicw_magout.wav", false)
TFA.AddWeaponSound(pref .. ".Magin1", path .. "oicw_magin1.wav", false)
TFA.AddWeaponSound(pref .. ".Magin2", path .. "oicw_magin2.wav", false)

if killicon and killicon.Add then
	killicon.Add("tfa_misc_oicw", "vgui/killicons/tfa_misc_oicw", hudcolor)
	killicon.AddFont( "sent_oicw_grenade", "HL2MPTypeDeath", "7", hudcolor )
end

function VectorNormalize( v )
	local l = v:Length();
	if (l != 0.0) then
		v = v / l;
	else
		// FIXME:
		// Just copying the existing implemenation; shouldn't res.z == 0?
		v.x = 0.0;
		v.y = 0.0; v.z = 1.0;
	end
	return v;
end

function CrossProduct(a, b)
	return Vector( a.y*b.z - a.z*b.y, a.z*b.x - a.x*b.z, a.x*b.y - a.y*b.x );
end