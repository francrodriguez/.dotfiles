" NVIM Config file by Franc
"
set exrc
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set relativenumber
set number

set undofile
set undodir=~/.config/nvim/undodir
set noswapfile
set nobackup

set nowrap
set noerrorbells

set signcolumn=yes
set colorcolumn=80

set guicursor=
set termguicolors

set nohlsearch
set incsearch
set hidden
set expandtab
set smartindent
set smartcase
set scrolloff=8
set showmode

" Give more space for displaying messages
set cmdheight=2

set updatetime=50
" Don't pass message to |ins-completion-menu|
set shortmess+=c

set completeopt=menu,menuone,noselect


call plug#begin()
" Theme
Plug 'gruvbox-community/gruvbox'
" Tressitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
"
" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" CMP
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'airblade/vim-gitgutter'

" GIT
Plug 'tpope/vim-fugitive'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Trouble
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

" Surround
Plug 'tpope/vim-surround'

" Laravel
"Plug 'tpope/vim-dispatch'
"Plug 'tpope/vim-projectionist'
"Plug 'noahfrederick/vim-composer'
"Plug 'noahfrederick/vim-laravel'

call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "

" Navegador de fitxers
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Copy to clipboard i altres coses
vnoremap <leader> y "+y
nnoremap <leader> y "+y
vnoremap <leader> p "_dP
nnoremap <leader> Y gg"+yG

" Moure linies (Visual Mode)
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Recerca centrada
nnoremap n nzzzv
nnoremap N Nzzzv

" File navigation
nnoremap <leader>pv :Ex<CR>

" Highlight the current line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

" Esborrem espais de més
augroup FRANC
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

" Remarca text a copiar <== Verificar
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 60})
augroup END

lua require("franc")
lua require("telescope")

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>fc <cmd>lua require('telescope.builtin').command_history()<cr>

nnoremap <leader>gs <cmd>lua require('telescope.builtin').git_status()<cr>
nnoremap <leader>gc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>


" Keymaps trouble
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>
