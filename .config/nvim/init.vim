"jika terjadi sebuah error error
"uabernama nonvalid charater
"itu dikarenakan file pluginnya!
call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', { 'branch': 'release'}
Plug 'honza/vim-snippets'
"themes
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'navarasu/onedark.nvim'
"colores
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'}
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
call plug#end()
"command autocmd karena gak tau cara pasang diluanya! :D

au filetype html :set tabstop=3
au filetype html :set textwidth=120
au filetype * :set autoindent
lua require("init")
au FileType html let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']