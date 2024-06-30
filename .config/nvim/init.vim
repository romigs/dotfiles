"jika terjadi sebuah error error
"uabernama nonvalid charater
"
call plug#begin('~/.vim/pluggin')
"Plug 'VundleVim/Vundle.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neoclide/coc.nvim', { 'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'navarasu/onedark.nvim' "themes
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'} "coloring code
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'rstacruz/vim-closer'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'jay-babu/mason-null-ls.nvim'
Plug 'stevearc/dressing.nvim'
call plug#end()
"command autocmd karena gak tau cara pasang diluanya! :D
set linebreak
au filetype html :set tabstop=3
au filetype html :set textwidth=120
au filetype * :set autoindent
lua require("init")
au filetype python :set shiftwidth=2

au FileType html let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']

au filetype blade.php :set shiftwidth=2
"jika nvim tidak bisa mencopy kedalam clipboar, maka harus instal program linux clipboard dulu!
"jika pada coc-prettier tidak jalan, coba gunakan command ini pada terminalnya:
"npm install prettier -D --save-exact => menginstall prettier secara local
"npm install --save-dev --save-exact prettier  => mungkin untuk globalnya!
"
