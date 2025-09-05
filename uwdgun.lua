-- Enable DGun underwater for all commanders
local commanders = {
    "armcom","corcom","legcom",
    "armcomlvl1","armcomlvl2","armcomlvl3","armcomlvl4","armcomlvl5",
    "armcomlvl6","armcomlvl7","armcomlvl8","armcomlvl9","armcomlvl10",
    "corcomlvl1","corcomlvl2","corcomlvl3","corcomlvl4","corcomlvl5",
    "corcomlvl6","corcomlvl7","corcomlvl8","corcomlvl9","corcomlvl10",
    "legcomlvl1","legcomlvl2","legcomlvl3","legcomlvl4","legcomlvl5",
    "legcomlvl6","legcomlvl7","legcomlvl8","legcomlvl9","legcomlvl10",
}

for _, name in ipairs(commanders) do
    local uDef = UnitDefs[name]
    if uDef and uDef.weapondefs then
        for _, wDef in pairs(uDef.weapondefs) do
            if wDef.name and wDef.name:lower():find("disintegrator") then
                wDef.firesubmersed = true
                wDef.waterweapon   = true
            end
        end
    end
end
