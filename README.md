# My configuration files
This repository contains the dotfiles for my system setup

## Requirements

Ensure you have the following installed on your system

### Git
```
sudo apt install git
```

### Stow
```
sudo apt install stow
```

## Installation
 First, check out the dotfiles repo in your $HOME directory using git.

```
git clone git@github.com/Seroleashed/dotfiles.git
cd dotfiles
```

the use GNU stow to create the symlinks

```
stow .
```



