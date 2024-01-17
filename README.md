My personal neovim configuration based in [LazyVim](https://github.com/LazyVim/LazyVim) and in [@craftdog configuration](https://github.com/craftzdog/dotfiles-public/tree/master/.config/nvim)

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

- You need to configure in `profiles -> window` the transparency and blur of the window.
  (On the personal computer is set to 18 and 8 respectively).

5. Install optional tools:

```shell
brew install ripgrep fd
```

# Installation

1. Clone the repository:

```shell
git clone git@github.com:annacruz/nvim.git .config/nvim/
```

2. Initialize neovim and enjoy =)

# Problem solving

If you're facing nvim-treesitter problem on parses execute the following:

```shell
:TSUpdate <parses_separated_with_spaces>
```
