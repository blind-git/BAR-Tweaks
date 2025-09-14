--All Faction Commanders
local extraBuildOptions = {
    armcom = {
        "corlab","corvp","corsy","corhp","corap",
        "leglab","legvp","legsy","leghp","legap",
    },
    corcom = {
        "armlab","armvp","armsy","armhp","armap",
        "leglab","legvp","legsy","leghp","legap",
    },
    legcom = {
        "armlab","armvp","armsy","armhp","armap",
        "corlab","corvp","corsy","corhp","corap",
    },
}

for baseName, extras in pairs(extraBuildOptions) do
    for lvl = 0, 10 do
        local unitName = lvl == 0 and baseName or (baseName .. "lvl" .. lvl)
        local uDef = UnitDefs[unitName]
        if uDef and uDef.buildoptions then
            for _, option in ipairs(extras) do
                table.insert(uDef.buildoptions, option)
            end
        end
    end
end
