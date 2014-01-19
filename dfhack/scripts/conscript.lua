-- Turns babies and children into adults, and assigns all labors to everyone in the fortress -also checks for messed up labors.
for _,v in ipairs(df.global.world.units.active) do
    if v.civ_id == df.global.ui.civ_id then
        if (v.profession >= 103) or (v.profession2 >= 103) then
            v.profession = 102
            v.profession2 = 102
            v.relations.following = nil
            if v.name.has_name == false then
                namey = 'This one'
            else
                namey = dfhack.TranslateName(v.name,true)
            end
            print(namey.. " is all grown up!")
        end
        v.flags1.ridden=false 
        v.flags1.rider=false 
        v.flags1.on_ground=false 
        v.relations.rider_mount_id=-1 
        if v.mood==8 then
            v.mood=-1
        end
        if v.counters.soldier_mood==2 then
            v.counters.soldier_mood_countdown=1
        end
        v.status.labors.HAUL_STONE = true 
        v.status.labors.HAUL_WOOD = true 
        v.status.labors.HAUL_BODY = true 
        v.status.labors.HAUL_FOOD = true 
        v.status.labors.HAUL_REFUSE = true 
        v.status.labors.HAUL_ITEM = true 
        v.status.labors.HAUL_FURNITURE = true 
        v.status.labors.HAUL_ANIMAL = true 
        v.status.labors.CLEAN = true 
        v.status.labors.CARPENTER = true 
        v.status.labors.DETAIL = true 
        v.status.labors.MASON = true 
        v.status.labors.ARCHITECT = true 
        v.status.labors.ANIMALTRAIN = true 
        v.status.labors.ANIMALCARE = true 
        v.status.labors.DIAGNOSE = true 
        v.status.labors.SURGERY = true 
        v.status.labors.BONE_SETTING = true 
        v.status.labors.SUTURING = true 
        v.status.labors.DRESSING_WOUNDS = true 
        v.status.labors.FEED_WATER_CIVILIANS = true 
        v.status.labors.RECOVER_WOUNDED = true 
        v.status.labors.BUTCHER = true 
        v.status.labors.TRAPPER = true 
        v.status.labors.DISSECT_VERMIN = true 
        v.status.labors.LEATHER = true 
        v.status.labors.TANNER = true 
        v.status.labors.BREWER = true 
        v.status.labors.ALCHEMIST = true 
        v.status.labors.SOAP_MAKER = true 
        v.status.labors.WEAVER = true 
        v.status.labors.CLOTHESMAKER = true 
        v.status.labors.MILLER = true 
        v.status.labors.PROCESS_PLANT = true 
        v.status.labors.MAKE_CHEESE = true 
        v.status.labors.MILK = true 
        v.status.labors.COOK = true 
        v.status.labors.PLANT = true 
        v.status.labors.HERBALIST = true 
        v.status.labors.CLEAN_FISH = true 
        v.status.labors.DISSECT_FISH = true 
        v.status.labors.SMELT = true 
        v.status.labors.FORGE_WEAPON = true 
        v.status.labors.FORGE_ARMOR = true 
        v.status.labors.FORGE_FURNITURE = true 
        v.status.labors.METAL_CRAFT = true 
        v.status.labors.CUT_GEM = true 
        v.status.labors.ENCRUST_GEM = true 
        v.status.labors.WOOD_CRAFT = true 
        v.status.labors.STONE_CRAFT = true 
        v.status.labors.BONE_CARVE = true 
        v.status.labors.GLASSMAKER = true 
        v.status.labors.EXTRACT_STRAND = true 
        v.status.labors.SIEGECRAFT = true 
        v.status.labors.SIEGEOPERATE = true 
        v.status.labors.BOWYER = true 
        v.status.labors.MECHANIC = true 
        v.status.labors.POTASH_MAKING = true 
        v.status.labors.LYE_MAKING = true 
        v.status.labors.DYER = true 
        v.status.labors.BURN_WOOD = true 
        v.status.labors.OPERATE_PUMP = true 
        v.status.labors.SHEARER = true 
        v.status.labors.SPINNER = true 
        v.status.labors.POTTERY = true 
        v.status.labors.GLAZING = true 
        v.status.labors.PRESSING = true 
        v.status.labors.WAX_WORKING = true 
        v.status.labors.PUSH_HAUL_VEHICLE = true 
    end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[74] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.74") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[75] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.75") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[76] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.76") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[77] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.77") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[78] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.78") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[79] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.79") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[80] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.80") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[81] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.81") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[82] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.82") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[83] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.83") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[84] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.84") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[85] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.85") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[86] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.86") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[87] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.87") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[88] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.88") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[89] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.89") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[90] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.90") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[91] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.91") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[92] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.92") end
    if (v.civ_id == df.global.ui.civ_id) and not (v.status.labors[93] == false) then print(dfhack.TranslateName(v.name,true).." has a true value for status.labors.93") end
end
