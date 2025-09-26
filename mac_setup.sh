#!/bin/sh

read -p "Press any key to continue... " -n1 -s
echo  '\n'


echo Install Oh My Zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo Install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo Install Mas
brew install mas

echo Install core packages

brew install postgresql@13
brew install postgresql
brew install maria_db
brew install wget
brew install redis
# brew install node
# TODO : Reprendre l'installation de node avec NVM du Wagon
brew install gh
brew install ngrok/ngrok/ngrok
brew install imagemagick
brew install zsh-syntax-highlighting
brew install docker
brew install dashlane/tap/dashlane-cli
dcli configure user-presence --method biometrics # prevent access to vault withour biometrics
brew install vips
brew install lazygit
brew install libyaml



echo Install Dev Apps



echo Install Core Apps via brew
brew install --cask sublime-text
brew install --cask zed
# brew install --cask rubymine
brew install --cask raycast
brew install --cask dropbox
brew install --cask transmit
brew install --cask vlc
brew install --cask appcleaner
brew install --cask rectangle
brew install --cask deepl
brew install --cask firefox
brew install --cask firefox-developer-edition
brew install --cask chrome
brew install --cask spotify
brew install --cask google-drive
brew install --cask dropbox
brew install --cask tableplus
brew install --cask figma
brew install --cask gimp
brew install --cask hey
brew install --cask basecamp
brew install --cask inkscape
brew install --cask linear-linear
brew install --cask languagetool
brew install --cask ledger-live
brew install --cask notion
brew install --cask postman
brew install --cask nucleo
brew install --cask responsively
brew install --cask signal
brew install --cask cyberduck
brew install --cask gitkraken
brew install --cask raindropio
brew install --cask reader
brew install --cask wakatime
brew install --cask latest
brew install --cask kdrive
brew install --cask libreoffice
# brew install --cask google-chrome

echo All app are instaled ! Well let\'s go cleanup brew

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

echo "Security: https://objective-see.com/products.html"

echo Install Mac app from AppStore :
mas install 517914548 # Dashlane
mas install 803453959 # Slack
mas install 1147396723 # Whatsapp
mas install 1480068668 # Messenger
mas install 425424353 # Unarchiver
mas install 771076721 # HotSpot Shield VPN
mas install 946399090 # Telegram Lite
mas install 897446215 # Canva

echo Install ruby
curl https://mise.run | sh
echo 'eval "$(~/.local/bin/mise activate)"' >> ~/.zshrc
source ~/.zshrc
mise use -g ruby@3
gem

echo Script finished !
echo Please restart yor Mac
