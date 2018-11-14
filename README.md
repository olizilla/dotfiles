# dotfiles

> Setting up a macOS machine; olizilla edition

## Homebrew all the things

```console
# install brew
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install the dev things
$ brew install bash-completion node git diff-so-fancy ipfs wget watch watchman
$ brew cask install 1password imageoptim gpg-suite atom
$ apm install file-icons linter linter-js-standard

# install the fonts
$ brew cask install font-inter-ui font-montserrat

# install the browsers
$ brew cask install firefox google-chrome brave-browser beaker-browser

# install the others
$ brew cask install spotify vlc zoomus patchwork keybase dropbox docker
$ npm install -g nave asciify speed-test wifi-password-cli trash-cli
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
- Copy ~/Code/git-commit-template.txt

## Install from app store

- Sketch
- Pixelmator
- Icon slate

## Tweaks

- Firefox tweaks (about:config)

```
# colour handling
gfx.color_management.mode: 1

# remove the distracting search providers footer from the url bar suggestions
browser.urlbar.oneOffSearches: false
```

## Install Fonts

Just more brew!

``` console
# enable brew based fonts
$ brew tap homebrew/cask-fonts

# courier Prime Code (set as default in terminal, TextEdit and Atom.
brew cask install font-courier-prime-code
```

## Feedback

Suggestions/improvements should mostly go [back upstream:](https://github.com/mathiasbynens/dotfiles/issues)!
