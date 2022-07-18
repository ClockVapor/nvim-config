vim.call('plug#begin', '~/.config/nvim/plugged')
    local Plug = vim.fn['plug#']
    Plug('preservim/nerdtree')
    Plug('neoclide/coc.nvim', {branch = 'release' })
    Plug('airblade/vim-gitgutter')
vim.call('plug#end')

vim.g.mapleader = ','
-- Leader-f to toggle file tree panel
vim.api.nvim_set_keymap('n', '<Leader>f', ':<C-u>NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Control-space to initialize coc autocomplete
vim.api.nvim_set_keymap('i', '<c-space>', 'coc#refresh()', { noremap = true, silent = true, expr = true })
-- Tab to scroll down in coc autocomplete list
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"', { noremap = true, silent = true, expr = true })
-- Shift-tab to scroll up in coc autocomplete list
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', { noremap = true, silent = true, expr = true })
-- Navigate to next/previous error/warning
vim.api.nvim_set_keymap('n', '<Leader>j', '<plug>(coc-diagnostic-next)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>k', '<plug>(coc-diagnostic-prev)', { noremap = true, silent = true })
-- Leader-d to jump to symbol definition
vim.api.nvim_set_keymap('n', '<Leader>d', '<plug>(coc-definition)', { noremap = true, silent = true })
-- Leader-r to list symbol references
vim.api.nvim_set_keymap('n', '<Leader>r', '<plug>(coc-references)', { noremap = true, silent = true })
-- Modifying <cr> to confirm autocomplete entry (including other edits like automatically adding imports)
vim.api.nvim_set_keymap('i', '<cr>', 'pumvisible() ? "<C-y>" : "<C-g>u<cr>"', { noremap = true, silent = true, expr = true })
-- Leader-qf to quick fix current error
vim.api.nvim_set_keymap('n', '<Leader>qf', '<plug>(coc-fix-current)', { noremap = true, silent = true })

vim.cmd('color zellner')

vim.opt.number = true
vim.opt.wrap = true
vim.opt.linebreak = true
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
