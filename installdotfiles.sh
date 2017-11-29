# ======================
# = Installdotfiles.sh =
# ======================

# Variables
# ----------

# Dotfiles Directory

dir=~/dotfiles

# Old dotfiles backup

dotfilesback=~/dotfiles_back

# List of files/folders to symlink

files=".bashrc .oh-my-zsh .vim .vimrc .zshrc"

# Commands
# ---------

# Create backup directory

echo "Creating backup directory of existing dotfiles..."
mkdir -p $dotfilesback
echo "Done."

# Move to the dotfiles directory.

echo "Moving to the dotfiles directory."
cd $dir
echo "Done."

# Move any existing dotfiles in homedir to dotfiles_back, then create symlinks.

for file in $files; do
    echo "Moving existing dotfiles from ~ to $dotfilesback"
    mv ~/$file ~/$dotfilesback
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

source ~/.bashrc
source ~/.oh-my-zsh
source ~/.vim
source ~/.vimrc
source ~/.zshrc
