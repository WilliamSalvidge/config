# Notes

## Package Manager

- Lazy

## Finding Files and Live Grep

- Telescope

## Parsers 

- nvim-treesitter

Nvim Treesitter provides a simple and easy interface for the Tree-Sitter 

Tree-Sitter takes snippets of code and generates an AST (Abstract Syntax Tree) 

AST maintains information about the codebase based on certain symbols ({, [, =,", etc.)

Separate parsers can then use the AST to parse out paticular things it would like to highlight or indent (make the matching '{' and '}' yellow for instance)


## Managing LSP (Language Server Protocol)

LSP is an open JSON RPC (Remote Prodecure Call) standard

Communication between text editors and a language server

- Mason

Editor makes a call to a Language Server 

- Document is opened and editor calls out to LSP (Tsserver if it was a javascript file) TEXT/DIDOPEN with infor

##

## Get NeoVim to communicate with LSPs

- nvim-lspconfig

## Formatters & Diagnostics 

- null-ls (none-ls)

Turns our command line tools (eslint, prettier etc.) into an LSP server
