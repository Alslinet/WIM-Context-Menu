# This script elevates a script to administrator privileges.
# In this case the script WIMContextMenu Script that creates wim files.
# Author: Vegard Søbstad Alsli
# Date: 07.04.2021
# Version: 1.0
param (
    [string]$path = ""
)
$ScriptToElevate = "$env:programfiles\Alslinet\WIMContextMenu\WIMContextMenuScript.ps1"
$argumentlist = "-noprofile -ExecutionPolicy Bypass -file " + """" + $ScriptToElevate + """" + " " + """" + $path + """"
$argumentlist

"Running command..."
start-process powershell -ArgumentList $argumentlist -verb RunAs -Verbose