#This Script:
#iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/Jt3LI'))

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$ErrorActionPreference = 'SilentlyContinue'
$wshell = New-Object -ComObject Wscript.Shell
$Button = [System.Windows.MessageBoxButton]::YesNoCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Error
$Ask = 'Do you want to run this as an Administrator?
        Select "Yes" to Run as an Administrator
        Select "No" to not run this as an Administrator
        
        Select "Cancel" to stop the script.'

If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    $Prompt = [System.Windows.MessageBox]::Show($Ask, "Run as an Administrator or not?", $Button, $ErrorIco) 
    Switch ($Prompt) {
        #This will debloat Windows 10
        Yes {
            Write-Host "You didn't run this script as an Administrator. This script will self elevate to run as an Administrator and continue."
            Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
            Exit
        }
        No {
            Break
        }
    }
}


function installchoco { 
    Write-Host "Installing Chocolatey"
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    choco install chocolatey-core.extension -y
    refreshenv
}

function installTeamviewer {
    refreshenv 
    Write-Host "Installing Teamviewer..."
    choco install teamviewer -y
    Write-Host "Teamviewer Installed."
}

function installqbt {
    refreshenv
    Write-Host "Installing qBittorrent..."
    choco install qbittorrent -y
    Write-Host "qBittorent Installed."
}

function install7z {
    refreshenv
    Write-Host "Installing qBittorrent..."
    choco install 7zip.install -y
    Write-Host "qBittorent Installed."
}

function runtv {
    Invoke-WebRequest https://raw.githubusercontent.com/gamerhat18/quick-setup/main/Windows/Initial.ps1 C:\Initial.ps1 #https://git.io/Jt3LI
    Invoke-WebRequest https://raw.githubusercontent.com/gamerhat18/win10script/master/essentialsInstall.ps1 C:\essentialsInstall.ps1
    & 'C:\Program Files (x86)\TeamViewer\TeamViewer.exe'
}

function downloadElementaryOS {
    # Also downloads rufus
    Invoke-WebRequest https://github.com/pbatard/rufus/releases/download/v3.13/rufus-3.13.exe -OutFile C:\Rufus.exe 
    refreshenv
    #qbittorrent  --add-paused=false --save-path='C:\' --skip-dialog=true 'magnet:?xt=urn:btih:73e9c0288c0b62c2646b695219b550fd231fede4&dn=elementaryos-5.1-stable.20200814.iso&tr=https%3A%2F%2Fashrise.com%3A443%2Fphoenix%2Fannounce&tr=udp%3A%2F%2Fopen.demonii.com%3A1337%2Fannounce&tr=udp%3A%2F%2Ftracker.ccc.de%3A80%2Fannounce&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80%2Fannounce&tr=udp%3A%2F%2Ftracker.publicbt.com%3A80%2Fannounce&ws=http%3A%2F%2Fsgp1.dl.elementary.io%2Fdownload%2FMTYxMTMwODE3OQ%3D%3D%2Felementaryos-5.1-stable.20200814.iso'
}

function usefulsoft {
    refreshenv
    choco install vlc -y
    choco install sumatrapdf.install -y
    choco install googlechrome -y
    choco install everything -y
    choco install libreoffice-fresh -y

}

installchoco

#install7z

#installqbt

installTeamviewer

refreshenv
#Invoke-WebRequest https://github.com/ventoy/Ventoy/releases/download/v1.0.33/ventoy-1.0.33-windows.zip -OutFile C:\Ventoy.zip
#cd C:\

runtv

Invoke-WebRequest https://raw.githubusercontent.com/gamerhat18/quick-setup/main/Windows/Initial.ps1 C:\Initial.ps1 #https://git.io/Jt3LI
#downloadElementaryOS

# Chris Titus' Debloat Script command given below for quick copy-paste.
# iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JJ8R4'))
