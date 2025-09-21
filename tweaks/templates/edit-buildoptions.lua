--====================================================--
-- BuildOption Add & Remove Template
--====================================================--
-- Define buildoptions to edit
local UnitDefs = UnitDefs or {}

-- Units to ADD buildoptions
local buildOptionsAdd = {
    -- Builder = { "unitToAdd", "unitToAdd2" },
}

-- Units to REMOVE buildoptions
local buildOptionsRemove = {
      -- Builder = { "unitToRemove", "unitToRemove2" },
}

-- Edit BuildOptions Function
local function editBuildOptions()
    -- Loop all units in UnitDefs
    for unitName, unitDef in pairs(UnitDefs) do
        if unitDef.buildoptions then
            local newBuildOptions = {}

            -- Remove unwanted buildoptions
            local toRemove = {}
            if buildOptionsRemove[unitName] then
                for _, bad in ipairs(buildOptionsRemove[unitName]) do
                    toRemove[bad] = true
                end
            end

            for _, build in ipairs(unitDef.buildoptions) do
                if not toRemove[build] then
                    table.insert(newBuildOptions, build)
                end
            end

            -- Add new buildoptions
            if buildOptionsAdd[unitName] then
                for _, addUnit in ipairs(buildOptionsAdd[unitName]) do
                    table.insert(newBuildOptions, addUnit)
                end
            end

            -- Save final buildoptions
            unitDef.buildoptions = newBuildOptions
        end
    end
end

editBuildOptions()
