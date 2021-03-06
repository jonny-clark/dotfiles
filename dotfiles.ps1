# Start
$MyInvocation.MyCommand.Name + " running."

directory=~/Projects/dotfiles/dotfiles
backup=~/.dotfiles_backup
files=`find $directory -iname ".*" -maxdepth 1 -type f`

function doIt() {
    # make the backup directory
    [[ ! -d $backup ]] && mkdir -p $backup

    # move existing dotfiles to backup, then create symlinks from directory to ~
    for file in ${files[@]}; do
        if [[ -f ~/$(basename $file) ]] ; then
            echo "Moving ~/$(basename $file) to $backup"
            mv -n ~/$(basename $file) $backup/
        fi
        echo "Symlinking $file to ~/$(basename $file)"
        ln -f -s $file ~/$(basename $file)
    done
}

read -p "This script will backup your current dotfiles and symlink to a new set of dotfiles. Are you sure? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]] ; then
    doIt
fi

unset doIt

# Finished
$MyInvocation.MyCommand.Name + " complete."
