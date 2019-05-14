#Requires -RunAsAdministrator

if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Error "This script must be executed as Administrator.";
    exit 1;
}

param (
    [string]$action
)

function link_winsw {
    param ($action)
    switch ($action) {
        "link" {
            if (!(Test-Path winsw.exe -PathType Leaf)) {
                New-Item -Path winsw.exe -ItemType SymbolicLink -Value C:\ProgramData\scoop\apps\winsw\current\winsw.exe;
            };
            Break
        }
        "unlink" {
            if (Test-Path winsw.exe -PathType Leaf) {
                Remove-Item winsw.exe -Force
            };
            Break
        }
    }
}

switch ($action) {
    "up" {
        link_winsw link;
        .\winsw.exe install;
        .\winsw.exe start;
        Break
    }
    "stop" {
        .\winsw.exe stop;
        Break
    }
    "down" {
        .\winsw.exe stop;
        .\winsw.exe uninstall;
        link_winsw unlink;
        Break
    }
}
