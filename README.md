# Neovim Starter

Minimal working configuration for Neovim's LSP client + nvim-cmp.

The following language servers are configured:

* tsserver
* eslint
* cssls
* html

## Requirements

* Neovim v0.8 or greater.
* git.
* [tsserver](https://github.com/theia-ide/typescript-language-server). Typescript language server.
* [vscode-langservers-extracted](https://github.com/hrsh7th/vscode-langservers-extracted). Provides language servers for `eslint`, `css` and `html`.
* [npm cli](https://docs.npmjs.com/cli/v8/commands/npm). Javascript package manager.
* [nodejs](https://nodejs.org/es/). Javascript runtime. Required by the language servers.

> Here's the config [compatible with v0.7](https://github.com/VonHeikemen/nvim-starter/tree/ca6e3dcc8bab3e21a1971549aee45bc7ca53dd4d). 

## Installation

* Backup your existing configuration if you have one.

* Create an `init.lua` file in your system. Use this command if you don't know the specific location of Neovim's configuration folder.

```sh
nvim --headless -c 'call mkdir(stdpath("config"), "p") | exe "edit" stdpath("config") . "/init.lua" | write | quit'
```

* Open your configuration file with Neovim.

```sh
nvim -c 'edit $MYVIMRC'
```

* Copy the content of `init.lua` in this repository into your own `init.lua`.

* Download the plugin manager using this command.

```sh
nvim --headless +GitClonePacker
```

* Open Neovim. Plugins are not installed yet, so expect an error message. Dismiss the error message. Execute this command inside Neovim.

```vim
:PackerSync
```

* Wait until plugins are downloaded then restart Neovim.

### Plugins directory

Your plugins will be installed in a separate directory from your configuration. The location of this directory depends on your operating system and environment variables, so you'll need to execute this command to know where that is.

```sh
nvim --headless -c 'echo stdpath("data") . "/site/pack/packer" | quit'
```

## Keybindings

| Mode | Key | Action |
| --- | --- | --- |
| Normal | `K` | Displays hover information about the symbol under the cursor. |
| Normal | `gd` | Jump to the definition. |
| Normal | `gD` | Jump to declaration. |
| Normal | `gi` | Lists all the implementations for the symbol under the cursor. |
| Normal | `go` | Jumps to the definition of the type symbol |
| Normal | `gr` | Lists all the references. |
| Normal | `<Ctrl-k>` | Displays a function's signature information. |
| Normal | `<F2>` | Renames all references to the symbol under the cursor. |
| Normal | `<F4>` | Selects a code action available at the current cursor position. |
| Visual | `<F4>` | Selects a code action available in the selected text. |
| Normal | `gl` | Show diagnostics in a floating window. |
| Normal | `[d` | Move to the previous diagnostic. |
| Normal | `]d` | Move to the next diagnostic. |

### Autocomplete keybindings

| Mode | Key | Action |
| --- | --- | --- |
| Insert | `<Ctrl-p>` | Move to previous item. |
| Insert | `<Ctrl-n>` | Move to next item. |
| Insert | `<Ctrl-d>` | Scroll up in documentation window. |
| Insert | `<Ctrl-f>` | Scroll down in documentation window. |
| Insert | `<Ctrl-Space>` | Trigger completion. |
| Insert | `<Ctrl-e>` | Cancel completion. |
| Insert | `<Enter>` | Confirm completion. |
| Insert | `<Tab>` | If completion menu is open go to next item. |
| Insert | `<Shift-Tab>` | If completion menu is open go to previous item. |

## Plugin list

| Name | Description  |
| --- | --- |
| [packer.nvim](https://github.com/wbthomason/packer.nvim) | Plugin manager. |
| [tokyonight.vim](https://github.com/folke/tokyonight.vim) | Collection of colorschemes. |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Quickstart configs for Neovim's LSP client.  |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion engine. |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | nvim-cmp source. Show suggestions based on LSP servers queries. |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | nvim-cmp source. Show suggestions based on installed snippets. |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) | nvim-cmp source. Suggest words in the current buffer. |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine. |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Collection of snippets. |

