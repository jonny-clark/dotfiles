# Jonathan's windevsetup (Not finished yet)


## Introduction
A collection of scripts to bootstrap a clean install of Windows Dev Environment.


## Installation

1. Install powershell 3 or above (You can skip this step for windows 8 and above)
    `https://msdn.microsoft.com/en-us/powershell/scripting/setup/installing-windows-powershell`

2. Run the following command to do everything.  _Note: you will be prompted for your password a number of times during script execution._
    ```bash
    ~/Projects/windevsetup/bootstrap.ps1
    ```

    Essentially, `bootstrap.ps1` executes the following commands:
    ```bash
    # Create useful directories.
    ~/Projects/windevsetup/directories.ps1

    # Backup existing dotfiles and symlink to the dotfiles in this project.
    ~/Projects/windevsetup/dotfiles.ps1

    # Configure windows hostname
    ~/Projects/windevsetup/windows.ps1

    # Install command line package manager and additional command line tools.
    ~/Projects/windevsetup/scoop.ps1

    # Apply preferences to applications.
    ~/Projects/windevsetup/.preferences
    ```

7. Restart your computer.


## Update
Run the following commands to get the latest version of this project:
```bash
cd ~/Projects/windevsetup/
git pull origin master
```


## Acknowedgements
* [Craig Hurley](https://github.com/craighurley)
