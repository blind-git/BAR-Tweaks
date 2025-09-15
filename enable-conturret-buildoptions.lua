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

-- T1 nano turrets get T1 constructor buildoptions
local t1Constructors = {
    armnanotc = 'armck', 
    armrespawn = 'armck', 
    cornanotc = 'corck', 
    correspawn = 'corck', 
    legnanotc = 'legck', 
    legrespawn = 'legck', 
    legnanotcbase = 'legck'
}

for nanoUnit, constructor in pairs(t1Constructors) do 
    if UnitDefs[nanoUnit] and UnitDefs[constructor] then 
        UnitDefs[nanoUnit].buildoptions = deepcopy(UnitDefs[constructor].buildoptions)
    end 
end

-- Floating nano platforms get submarine constructor buildoptions
local floatingNanos = {
    -- T1 floating nanos
    armnanotcplat = 'armcs',
    cornanotcplat = 'corcs', 
    legnanotcplat = 'corcs',  -- Legion uses Cortex navy since no Legion navy yet
    
    -- T2 floating nanos
    armnanotc2plat = 'armacsub',
    cornanotc2plat = 'coracsub',
    legnanotc2plat = 'coracsub'  -- Legion uses Cortex navy since no Legion navy yet
}

for floatingNano, subConstructor in pairs(floatingNanos) do 
    if UnitDefs[floatingNano] and UnitDefs[subConstructor] then 
        UnitDefs[floatingNano].buildoptions = deepcopy(UnitDefs[subConstructor].buildoptions)
    end 
end

-- T2 nano turrets get extra units
local t2NanoExtras = {
    armnanotct2 = {
        constructor = 'armack',
        commonUnits = {'armgatet3', 'armnanotct2', 'armwint2', 'armaap', 'armavp'},
        factionUnits = {'armminivulc', 'armbotrail', 'armannit3', 'armshockwave', 'armlwall'}
    },
    cornanotct2 = {
        constructor = 'corack',
        commonUnits = {'corgatet3', 'cornanotct2', 'corwint2', 'coraap', 'coravp'},
        factionUnits = {'corminibuzz', 'corhllllt', 'cordoomt3', 'cormwall'}
    },
    legnanotct2 = {
        constructor = 'legack',
        commonUnits = {'leggatet3', 'legnanotct2', 'legwint2', 'legaap', 'legavp'},
        factionUnits = {'legmohocon', 'legrwall'}
    }
}

for t2NanoUnit, config in pairs(t2NanoExtras) do 
    if UnitDefs[t2NanoUnit] and UnitDefs[config.constructor] then 
        -- Start with T2 constructor buildoptions as base
        UnitDefs[t2NanoUnit].buildoptions = deepcopy(UnitDefs[config.constructor].buildoptions)
        
        -- Add common units
        for _, unitName in ipairs(config.commonUnits) do 
            table.insert(UnitDefs[t2NanoUnit].buildoptions, unitName)
        end
        
        -- Add faction-specific units
        for _, unitName in ipairs(config.factionUnits) do 
            table.insert(UnitDefs[t2NanoUnit].buildoptions, unitName)
        end 
    end 
end
