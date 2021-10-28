local maxVelocity = 8000 -- Default is exactly: 4000
local maxAngularVelocity = 14000 -- Default is exactly: 7272.7280273438

hook.Add( "InitPostEntity", "CFC_SpeedLimits_Setup", function()
    ORIGINAL_PERFORMANCE_SETTINGS = physenv.GetPerformanceSettings()

    local tbl = table.Copy( ORIGINAL_PERFORMANCE_SETTINGS )
    tbl.MaxAngularVelocity = maxAngularVelocity
    tbl.MaxVelocity = maxVelocity

    physenv.SetPerformanceSettings( tbl )
end )
