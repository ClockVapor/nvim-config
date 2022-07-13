vim.call('plug#begin', '~/.config/nvim/plugged')
    local Plug = vim.fn['plug#']
    Plug('preservim/nerdtree')
    Plug('neoclide/coc.nvim', {branch = 'release' })
    Plug('airblade/vim-gitgutter')
vim.call('plug#end')

vim.g.mapleader = ','
vim.api.nvim_set_keymap('n', '<Leader>l', ':<C-u>NERDTreeToggle<CR>', { noremap = true, silent = true })

vim.cmd('color zellner')

vim.opt.number = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.showbreak = '    '
vim.opt.eol = true -- End text files with a newline

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 99 -- Open all folds by default
