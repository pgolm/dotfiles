# ~/.*

Everything to set up my home environment.

## Setup

1. Install prerequisites
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install dotfiles
```sh
brew install chezmoi
chezmoi init --apply pgolm
```

3. Change default shell to fish
```sh
chsh -s /opt/homebrew/opt/fish/bin/fish
```
