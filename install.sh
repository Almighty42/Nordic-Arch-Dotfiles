# git clone --bare https://github.com/Almighty42/Nordic-Arch-Dotfiles.git $HOME/.cfg
# function config {
#    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
# }
# mkdir -p .config-backup
# config checkout
# if [ $? = 0 ]; then
#   echo "Checked out config.";
#   else
#     echo "Backing up pre-existing dot files.";
#     config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
# fi;
# config checkout
# config config status.showUntrackedFiles no
# rm -rf $HOME/README.md
# rm -rf $HOME/install.sh

git clone --bare https://github.com/Almighty42/Nordic-Arch-Dotfiles.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{} 2>/dev/null
config fetch origin
config reset --hard origin/main
config config status.showUntrackedFiles no
rm -rf $HOME/README.md
rm -rf $HOME/install.sh
