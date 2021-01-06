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
    
# Also downloads rufus
    Invoke-WebRequest https://github.com/pbatard/rufus/releases/download/v3.13/rufus-3.13.exe -OutFile C:\Rufus.exe 
    
    Write-Host "Installing Chocolatey"
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    choco install chocolatey-core.extension -y
}

function installTeamviewer { 
    Write-Host "Installing Teamviewer"
    choco install teamviewer -y
    $wshell.Popup("Operation Completed",0,"Done",0x0)
}

function installqbt {
    Write-Host "Installing qBittorrent"
    choco install qbittorrent -y
    $wshell.Popup("Operation Completed",0,"Done",0x0)
}

function runtv {
    & 'C:\Program Files (x86)\TeamViewer\TeamViewer.exe'
    Invoke-WebRequest https://raw.githubusercontent.com/gamerhat18/win10script/master/essentialsInstall.ps1 C:\essentialsInstall.ps1
}




installchoco

installTeamviewer

runtv
# Chris Titus' Debloat Script command given below for quick copy-paste.
# iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JJ8R4'))

# My scripts
# https://cybrdise.com/sakshi/one
