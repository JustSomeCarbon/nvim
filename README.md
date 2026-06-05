# Neovim Config Project

This project contains a base foundation for my personal neovim configuration. The expected version of
Neovim must be at minimum 0.11.0 as anything before will not allow the listed packages to load and configure
correctly. Packr installs on first run of an nvim environment and does not need to be installed apart from
this project.

`:Pckr install` must be ran to load all package dependencies to the local machine.

To configure any LSP, Mason needs to install any required langauge server for that local machine.
This can be done by using `:Mason` and selecting the language server or any other tools that you
might need to install.

A font that contains filetype icons must be installed and used for nvim-tree to function correctly. This can be
done by downloading a desired font from Nerd Fonts and configuring the terminal with that font.

## Requirements

- Neovim >= v0.11.0
- Pckr
- Nerd Font
- tree-sitter

To properly funcion, a system level tree-sitter package must be present on the local machine. For Mac OS, this
can be installed through homebrew or through npm with `npm i -g tree-sitter`. For Linux it is recomended to use
the Rust crate `tree-sitter-cli` which can be installed with `cargo install --locked tree-sitter-cli`.

#### Cargo Requirements

Many of the cargo binaries rely on `clang` to compile. Before installing `tree-sitter-cli` ensure that `clang`
is installed along with any of its libraries and shared header libraries.

### Installing & Managing Parsers

Parsers can be managed through the menu provided by the tree-sitter package. This can be opened with
`:TSManager`.

### Installing & Managing LSPs

LSPs can be installed through `:Mason`.

