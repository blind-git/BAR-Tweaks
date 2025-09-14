--Disable Jamming/Stealthy
for unitName, uDef in pairs(UnitDefs) do
    if uDef.radardistancejam and uDef.radardistancejam > 0 then
        uDef.radardistancejam = 0
        uDef.stealth = false
        uDef.onoffable = false
        uDef.energyupkeep = 0
    end
end
