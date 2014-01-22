--By Telgin and Kurik Amudnil from the DFHACK r3 thread. And Eldrick Tobib with help from RPG Nostalgia
function cure4()
	for _,unit in pairs(df.global.world.units.active) do
		unit.flags1.dead = false
		unit.flags2.killed = false
		if unit.caste == 0 then
			unit.caste = 1
		else
			unit.caste = 0
		end
	end
end
cure4()