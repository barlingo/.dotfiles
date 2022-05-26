export RUSTUP_HOME=$HOME/.local/share/rustup
export RUSTUP_HOME=$HOME/.local/share/rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh 
source $HOME/.local/share/cargo/env
cargo install fnm

# install nvm with nodejs and npm
export NVM_DIR="$HOME/.local/share/nvm"
mdkir $HOME/local/share/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
nvm install --lts

#install pyenv with virtualenv
git clone https://github.com/pyenv/pyenv.git ~/.local/share/pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

