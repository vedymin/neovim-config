vim.keymap.set('i', '<ESC>', '')
vim.keymap.set('i', 'jj', '<ESC>')
-- set leader to space
vim.g.mapleader = ' '
-- Highlight search
vim.cmd("set hlsearch")
-- Show line numbers
vim.cmd("set number")
-- Spaces for intend
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- Highlight on yank
vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]
