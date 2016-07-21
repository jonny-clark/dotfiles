# Start
$MyInvocation.MyCommand.Name + " running."

# create folders
New-Item -ItemType Directory -Force -Path ~/Development/EclipseWorkspace
New-Item -ItemType Directory -Force -Path ~/Development/IDE
New-Item -ItemType Directory -Force -Path ~/Development/Temp
New-Item -ItemType Directory -Force -Path ~/Development/Scratch
New-Item -ItemType Directory -Force -Path ~/Development/Training

# ssh
New-Item -ItemType Directory -Force -Path ~/.ssh

# Finished
$MyInvocation.MyCommand.Name + " complete."
