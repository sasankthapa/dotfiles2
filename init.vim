set relativenumber 
set number
set nohlsearch
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set nowrap
set expandtab
set noswapfile
set undodir=~/.vim/undodir
set undofile
set nobackup
set incsearch
set termguicolors
set completeopt=menu,menuone,noselect
set colorcolumn=80
set signcolumn=yes

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig' "Collection of configurations for built-in LSP client
Plug 'hrsh7th/nvim-cmp' "Autocompletion plugin
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip' "Snippets source for nvim-cmp
Plug 'L3MON4D3/LuaSnip' "Snippets plugin
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }
Plug 'rafamadriz/neon'
call plug#end()

lua require('start')

" colorscheme gruvbox

highlight Normal guibg=None

let mapleader=" "

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>nh <C-W>n<CR><C-W>l<CR>
nnoremap <leader>nv <C-W>v<CR><C-W>l<CR>
nnoremap <leader>l <C-W>l<CR>
nnoremap <leader>h <C-W>h<CR>
nnoremap <leader>j <C-W>j<CR>
nnoremap <leader>k <C-W>k<CR>
nnoremap <leader>rc :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>p :Prettier<CR>

nnoremap <silent> <C-f> :silent !tmux neww findlif<CR>

nnoremap d "_d
nnoremap x "_x

