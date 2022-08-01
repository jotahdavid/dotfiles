# My Ubuntu Setup

```sh
# Installing git
sudo add-apt-repository ppa:git-core/ppa
sudo apt install git

# Installing zsh
sudo apt install zsh
# Makes zsh as shell default
chsh -s $(which zsh)

# Installing curl
sudo apt install curl

# Installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Installing zsh-syntax-highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Installing colorls
sudo apt install build-essential
sudo apt install ruby-full
sudo gem install colorls

# Installing nvm (node version manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# Installing NodeJS (LTS)
nvm install --lts
# Enable yarn
corepack enable

# Setup dotfiles
git clone https://github.com/jotahdavid/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```
