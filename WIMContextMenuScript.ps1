# This script elevates creates a wim file from the passed parameter. 
# Since DISM requires admin privileges to create a wim file you have to run it elevated.
# Author: Vegard Søbstad Alsli
# Date: 07.04.2021
# Version: 1.0
 param (
    [string]$path = ""
)
$Folder = $path
Dism /Capture-Image /ImageFile:$Folder\DriverPackage.wim /CaptureDir:$Folder /Name:DriverPackage