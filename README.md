# .Dotfiles

## Description

## Steps to bootstrap a new Mac
1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.
```bash
xcode-select --install
```

2. Clone repo into new hidden directory.

**Note** Make sure this directory is in the same directory as other dotfile directorys (such as .oh-my-zsh)

```bash
# Use SSH (if set up)...
git clone git@github.com:jimmybombimmy/dotfiles ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/jimmybombimmy/dotfiles ~/.dotfiles
```

3. Install Homebrew, followed by other software
```bash
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile
```

4. Install other software that could not be installed in the Brewfile

```bash
sh non-brewfile.sh
```

5. Create symlinks in the Home directory to the real files in the repo.
**Make sure you are in this .dotfiles folder**
```bash
sh stow.sh
```