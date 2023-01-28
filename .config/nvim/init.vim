"jika terjadi sebuah error error
"uabernama nonvalid charater
"itu dikarenakan file pluginnya
set linebreak
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
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'navarasu/onedark.nvim' "themes
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'} "coloring code
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'rstacruz/vim-closer'
call plug#end()
"command autocmd karena gak tau cara pasang diluanya! :D
au filetype html :set tabstop=3
au filetype html :set textwidth=120
au filetype * :set autoindent
lua require("init")
au FileType html let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']

"jika pada coc-prettier tidak jalan, coba gunakan command ini pada terminalnya:
"npm install prettier -D --save-exact => menginstall prettier secara local
"npm install --save-dev --save-exact prettier  => mungkin untuk globalnya!
