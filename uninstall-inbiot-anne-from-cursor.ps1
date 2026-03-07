# Uninstall inbiot-anne plugin from Cursor (run with Cursor fully closed)
# Removes plugin cache and marketplace copy so Cursor stops loading the plugin.
# If Cursor re-creates the folders on next start, the "installed" state is likely
# synced to your Cursor account and the in-app Uninstall is broken.

$ErrorActionPreference = "Stop"
$pluginsRoot = "$env:USERPROFILE\.cursor\plugins"

$toRemove = @(
    "$pluginsRoot\cache\inbiot-anne",
    "$pluginsRoot\marketplaces\inbiot-anne-388"
)

foreach ($path in $toRemove) {
    if (Test-Path $path) {
        Remove-Item -Path $path -Recurse -Force
        Write-Host "Removed: $path"
    } else {
        Write-Host "Not found (already removed): $path"
    }
}

# Verify
$cacheExists = Test-Path "$pluginsRoot\cache\inbiot-anne"
$marketExists = Test-Path "$pluginsRoot\marketplaces\inbiot-anne-388"
if (-not $cacheExists -and -not $marketExists) {
    Write-Host "`nDone. inbiot-anne plugin files are removed. Start Cursor and check if it still appears."
} else {
    Write-Host "`nWarning: One or both paths still exist. Close all Cursor windows and run this script again."
}
