curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
touch ~/.config/gtk-3.0/gtk.css   
ln -s .config/gtk-3.0/gtk.css ~/.config/gtk-3.0/gtk.css
touch ~/.vimrc
ln -s vimrc ~/.vimrc
touch ~/.config/nvim/init.vim
ln -s .config/nvim/init.vim ~/.config/nvim/init.vim
touch ~/.config/nvim/coc-settings.json
ln -s .config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json

cp --parents .local/share/applications/whatsapp-desktop-webapp.desktop ~
cp --parents .local/share/icons/hicolor/128x128/apps/whatsapp_web.png ~
