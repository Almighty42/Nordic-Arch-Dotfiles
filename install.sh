git clone --bare https://github.com/Almighty42/Nordic-Arch-Dotfiles.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout -f main
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout -f main 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout -f main
config config status.showUntrackedFiles no

cp -rf $HOME/fonts/* $HOME/.local/share/fonts

mkdir -p $HOME/Desktop
mkdir -p $HOME/Development
mkdir -p $HOME/Development/Code/
mkdir -p $HOME/Development/Study/
mkdir -p $HOME/Development/Code/Books-Code/
mkdir -p $HOME/Development/Code/Courses-Code/
mkdir -p $HOME/Development/Code/Projects-Code/
mkdir -p $HOME/Development/Study/Books/
mkdir -p $HOME/Development/Study/Courses/
mkdir -p $HOME/Development/Study/Resources/
mkdir -p $HOME/Documents/
mkdir -p $HOME/Documents/EPUBs/
mkdir -p $HOME/Documents/Other/
mkdir -p $HOME/Documents/PDFs/
mkdir -p $HOME/Downloads/
mkdir -p $HOME/Downloads/Torrents/
mkdir -p $HOME/Music/
mkdir -p $HOME/Music/Study-Work/
mkdir -p $HOME/Music/Workout/
mkdir -p $HOME/Pictures/
mkdir -p $HOME/Pictures/Screenshots/
mkdir -p $HOME/Repositories/
mkdir -p $HOME/Repositories/Other-Repositories/
mkdir -p $HOME/Repositories/User-Repositories/
mkdir -p $HOME/Videos/

rm -rf $HOME/README.md
rm -rf $HOME/install.sh
