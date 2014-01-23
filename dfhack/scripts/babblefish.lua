-- Get the selected unit's first name in the Target Language. 'babblefish ELF'
-- Currently only handles the FIRST_NAME as everything seems to ignore translating it that my file search skills have found.
-- The Plan: to obey parts of speech for both the first name and the other subsequent words of the name.
-- I wish to truly babblefish the whole name.
-- ALSO! When all is said and done be able to enact that change. 'babblefish ELF do'
-- Or more specifically 'babblefish English do' for races with beautiful but hard to track names.
args = ...
unit = dfhack.gui.getSelectedUnit()
targlang = args
for valuelangy,langy in ipairs(df.global.world.raws.language.translations) do
	if (string.lower(langy.name) == string.lower(targlang)) then
		worker1 = valuelangy
	end
end
for valuewordz,wordz in ipairs(df.global.world.raws.language.translations[unit.name.language].words) do
	if (wordz[0] == unit.name.first_name) then
		worker2 = valuewordz
	end
end
print(dfhack.TranslateName(unit.name,false,false).. "'s first name becomes " ..df.global.world.raws.language.translations[worker1].words[worker2][0].. " in " ..string.lower(targlang).. " which is " ..string.lower(df.global.world.raws.language.words[worker2].word).. " in its rawest form.")