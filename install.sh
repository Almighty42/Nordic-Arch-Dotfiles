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

rm -rf $HOME/README.md
rm -rf $HOME/install.sh
