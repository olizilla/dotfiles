# dotfiles

> Setting up a macOS machine; olizilla edition

## Homebrew all the things

```console
# install brew
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install the dev things
$ brew install bash-completion node git diff-so-fancy ipfs wget watch watchman shellcheck fish
$ brew cask install 1password imageoptim gpg-suite firefox sketch google-chrome tableplus datagrip slack postgres

# atom flavour
$ brew cask install atom
$ apm install file-icons linter linter-js-standard linter-shellcheck

# or code flavour
$ brew cask install visual-studio-code
# ugh
$ echo "chenxsan.vscode-standardjs akamud.vscode-theme-onedark fabiospampinato.vscode-open-in-github ms-vscode.Go timonwong.shellcheck mauve.terraform vscoss.vscode-ansible" | xargs -n 1 code --install-extension

# enable brew based fonts
$ brew tap homebrew/cask-fonts

# courier Prime Code (set as default in terminal, TextEdit and Atom.
brew cask install font-courier-prime-code font-courier-prime-sans

# install the others
$ brew cask install spotify vlc zoomus patchwork dropbox docker
$ npm install -g nave asciify speed-test wifi-password-cli trash-cli npm-scripts standard

# set fish as default
$ sudo echo "/usr/local/bin/fish" >> /etc/shells
$ chsh -s /usr/local/bin/fish

$ add postgres bins to path
$ set -U fish_user_paths /Applications/Postgres.app/Contents/Versions/latest/bin $fish_user_paths
```

## Manual steps

- Set up the dotfiles from this repo

```console
$ git clone https://github.com/olizilla/dotfiles.git
$ cd dotfiles
$ ./bootstrap.sh
```

- Set up 1password and sync personal and TF vaults
- Copy GPG keys
- Copy ~/.ssh
- Copy ~/.ssb/{secret,gossip.json}

## Install from app store

- Pixelmator
- Icon slate
- Nord VPN

## Tweaks

- Firefox tweaks (about:config)

```
# colour handling
gfx.color_management.mode: 1

# remove the distracting search providers footer from the url bar suggestions
browser.urlbar.oneOffSearches: false
```

## Feedback

Suggestions/improvements should mostly go [back upstream:](https://github.com/mathiasbynens/dotfiles/issues)!
