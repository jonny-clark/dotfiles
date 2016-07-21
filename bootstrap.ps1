Set-ExecutionPolicy Unrestricted -s cu

directory=~/Projects/windevsetup

$directory/scoop.ps1
$directory/directories.ps1
$directory/dotfiles.ps1
$directory/templates.ps1
$directory/windows.ps1

$directory/.preferences

# Finished
echo "`basename $0` complete."
