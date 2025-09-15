--Omni Faction Commanders
local extraBuildOptions = {
    armcom = {
        -- Original: Labs & Factories (all levels)
        "corlab","corvp","corsy","corhp","corap",
        "leglab","legvp","legsy","leghp","legap",
        -- New: T1 Mexes (all levels)
        "corexp", "legmext15",
    },
    corcom = {
        -- Original: Labs & Factories (all levels)
        "armlab","armvp","armsy","armhp","armap",
        "leglab","legvp","legsy","leghp","legap",
        -- New: T1 Mexes (all levels)
        "armamex", "legmext15",
    },
    legcom = {
        -- Original: Labs & Factories (all levels)
        "armlab","armvp","armsy","armhp","armap",
        "corlab","corvp","corsy","corhp","corap",
        -- New: T1 Mexes (all levels)
        "armamex", "corexp",
    },
}

-- T2 Mexes & Geos for evolution commanders (levels 5-10 only)
local evoOnlyUnits = {
    armcom = {"cormexp", "legmohocon", "corbhmth", "legrampart"},
    corcom = {"armshockwave", "legmohocon", "legrampart"},
    legcom = {"armshockwave", "cormexp", "corbhmth"},
}

for baseName, extras in pairs(extraBuildOptions) do
    for lvl = 0, 10 do
        local unitName = lvl == 0 and baseName or (baseName .. "lvl" .. lvl)
        local uDef = UnitDefs[unitName]
        if uDef and uDef.buildoptions then
            -- Add all basic units (labs, factories, T1 mexes) to all levels
            for _, option in ipairs(extras) do
                table.insert(uDef.buildoptions, option)
            end
            
            -- Add T2 mexes & geos only to evolution levels 5-10
            if lvl >= 5 and evoOnlyUnits[baseName] then
                for _, option in ipairs(evoOnlyUnits[baseName]) do
                    table.insert(uDef.buildoptions, option)
                end
            end
        end
    end
end
