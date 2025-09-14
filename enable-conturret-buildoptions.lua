--Enable ConTurret BuildOptions
function deepcopy(a)
    local b = type(a)
    local c
    if b == 'table' then
        c = {}
        for d, e in next, a, nil do 
            c[deepcopy(d)] = deepcopy(e)
        end
        setmetatable(c, deepcopy(getmetatable(a)))
    else 
        c = a 
    end
    return c 
end

local UnitDefs = UnitDefs or {}
local factions = {'arm', 'cor', 'leg'}

-- First part: T1 nano turrets get T1 constructor buildoptions
for _, faction in ipairs(factions) do 
    local t1NanoUnits = {faction..'nanotc', faction..'respawn', 'legnanotcbase'}
    
    for _, nanoUnit in ipairs(t1NanoUnits) do 
        if UnitDefs[nanoUnit] then 
            local t1BuildOptions = deepcopy(UnitDefs[faction..'ck'].buildoptions)
            UnitDefs[nanoUnit].buildoptions = {}
            for index, unitName in ipairs(t1BuildOptions) do 
                UnitDefs[nanoUnit].buildoptions[index] = unitName 
            end 
        end 
    end 
end

-- Second part: T2 nano turrets get extra units
for _, faction in ipairs(factions) do 
    -- Units that all factions get
    local commonT2Units = {
        faction..'gatet3',   -- Advanced Shield Generator
        faction..'nanotct2', -- T2 Constructor Turret
        faction..'wint2',    -- T2 Wind Generator
        faction..'aap',      -- T2 Aircraft Plant
        faction..'avp'       -- T2 Vehicle Plant
    }
    
    -- Faction-specific extra units
    local factionSpecificUnits = {}
    if faction == 'arm' then 
        factionSpecificUnits = {'armminivulc', 'armbotrail', 'armannit3', 'armshockwave', 'armlwall'}
    elseif faction == 'cor' then 
        factionSpecificUnits = {'corminibuzz', 'corhllllt', 'cordoomt3', 'cormwall'}
    elseif faction == 'leg' then 
        factionSpecificUnits = {'legmohocon', 'legrwall'}
    end
    
    -- Combine all units to add
    local allUnitsToAdd = {}
    for _, unitName in ipairs(commonT2Units) do 
        table.insert(allUnitsToAdd, unitName)
    end
    for _, unitName in ipairs(factionSpecificUnits) do 
        table.insert(allUnitsToAdd, unitName)
    end
    
    -- Apply to T2 nano turret
    local t2NanoUnit = faction..'nanotct2'
    if UnitDefs[t2NanoUnit] then 
        -- Start with T2 constructor buildoptions as base
        UnitDefs[t2NanoUnit].buildoptions = deepcopy(UnitDefs[faction..'ack'].buildoptions)
        
        -- Add all the extra units
        for _, unitName in ipairs(allUnitsToAdd) do 
            table.insert(UnitDefs[t2NanoUnit].buildoptions, unitName)
        end 
    end 
end
