-- This script will make any "young" dwarf 20 years old
-- usage is:  target a unit in DF, and execute this script in dfhack
-- via ' lua /path/to/script '
-- the target will be changed to 20 years old
-- by vjek, version 3, 20130123, for DF(hack) 34.11 r2
-- Paise Armok!


function graduate()
local current_year,newbirthyear
unit=dfhack.gui.getSelectedUnit()

if unit==nil then
	print ("No unit under cursor!  No apprentice this year.")
	return
	end

print (dfhack.TranslateName(dfhack.units.getVisibleName(unit)).. " was born in the year "..unit.relations.birth_year..".")
current_year=df.global.cur_year
print ("The current year is "..df.global.cur_year..".")
newbirthyear=current_year - 20
print ("The attempted new birth year is "..newbirthyear..".")
if unit.relations.birth_year > newbirthyear then
	unit.relations.birth_year=newbirthyear
end
print (dfhack.TranslateName(dfhack.units.getVisibleName(unit)).."was born in the year "..unit.relations.birth_year..".")

end

graduate()