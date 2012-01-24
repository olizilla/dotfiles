# olizilla’s dotfiles 
Forked from [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles), all credit goes there.

The original dots are left in place so I can keep track of Mathias changes.
My dots are kept in the olizilla dir so I can apply the config tweaks once I figure wtf they do.

## Installation

### Using Git and the bootstrap script

```bash
git clone https://github.com/olizilla/dotfiles.git && cd dotfiles && ./bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
./bootstrap.sh
```

To update later on, just run that command again.

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

## Feedback

Suggestions/improvements should mostly go [back upstream:](https://github.com/mathiasbynens/dotfiles/issues)!

