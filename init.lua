vim.call('plug#begin', '~/.config/nvim/plugged')
    local Plug = vim.fn['plug#']
    Plug('preservim/nerdtree')
    Plug('airblade/vim-gitgutter')
    Plug('junegunn/fzf')
    Plug('junegunn/fzf.vim')
    Plug('itchyny/lightline.vim')
    Plug('NLKNguyen/papercolor-theme')
    Plug('neoclide/coc.nvim', { branch = 'release' })
    Plug('udalov/kotlin-vim')
    Plug('OmniSharp/omnisharp-vim')
    Plug('tpope/vim-fugitive')
vim.call('plug#end')

vim.g.mapleader = ','

vim.api.nvim_set_keymap('n', '<Leader>f', ':<C-u>NERDTreeToggle<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>]', ':<C-u>tabnext<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>[', ':<C-u>tabprevious<cr>', { noremap = true, silent = true })

-- Control-space to initialize coc autocomplete
vim.api.nvim_set_keymap('i', '<c-space>', 'coc#refresh()', { noremap = true, silent = true, expr = true })
-- Tab to scroll down in coc autocomplete list
vim.api.nvim_set_keymap('i', '<Tab>', 'coc#pum#visible() ? coc#pum#next(1) : "<Tab>"', { noremap = true, silent = true, expr = true })
-- Shift-tab to scroll up in coc autocomplete list
vim.api.nvim_set_keymap('i', '<S-Tab>', 'coc#pum#visible() ? coc#pum#prev(1) : "<S-Tab>"', { noremap = true, silent = true, expr = true })
-- Navigate to next/previous error/warning
vim.api.nvim_set_keymap('n', '<Leader>j', '<plug>(coc-diagnostic-next)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>k', '<plug>(coc-diagnostic-prev)', { noremap = true, silent = true })
-- Leader-d to jump to symbol definition
vim.api.nvim_set_keymap('n', '<Leader>d', '<plug>(coc-definition)', { noremap = true, silent = true })
-- Leader-r to list symbol references
vim.api.nvim_set_keymap('n', '<Leader>r', '<plug>(coc-references)', { noremap = true, silent = true })
-- Modifying <cr> to confirm autocomplete entry (including other edits like automatically adding imports)
vim.api.nvim_set_keymap('i', '<cr>', 'coc#pum#visible() ? coc#_select_confirm() : "<cr>"', { noremap = true, silent = true, expr = true })
-- Leader-qf to quick fix current error
vim.api.nvim_set_keymap('n', '<Leader>qf', '<plug>(coc-codeaction-cursor)', { noremap = true, silent = true })
-- Leader-s to rename symbol at cursor
vim.api.nvim_set_keymap('n', '<Leader>s', '<plug>(coc-rename)', { noremap = true, silent = true })
-- Leader-cf to navigate to current buffer's file in NERDTree
vim.api.nvim_set_keymap('n', '<Leader>cf', ':NERDTreeFind<cr>', { noremap = true, silent = true })

vim.cmd('set background=light')
vim.cmd('color PaperColor')
vim.cmd('let g:lightline = { \'colorscheme\': \'PaperColor\' }')
vim.cmd('set noshowmode')

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
