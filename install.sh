# Create aliases
cp aliases .aliases

# Create nvim folder
mkdir -p ~/.config/nvim/

# Copy nvim files
cp nvim/init.vim nvim/plugins.vim ~/.config/nvim/

# Install plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Tmux stuff
cp tmux/ ~/.tmux
cp tmux-theme.sh ~/.tmux-theme.sh
cp tmux.conf ~/.tmux.conf

cp zsrhc ~/.zshrc
