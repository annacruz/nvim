My personal neovim configuration based in [LazyVim](https://github.com/LazyVim/LazyVim), in [@craftdog configuration](https://github.com/craftzdog/dotfiles-public/tree/master/.config/nvim) and sauced up with some [@devopstoolbox](https://www.youtube.com/@devopstoolbox) tips

# Pre-requisites

1. Install fonts:

```shell
brew tap homebrew/cask-fonts
brew install font-plemol-jp
brew install font-plemol-jp-nf
brew install font-plemol-jp-hs
```

2. Configure undercurl:

Follow the instructions on this [link](https://dev.to/jibundit/undercurl-display-on-neovim-and-tmux-with-iterm2-3pi0)

3. Ensure you have neovim updated:

At least version 0.9.0 is required.

4. Configure iterm2

- You need to configure in `profiles -> text` PlemolJP Console in font and PlemolJP Console NF in
  non-ASCII font.

5. Install optional tools:

```shell
brew install ripgrep fd
```

# Installation

1. Backup your current configuration:
```shell
cp -r ~/.config/nvim ~/.config/nvim.old
```

2. Clone the repository:

```shell
git clone git@github.com:annacruz/nvim.git ~/.config/nvim/
```

3. Initialize neovim and enjoy =)

