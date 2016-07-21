# Start
$MyInvocation.MyCommand.Name + " running."

###############################################################################
# General System
###############################################################################
# Set computer name

$Hostname = Read-Host -Prompt "Enter new hostname: "
$Credentials = Get-Credential
Rename-Computer -NewName $Hostname -DomainCredential $Credentials

