# This script installs the WIM Context menu
# Wim context menu lets you right click a folder to create a wim file from it.
# Author: Vegard Søbstad Alsli
# Date: 07.04.2021
# Version: 1.0

Copy-item .\LaunchScriptElevated.ps1 "$env:ProgramFiles\Alslinet\WIMContextMenu"
Copy-item .\WIMContextMenuScript.ps1 "$env:ProgramFiles\Alslinet\WIMContextMenu"
reg import .\ContextMenuRegistry.reg
