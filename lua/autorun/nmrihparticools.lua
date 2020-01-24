NMRIHParticleFiles = {}
table.insert(NMRIHParticleFiles, #NMRIHParticleFiles + 1, "nmrih_gas")
table.insert(NMRIHParticleFiles, #NMRIHParticleFiles + 1, "nmrih_tnt")
--Particle Effects
NMRIHParticleFX = {}
table.insert(NMRIHParticleFX, #NMRIHParticleFX + 1, "nmrih_lighter_fire")
table.insert(NMRIHParticleFX, #NMRIHParticleFX + 1, "nmrih_lighter_fire_1")
table.insert(NMRIHParticleFX, #NMRIHParticleFX + 1, "nmrih_lighter_fire_2")
table.insert(NMRIHParticleFX, #NMRIHParticleFX + 1, "nmrih_lighter_sparks_1")
table.insert(NMRIHParticleFX, #NMRIHParticleFX + 1, "nmrih_lighter_sparks_2")
table.insert(NMRIHParticleFX, #NMRIHParticleFX + 1, "nmrih_lighter_sparks_3")
table.insert(NMRIHParticleFX, #NMRIHParticleFX + 1, "nmrih_tnt_sparks")
table.insert(NMRIHParticleFX, #NMRIHParticleFX + 1, "molotov_explosion")
table.insert(NMRIHParticleFX, #NMRIHParticleFX + 1, "explosion_tnt_1")

local function NMRIHPrecache()
	for k, v in ipairs(NMRIHParticleFiles) do
		game.AddParticles("particles/" .. v .. ".pcf")
	end

	for k, v in ipairs(NMRIHParticleFX) do
		PrecacheParticleSystem(v)
	end
end

NMRIHPrecache()
hook.Add("InitPostEntity", "TFANMRIHPrecache", NMRIHPrecache)