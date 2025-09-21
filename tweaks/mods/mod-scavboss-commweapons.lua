--Scavboss Commander Weapons
local function deepCopy(orig, seen)
    if type(orig) ~= "table" then return orig end
    if seen and seen[orig] then return seen[orig] end
    local copy = {}
    seen = seen or {}
    seen[orig] = copy
    for k, v in pairs(orig) do
        copy[deepCopy(k, seen)] = deepCopy(v, seen)
    end
    return copy
end

-- find a scavengerbossv4 unit as weapon source
local sourceUD, sourceName
for name, ud in pairs(UnitDefs) do
    if name:lower():find("scavengerbossv4") then
        sourceUD = ud
        sourceName = name
        break
    end
end

if not sourceUD then
    return
end

if not sourceUD.weapondefs or not sourceUD.weapons then
    return
end

-- build a lookup of source weapondef keys (lower) => original key
local srcWDefKeys = {}
for k in pairs(sourceUD.weapondefs) do
    srcWDefKeys[k:lower()] = k
end

-- copy src weapondefs table & prepare def name mapping (lower -> newKey)
local defMap = {}
for lowerK, origK in pairs(srcWDefKeys) do
    local newKey = "scav_" .. origK  -- new key in commander.weapondefs
    defMap[lowerK] = newKey
end

-- function to ensure commander has weapondefs table
local function ensureWeaponDefs(targetUD)
    if not targetUD.weapondefs then targetUD.weapondefs = {} end
end

local function ensureWeaponsList(targetUD)
    if not targetUD.weapons then targetUD.weapons = {} end
end

-- copy each weapondef into target under newKey if not present
local function copyWeaponDefsTo(targetUD)
    ensureWeaponDefs(targetUD)
    for lowerK, origK in pairs(srcWDefKeys) do
        local newKey = defMap[lowerK]
        if not targetUD.weapondefs[newKey] then
            targetUD.weapondefs[newKey] = deepCopy(sourceUD.weapondefs[origK])
        end
    end
end

-- copy weapons entries (array) into target.weapons, remapping .def to newKey
local function appendWeaponsEntriesTo(targetUD)
    ensureWeaponsList(targetUD)
    for _, wEntry in ipairs(sourceUD.weapons) do
        local defName = tostring(wEntry.def or "")
        local mapped = defMap[defName:lower()]
        if not mapped then
            -- fallback: try to match by scanning srcWDefKeys
            -- (shouldn't be needed normally)
            for lk, ok in pairs(srcWDefKeys) do
                if defName:lower() == ok:lower() then
                    mapped = defMap[lk]; break
                end
            end
        end
        if mapped then
            local newEntry = deepCopy(wEntry)
            newEntry.def = mapped
            table.insert(targetUD.weapons, newEntry)
        end
    end
end

-- list of commander bases to patch (base + lvl1..lvl10)
local bases = {"armcom", "corcom", "legcom"}
local patchedCount = 0
for _, base in ipairs(bases) do
    for lvl = 0, 10 do
        local unitName = (lvl == 0) and base or (base .. "lvl" .. lvl)
        local ud = UnitDefs[unitName]
        if ud then
            copyWeaponDefsTo(ud)
            appendWeaponsEntriesTo(ud)
            patchedCount = patchedCount + 1
        end
    end
end
