# mac-setup
New mac setup, step by step.
1. Step 1 : Installer Xcode
2. Step 2 : Lancer le script d'installation
3. Step 3 : Config `.zsh`
4. Step 4 : Installer les extensions Raycact


## ⚙️ Step 1 : Installer Xcode

```shell
xcode-select --install
```
Si l'installation pose problème :
1. réssayer
2. Nettoyer le catalogue avec `sudo softwareupdate --clear-catalog`


## ⚙️ Step 2 : Lancer le script d'installation

```shell
zsh mac-setup.sh
```


### Description du script d'installation :
Ordre d'installation du script :
1. Homebew, mas et oh my Zsh
2. Les package système.
3. Les apps


### 🐘 Install core dev packages
| **Package** | **Install cmd**                        |
|-------------|----------------------------------------|
| postgresql  | `brew install postgresql@13`           |
| postgresql  | `brew install postgresql`              |
| maria_db    | `brew install maria_db`                |
| wget        | `brew install wget`                    |
| redis       | `brew install redis`                   |
| gh          | `brew install gh`                      |
| ngrok       | `brew install ngrok/ngrok/ngrok`       |
| imagemagick | `brew install imagemagick`             |
| zsh         | `brew install zsh-syntax-highlighting` |
| docker      | `brew install docker`                  |


### 📦 Install softs

La majorité des app seront installée via brew, d'autres par Apple store (via mas)
La suite office est a intallée manuellement à causes de conflits.
ci dessous les application qui seront intallées dans le script.


| **App Name**       | **Install cmd**                                 |
|--------------------|-------------------------------------------------|
|                    | **Homebrew**                                    |
| Apps               | `echo Install Core Apps via brew`               |
| sublime            | `brew install --cask sublime-text`              |
| raycast            | `brew install --cask raycast`                   |
| dropbox            | `brew install --cask dropbox`                   |
| transmit           | `brew install --cask transmit`                  |
| vlc                | `brew install --cask vlc`                       |
| appcleaner         | `brew install --cask appcleaner`                |
| rectangle          | `brew install --cask rectangle`                 |
| deepl              | `brew install --cask deepl`                     |
| firefox            | `brew install --cask firefox`                   |
| firefox dev        | `brew install --cask firefox-developer-edition` |
| chrome             | `brew install --cask chrome`                    |
| spotify            | `brew install --cask spotify`                   |
| google             | `brew install --cask google-drive`              |
| dropbox            | `brew install --cask dropbox`                   |
| tableplus          | `brew install --cask tableplus`                 |
| figma              | `brew install --cask figma`                     |
| gimp               | `brew install --cask gimp`                      |
| hey                | `brew install --cask hey`                       |
| inkscape           | `brew install --cask inkscape`                  |
| linear             | `brew install --cask linear-linear`             |
| languagetool       | `brew install languagetool`                     |
| ledger             | `brew install --cask ledger-live`               |
| notion             | `brew install --cask notion`                    |
| postman            | `brew install --cask postman`                   |
| nucleo             | `brew install --cask nucleo`                    |
| responsively       | `brew install --cask responsively`              |
| signal             | `brew install --cask signal`                    |
| skiff              | `brew install --cask skiff`                     |
| gitkraken          | `brew install --cask gitkraken`                 |
| rubymine           | `brew install --cask rubymine`                  |
| raindrop           | `brew install --cask raindropio`                |
|                    | **AppStore**                                    |
| Dashlane           | `mas install 517914548`                         |
| Slack              | `mas install 803453959`                         |
| Whatsapp           | `mas install 1147396723`                        |
| Messenger          | `mas install 1480068668`                        |
| Unarchiver         | `mas install 425424353`                         |
| HotSpot Shield VPN | `mas install 771076721`                         |
| Telegram Lite      | `mas install 946399090`                         |
| Canva              | `mas install 897446215`                         |


📝 To update all outdated app installed via homebrew: `brew update && brew upgrade`


## ⚙️ Step 3 : Config `.zshrc`
Aller à la racine du mac et ouvrez le fichier `.zshrc`.
```
cd && nano .zshrc
```

Varifier / remplacer ces lines :
```
ZSH_THEME="robbyrussell"

plugins=(git gitfast last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search z)

export HOMEBREW_NO_ANALYTICS=1
```

### ⚙️ Step 4 : Installer les extensions Raycact :
Raycast est installé dans le script.

```
cmd + space
store
```


Liste des extensions/scripts :
- Brew
- Github
- Linear
- Notion
- Raindrop
- Dashlane


---
# TODO :
- Script de démarrage des services
- démarrer les bases de données
- Gérer les utilisateurs / password des bases de données
- Continuer les étapes du setup du wagon (Git, RVM, dotfiles)



