--Enable Reverse Gear
local uDefs = UnitDefs or {}
for id, uDef in pairs(uDefs) do
    if (not uDef.canfly) and uDef.speed then
        uDef.rspeed = uDef.speed*0.65
    end
end
