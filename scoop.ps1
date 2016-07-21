# Start
$MyInvocation.MyCommand.Name + " running."

# Make sure we’re using the latest Scoop
$SCOOP_PATH = WHERE scoop
IF($SCOOP_PATH) {iex (new-object net.webclient).downloadstring('https://get.scoop.sh')}


# Install scoop buckets
scoop bucket add extras

# install applications
scoop install oraclejdk
scoop install ack
scoop install ant
scoop install coreutils
scoop install curl
scoop install eclipse-ee
scoop install firefox
scoop install sudo
scoop install grep
scoop install sed
scoop install less
scoop install go
scoop install nodejs
scoop install git
scoop install jq
scoop install netcat
scoop install openssl
scoop install openssh
scoop install python
scoop install rename
scoop install ruby
scoop install touch
scoop install tar
scoop install vim
scoop install wget
scoop install putty
scoop install cpu-z

# Setup powershell theme
scoop install concfg pshazz
concfg import solarized small

# Instal ConEmu which is a nicer looking shell emulator
scoop install conemu

# Finished
$MyInvocation.MyCommand.Name + " complete."
