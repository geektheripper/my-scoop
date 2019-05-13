param (
    [string]$action
)

function link_winsw {
    param ($action)
    switch ($action) {
        "link" {
            if (!(Test-Path winsw.exe -PathType Leaf)) {
                sudo New-Item -Path winsw.exe -ItemType SymbolicLink -Value C:\ProgramData\scoop\apps\winsw\current\winsw.exe;
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
        sudo .\winsw.exe install;
        sudo .\winsw.exe start;
        Break
    }
    "stop" {
        sudo .\winsw.exe stop;
        Break
    }
    "down" {
        sudo .\winsw.exe stop;
        sudo .\winsw.exe uninstall;
        link_winsw unlink;
        Break
    }
}
