--settings.lua
local g = vim.g
local opt = vim.opt --vim.option / vim.pilihan!
opt.mouse = 'a'
opt.wrap = true
opt.breakindent = true
opt.autoindent = true
opt.hidden = true
opt.relativenumber = true
opt.number = true
opt.textwidth = 120
opt.scrolloff = 9
opt.numberwidth = 4
opt.showmode = false
opt.updatetime = 250
opt.cursorline = true
opt.signcolumn = 'yes:1'
opt.termguicolors = true
opt.whichwrap = vim.o.whichwrap .. '<,>,h,l'
--clipboard="unnamedplus" agar setiap copy tersimpan pada clipboard!
opt.clipboard="unnamedplus"
opt.syntax="on"
opt.shiftwidth = 2
opt.tabstop = 4 
opt.tabend = 4
opt.smarttab = true
opt.linebreak = true
opt.formatoptions = 1
opt.filetype = "on"

-- split windows
opt.splitright = true -- split vertical window to the right
