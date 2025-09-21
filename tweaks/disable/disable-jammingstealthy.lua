--Disable Jamming & Stealth on all units
for unitName, uDef in pairs(UnitDefs) do
    -- Kill radar jamming
    if uDef.radardistancejam and uDef.radardistancejam > 0 then
        uDef.radardistancejam = 0
        uDef.onoffable = false
        uDef.energyupkeep = 0
    end

    -- Kill stealth (applies to ALL stealth units, not just radar jammers)
    if uDef.stealth then
        uDef.stealth = false
    end
end
