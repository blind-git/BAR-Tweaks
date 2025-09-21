--Omni Commanders Mod

local UnitDefs = UnitDefs or {}

-- Extra Build Options (Omni Faction Commanders)
local extraBuildOptions = {
    armcom = {
        "corlab","corvp","corsy","corhp","corap",
        "leglab","legvp","legsy","leghp","legap",
        "corexp", "legmext15",
    },
    corcom = {
        "armlab","armvp","armsy","armhp","armap",
        "leglab","legvp","legsy","leghp","legap",
        "armamex", "legmext15",
    },
    legcom = {
        "armlab","armvp","armsy","armhp","armap",
        "corlab","corvp","corsy","corhp","corap",
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

-- Omni Shields
local factions = {"armcom","corcom","legcom"}
local minShieldLevel = 2
local maxShieldLevel = 10

local function hasWeapon(unit, weaponName)
    if not unit.weapons then return false end
    for _, w in ipairs(unit.weapons) do
        if w.def:lower() == weaponName:lower() then
            return true
        end
    end
    return false
end

local function shallowCopy(orig)
    local copy = {}
    for k,v in pairs(orig) do copy[k] = v end
    return copy
end

for lvl = minShieldLevel, maxShieldLevel do
    local sourceName = "corcomlvl"..lvl
    local sourceDef = UnitDefs[sourceName]

    if sourceDef then
        -- Grab shield-related customparams
        local shieldParams = {}
        for _, key in ipairs({"shield_power","shield_radius","shield_color_mult"}) do
            if sourceDef.customparams and sourceDef.customparams[key] ~= nil then
                shieldParams[key] = sourceDef.customparams[key]
            end
        end

        -- Grab repulsor weapondef
        local repulsorDef = sourceDef.weapondefs and sourceDef.weapondefs.repulsor and shallowCopy(sourceDef.weapondefs.repulsor)

        -- Apply to all factions
        for _, faction in ipairs(factions) do
            local targetName = faction.."lvl"..lvl
            local targetDef = UnitDefs[targetName]
            if targetDef then
                -- Copy shield customparams only
                targetDef.customparams = targetDef.customparams or {}
                for k,v in pairs(shieldParams) do
                    targetDef.customparams[k] = v
                end

                -- Copy repulsor weapondef
                if repulsorDef then
                    targetDef.weapondefs = targetDef.weapondefs or {}
                    targetDef.weapondefs.repulsor = repulsorDef

                    -- Add to weapons array if missing
                    if not hasWeapon(targetDef, "REPULSOR") then
                        targetDef.weapons = targetDef.weapons or {}
                        table.insert(targetDef.weapons, { def = "REPULSOR", onlytargetcategory = "NOTSUB" })
                    end
                end
            end
        end
    end
end

-- Omni BotCannons
local minBotLevel = 3
local maxBotLevel = 10

for lvl = minBotLevel, maxBotLevel do
    -- Grab source botcannon from legcom lvl
    local sourceName = "legcomlvl"..lvl
    local sourceDef = UnitDefs[sourceName]

    if sourceDef and sourceDef.weapondefs and sourceDef.weapondefs.botcannon then
        local botCannonDef = shallowCopy(sourceDef.weapondefs.botcannon)

        -- Grab relevant customparams for botcannon inheritance
        local botParams = {}
        if sourceDef.customparams then
            for _, key in ipairs({"inheritxpratemultiplier","childreninheritxp","parentsinheritxp"}) do
                if sourceDef.customparams[key] ~= nil then
                    botParams[key] = sourceDef.customparams[key]
                end
            end
        end

        -- Apply to all factions for same level
        for _, faction in ipairs(factions) do
            local targetName = faction.."lvl"..lvl
            local targetDef = UnitDefs[targetName]
            if targetDef then
                -- Copy botcannon customparams
                targetDef.customparams = targetDef.customparams or {}
                for k,v in pairs(botParams) do
                    targetDef.customparams[k] = v
                end

                -- Copy weapondef
                targetDef.weapondefs = targetDef.weapondefs or {}
                targetDef.weapondefs.botcannon = botCannonDef

                -- Add to weapons array if missing
                if not hasWeapon(targetDef, "BOTCANNON") then
                    targetDef.weapons = targetDef.weapons or {}
                    table.insert(targetDef.weapons, { def = "BOTCANNON", onlytargetcategory = "NOTSHIP" })
                end
            end
        end
    end
end

