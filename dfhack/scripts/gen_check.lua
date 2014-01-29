--Gender check. Just a gender check for the ACTIVE units. <-=--- I'LL REPURPOSE THIS LATER.
everyone = false
for _,arg in ipairs({...}) do
	if arg == "all" or arg == "ALL" then everyone = true
	else everyone = false
	end
end
function gender_check ()
	local unit, unit2, unit3, gendery, spousey2, spousey3, namey2, namey3, namey1done, namey2done, namey3done = ""
	print(unit)
	print(unit2)
	print(unit3)
	print(gendery)
	print(spousey2)
	print(spousey3)
	print(namey2)
	print(namey3)
	print(namey1done)
	print(namey2done)
	print(namey3done)
	unit=dfhack.gui.getSelectedUnit()
	print(unit)
		if (unit.civ_id == df.global.ui.civ_id) then
	print(unit.civ_id)
	print(df.global.ui.civ_id)
			if not (unit.flags1.dead) then
				if (df.global.world.raws.creatures.all[unit.race].caste[unit.caste].gender == 0) then
					gendery = "Female [0]"
	print(gendery)
				elseif (df.global.world.raws.creatures.all[unit.race].caste[unit.caste].gender == 1) then
					gendery = "Male [1]"
	print(gendery)
				else
					gendery = "Other [cabbage]"
	print(gendery)
				end
	print(unit.name.has_name)
				if unit.name.has_name == false then
					namey1done = df.global.world.raws.creatures.all[unit.race].name[0]
	print(namey1done)
				else
					namey1done = dfhack.TranslateName(unit.name,false,false)
	print(namey1done)
				end
	print(unit.relations.spouse_id)
				if unit.relations.spouse_id == -1 then
					spousey2 = "They are not married."
	print(spousey2)
				else
					spousey2 = "They are married to "
	print(spousey2)
					for _,unit2 in ipairs(df.global.world.units.active) do
						if (unit.id == unit2.relations.spouse_id) then
	print(unit2.relations.spouse_id)
							namey2 = unit2
	print(namey2)
	print(unit2)
						end
					end
				end
				if unit.relations.lover_id == -1 then
					spousey3 = "They are not busy Friday Night (wink)."
	print(spousey3)
				else
					spousey3 = "They are busy Friday Night (wink) with "
	print(spousey3)
					for _,unit3 in ipairs(df.global.world.units.active) do
						if (unit.id == unit3.relations.lover_id) then
	print(unit3.relations.lover_id)
							namey3 = unit3
	print(namey3)
	print(unit3)
						end
					end
				end
	print(namey2)
				if not namey2 == "" then
	print(namey2.has_name)
					if namey2.has_name == false then
						namey2done = df.global.world.raws.creatures.all[namey2.race].name[0]
	print(namey2done)
					else
						namey2done = dfhack.TranslateName(namey2.name,false,false)
	print(namey2done)
					end
				else
					namey2done = ""
				end
	print(namey3)
				if not namey3 == "" then
	print(namey3.has_name)
					if namey3.has_name == false then
						namey3done = df.global.world.raws.creatures.all[namey3.race].name[0]
	print(namey3done)
					else
						namey3done = dfhack.TranslateName(namey3.name,false,false)
	print(namey3done)
					end
				else
					namey3done = ""
				end
				if (everyone == true) then
					print(namey1done.." is a "..df.global.world.raws.creatures.all[unit.race].creature_id.." ("..df.global.world.raws.creatures.all[unit.race].caste[unit.caste].caste_name[0]..") and their gender is "..gendery..". "..spousey2..""..namey2done.." "..spousey3..""..namey3done)
				else
					if not (namey2done == "") or not (namey3done == "") then
						print(namey1done.." is a "..df.global.world.raws.creatures.all[unit.race].creature_id.." ("..df.global.world.raws.creatures.all[unit.race].caste[unit.caste].caste_name[0]..") and their gender is "..gendery..". "..spousey2..""..namey2done.." "..spousey3..""..namey3done)
					end
				end
			end
		end
	end
dfhack.with_suspend(gender_check)
