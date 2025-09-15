--Regenerative Alloys

local UNIT_HEALTH_MULT = 1.2          -- 20% boost to units' max health
local UNIT_AUTOHEAL_MULT = 1.1        -- 10% boost to units' autoheal/idleautoheal
local UNIT_IDLE_AUTOHEAL = 5           -- base idle autoheal if missing

local BUILDING_HEALTH_MULT = 1.3      -- 30% boost to building max health
local BUILDING_AUTOHEAL_MULT = 1.1    -- 10% boost to building autoheal/idleautoheal
local BUILDING_IDLE_AUTOHEAL = 5       -- base idle autoheal if missing

for name, unit in pairs(UnitDefs) do
    if unit.canmove and unit.speed and unit.speed > 0 then
        -- Unit
        unit.health = (unit.health or 100) * UNIT_HEALTH_MULT

        unit.autoheal = (unit.autoheal or UNIT_IDLE_AUTOHEAL) * UNIT_AUTOHEAL_MULT
        unit.idleautoheal = (unit.idleautoheal or UNIT_IDLE_AUTOHEAL) * UNIT_AUTOHEAL_MULT
    else
        -- Building
        unit.health = (unit.health or 100) * BUILDING_HEALTH_MULT

        unit.autoheal = (unit.autoheal or BUILDING_IDLE_AUTOHEAL) * BUILDING_AUTOHEAL_MULT
        unit.idleautoheal = (unit.idleautoheal or BUILDING_IDLE_AUTOHEAL) * BUILDING_AUTOHEAL_MULT
    end
end
