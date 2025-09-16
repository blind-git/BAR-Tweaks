-- Extra Units Lite
local UnitDefs = UnitDefs or {}

-- Table of extra units for each builder
local extraUnits = {
    -- ARM builders
    armap  = {"armfify"},
    armvp  = {"armzapper"},
    armshockwave = {},
    armshltx = {  -- ARM T3 Extra
        "armassimilator","armlunchbox","armmeatball","armpwt4","armsptkt4",
        "armrattet4","armdronecarryland",
    },
    armack = {"armnanotct2","armshockwave"},
    armaca = {"armnanotct2","armshockwave"},
    armacv = {"armnanotct2"},

    -- ARM T2 navy labs
    armasy = {"armdecadet3","armpshipt3","coresuppt3","armserpt3","armptt2"},

    -- CORE builders
    coravp = {
        "coracv","corsala","correap","corparrow","corgol","corban","cormart",
        "corvroc","cortrem","corsent","cormabm","coreter","corvrad","cortorch",
        "corgatreap","corftiger","corforge","corsiegebreaker","corvac","corphantom",
    },
    corack = {"cornanotct2","cormwall"},
    coraca = {"cornanotct2"},
    coracv = {"cornanotct2"},
    corgant = {   -- CORE T3 Extra
         "corakt4","corkarganetht4","cormandot4","corgolt4","leggobt3","legpede","legsrailt4"
    },
    corforge = {
        "cortorch","corsala","corftiger","corah","corvrad","coreter","corsolar",
        "corexp","cormakr","coreyes","cordrag","cormaw","corrl","corhlt"
    },
    corvac = {"cornanotc"},

    -- CORE T2 navy labs
    corasy = {"armdecadet3","armpshipt3","coresuppt3","armserpt3","armptt2"},

    -- LEG builders
    legaca = {"legnanotct2","cormwall"},
    legack = {"legnanotct2","cormwall"},
    legacv = {"legnanotct2","cormwall"}
}

-- Unit-specific tweaks
local unitTweaks = {
    armzapper = {health = 280, speed = 171.0},
    cortorch = {health = 1350}
}

-- Apply extra build options
for builderName, units in pairs(extraUnits) do
    local builder = UnitDefs[builderName]
    if builder then
        builder.buildoptions = builder.buildoptions or {}
        for _, u in ipairs(units) do
            local exists = false
            for _, bu in ipairs(builder.buildoptions) do
                if bu == u then exists = true break end
            end
            if not exists then
                table.insert(builder.buildoptions, u)
            end
        end
    end
end

-- Apply unit-specific tweaks
for unitName, tweaks in pairs(unitTweaks) do
    local uDef = UnitDefs[unitName]
    if uDef then
        for k, v in pairs(tweaks) do
            uDef[k] = v
        end
    end
end
