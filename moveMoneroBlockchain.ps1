# Move Monero Blockchain Location
# Ⓒ 2018 @Krakenfuego
# MIT License
Import-Module BitsTransfer

# Elevate Admin Permissions
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs}

# Ask user where they want to store blockchain
    $newBlockchainLocation = Read-Host -Prompt 'Input new location'

# Try to Create the directory if it doesnt exist
    New-Item $newBlockchainLocation -ItemType Directory
    New-Item $newBlockchainLocation/bitmonero -ItemType Directory 

# Check If Monero Blockchain is Present
    $blockchainExists = 0;
    $monero = "$env:ProgramData/bitmonero"

    If (Test-Path $Zcash) {
        $blockchainExists = 1;
        Write-Output "Monero Installed"
    }
    Else {
        Write-Output "No Monero Install"
    }

# If Exists Move to New Location
    If ($blockchainExists -eq 1) {
	Write-Output "Please wait while blockchain is copied to new location..."
        Move-Item -Path "$env:ProgramData/bitmonero" -Destination $newBlockchainLocation
        New-Item -Path "$env:ProgramData/bitmonero" -ItemType SymbolicLink -Value $newBlockchainLocation/bitmonero
    }
    Else {
        New-Item -Path "$env:ProgramData/bitmonero" -ItemType SymbolicLink -Value $newBlockchainLocation/bitmonero
    }

