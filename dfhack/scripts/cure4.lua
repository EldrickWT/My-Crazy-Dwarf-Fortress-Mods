--By Telgin and Kurik Amudnil from the DFHACK r3 thread (heal2). And Eldrick Tobib with help from RPG Nostalgia (cure4)
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
dfhack.with_suspend(cure4)