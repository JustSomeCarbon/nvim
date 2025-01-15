# Neovim Config Project

This project contains a base foundation for my personal neovim configuration. The expected version of
Neovim must be at minimum 0.9.0 as anything before will not allow the listed packages to load and configure
correctly. Packer Must also be installed or the packages will not load in correctly.

`:PackerSync` must be ran in the root init.lua file to load all package dependencies to the local machine.

Mason needs to install any required langauge server for that local machine. This can be done by using `:Mason`
and selecting the language server or any other tools that you might need to install.

A font that contains filetype icons must be installed and used for nvim-tree to function correctly. This can be
done by downloading a desired font from Nerd Fonts and configuring the terminal with that font.

## Requirements

- Neovim >= v0.9.0
- Packer
- Nerd Font
