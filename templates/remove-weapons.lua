--====================================================--
-- Weapon Removal Template
--====================================================--
-- Define weapons to remove by unit


local UnitDefs = UnitDefs or {}

local weaponsToRemove = {
    -- unitName = { "weapon1, weapon2" }
    -- Example D-Gun Removal
    -- armcom = { "disintegrator" }, 
}

-- Weapon removal function
local function removeWeapons()
    for unitName, weapons in pairs(weaponsToRemove) do
        if UnitDefs[unitName] then
            local unit = UnitDefs[unitName]

            -- Remove weapondefs
            if unit.weapondefs then
                for _, weaponName in ipairs(weapons) do
                    unit.weapondefs[weaponName] = nil
                end
            end

            -- Remove from weapons array and reindex
            if unit.weapons then
                local newWeapons = {}
                local newIndex = 1

                for _, weapon in ipairs(unit.weapons) do
                    local keep = true
                    for _, weaponName in ipairs(weapons) do
                        if weapon.def == weaponName then
                            keep = false
                            break
                        end
                    end

                    if keep then
                        newWeapons[newIndex] = weapon
                        newIndex = newIndex + 1
                    end
                end

                unit.weapons = newWeapons
            end
        end
    end
end

-- Run once
removeWeapons()
