local magicNumber = 11784960000

hook.Add( "InitPostEntity", "CFC_SpeedLimits_Setup", function()
    ORIGINAL_PERFORMANCE_SETTINGS = physenv.GetPerformanceSettings()

    local tbl = table.Copy( ORIGINAL_PERFORMANCE_SETTINGS )
    tbl.MaxAngularVelocity = magicNumber
    tbl.MaxVelocity = magicNumber

    physenv.SetPerformanceSettings( tbl )
end )
