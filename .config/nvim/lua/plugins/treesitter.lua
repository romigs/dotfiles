local is_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not is_ok then
  return
end


treesitter.setup ({
  -- A list of parser names, or "all"
  ensure_installed = { "c","cpp", "lua", "rust", "html", "javascript", "php", "json",
  	"scss", "css", "go"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
	
  },
incremental_selection = { enable = true },
    textobjects = { enable = true },
})

