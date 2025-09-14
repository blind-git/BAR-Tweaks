--Faction Agnostic Mod
local function mergeLabs(labs)
    local merged = {}
    for _, lab in ipairs(labs) do
        local uDef = UnitDefs[lab]
        if uDef and uDef.buildoptions then
            for _, bo in ipairs(uDef.buildoptions) do
                merged[bo] = true
            end
        end
    end
    local list = {}
    for unitName in pairs(merged) do
        table.insert(list, unitName)
    end
    return list
end

local labGroups = {
    T1_Bot     = {"armlab","corlab","leglab"},
    T1_Vehicle = {"armvp","corvp","legvp"},
    T1_Air     = {"armap","corap","legap"},
    T1_Sea     = {"armsy","corsy","legsy"},
    T1_Amphib  = {"armamsub","coramsub","legamphlab"},
    T1_Hover   = {"armhp","corhp","leghp"},
    T1_FHover  = {"armfhp","corfhp","legfhp"},

    T2_Bot     = {"armalab","coralab","legalab"},
    T2_Vehicle = {"armavp","coravp","legavp"},
    T2_Air     = {"armaap","coraap","legaap"},
    T2_Sea     = {"armasy","corasy","legasy"},
    T2_Seaplane= {"armplat","corplat"},

    T3_Gantry  = {"armshltx","corgant","leggant"},
    T3_UWGantry = {"armshltxuw","corgantuw"},
    T3_Air = {"armapt3","corapt3","legapt3"}
}

for _, labs in pairs(labGroups) do
    local merged = mergeLabs(labs)
    for _, lab in ipairs(labs) do
        local uDef = UnitDefs[lab]
        if uDef then
            uDef.buildoptions = merged
        end
    end
end
