vim.keymap.set('i', 'jk', '<esc>')

vim.keymap.set('i', 'aa', '<esc> $')
vim.keymap.set('i', 'ii', '<esc> ^')

--command yang diperuntukan untuk nvim!
local normal_map = function(command, exec)
	vim.keymap.set('n', command, ':'..exec..'<CR>',{noremap = true})
end

local insert_map = function(command, exec)
	vim.keymap.set('i', command, '<esc>:'..exec..'<CR>',{noremap = true})
end

local normal_ctrl_map = function(command, exec)
	normal_map('<C-'..command..'>', exec);
end

local normal_alt_map = function(command, exec)
	normal_map('<A-'..command..'>', exec);
end

local insert_alt_map = function(command, exec)
	insert_map('<A-'..command..'>', exec);
end


local insert_ctrl_map= function(command, exec)
	insert_map('<C-'..command..'>', exec);
end

normal_map("zz", "/clean-search-qwerty")
--fungsi untuk membuka Telescope
normal_map("tt", "Telescope")--plugin
--save dan keluar satu tab
normal_map("qq", "w! | bd")--plugin
--save dan keluar samua tab
normal_map("Q", "wq!")
normal_map("ff", "w!")--plugin
-- command untuk menselect semua nama yang sama dan merubahnya:
-- :% s/words/newwords
-- fungsi untuk membuka dan menutup tree pada mode normal dan insert
normal_alt_map("b", "NvimTreeToggle") --plugin
insert_alt_map("b", "NvimTreeToggle")  --plugin
-- fungsi untuk pindah tab pada mode normal dan insert
normal_alt_map("l", "BufferLineCycleNext") --plugin
normal_alt_map("h", "BufferLineCyclePrev")--plugin
insert_alt_map("l", "BufferLineCycleNext")--plugin
insert_alt_map("h", "BufferLineCyclePrev")--plugin


--fungsi untuk mencari file pada mode normal dan insert
normal_ctrl_map("p", "Telescope find_files")----plugin
insert_ctrl_map("p", "Telescope find_files")----plugin
