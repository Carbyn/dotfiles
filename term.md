# Term

## brew

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## terminal

`brew install --cask iterm2 wezterm`

## sak

`brew install bat black btop eza fastfetch fd fzf git glow isort ripgrep sd starship tokei tree zoxide`

## nerd-font

`brew install font-code-new-roman-nerd-font font-hack-nerd-font font-maple-mono-normal-nf font-ubuntu-mono-nerd-font font-fira-mono-nerd-font font-jetbrains-mono-nerd-font	font-roboto-mono-nerd-font`

## zsh

### oh-my-zsh

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### zsh-autosuggestions and zsh-syntax-highlighting

- Clone this repository into $ZSH_CUSTOM/plugins (by default ~/.oh-my-zsh/custom/plugins)

```
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

- Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):

```
plugins=(
    # other plugins...
    zsh-autosuggestions
    zsh-syntax-highlighting
)
```

## nvim

### neovim

`brew install neovim`

### NvChad

## python

```
brew install python
pip3 install isort black csvkit
```

## Bar & Hotkey & InputSwitcher

### sf-symbols

`brew install --cask sf-symbols`

### sketchybar

```
brew tap FelixKratz/formulae
brew install sketchybar
```

### hammerspoon

`brew install hammerspoon`
