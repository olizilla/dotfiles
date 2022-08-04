# dotfiles

> Setting up a macOS machine; olizilla edition

## Homebrew all the things

```fish
# set up dotfiles
mkdir -p ~/Code/olizilla && cd ~/Code/olizilla
git clone https://github.com/olizilla/dotfiles.git && cd dotfiles
./bootstrap.sh

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# set up fish shell
brew install fish fisher

# make fish the default shell
sudo sh -c 'echo $(which fish)  >> /etc/shells'
chsh -s $(which fish)

# maybe add brew to path?
fish_add_path /opt/homebrew/bin

# set up fish prompt
fisher install mattgreen/lucid.fish

# add dev tools
brew install git diff-so-fancy wget watch shellcheck exa awscli jq

# set up asdf
brew install asdf
fisher install rstacruz/fish-asdf

# set up node and global npm tools
echo asciify speed-test wifi-password-cli trash-cli standard | xargs -n1 > ~/.default-npm-packages
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs lts
asdf global nodejs lts

# add vs-code
brew install --cask visual-studio-code
echo "chenxsan.vscode-standardjs akamud.vscode-theme-onedark fabiospampinato.vscode-open-in-github timonwong.shellcheck" | xargs -n 1 code --install-extension

# add fonts
brew tap homebrew/cask-fonts
brew install --cask font-courier-prime-code font-courier-prime-sans

# add apps
brew install --cask 1password imageoptim gpg-suite firefox sketch google-chrome datagrip slack spotify vlc zoom dropbox docker rectangle
```

## Generate a new GPG key

```fish
# choose RSA and RSA, 4096 bits, does not expire
gpg --full-generate-key
...

# grab the id BA36AFABBE96D2F5 from the output (replace with the id you get)
gpg --list-secret-keys --keyid-format=long
...
-----------------------------
sec   rsa4096/BA36AFABBE96D2F5 2022-08-04 [SC] 
              ^==== this ====^

gpg --armor --export BA36AFABBE96D2F5
# Prints the GPG key ID, in ASCII armor format
# Copy your GPG key, including -----BEGIN and ending with -----END PGP PUBLIC KEY BLOCK-----.
# add it to you github account at https://github.com/settings/keys
```

**Update your git config to add the id!**

see: https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key

## Generate a new SSH key

```fish
# make an key pair, save to default location ~/.ssh/id_ed25519
ssh-keygen -t ed25519 -C "oli@protocol.ai"

# start ssh-agent
bash
eval "$(ssh-agent -s)"

# back in fish
ssh-add -K ~/.ssh/id_ed25519

# copy the key to the clipboard and paste into https://github.com/settings/keys
pbcopy < ~/.ssh/id_ed25519.pub
```

see: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

# OSX tweaks

```fish
# from https://macos-strap.herokuapp.com/strap.sh?text=1

# disable Java in safari
sudo defaults write com.apple.Safari \
  com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled \
  -bool false
sudo defaults write com.apple.Safari \
  com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabledForLocalFiles \
  -bool false
# Instant screensaver password
sudo defaults write com.apple.screensaver askForPassword -int 1
sudo defaults write com.apple.screensaver askForPasswordDelay -int 0
# enable firewall?
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1
sudo launchctl load /System/Library/LaunchDaemons/com.apple.alf.agent.plist 2>/dev/null
```

## Manual steps

- Set up 1password and sync personal and TF vaults
- maybe copy old GPG keys
- maybe copy ~/.ssh
- maybe copy ~/.ssb/{secret,gossip.json}
- maybe setup `aws configure`

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
