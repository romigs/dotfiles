vim.opt.list = true
vim.opt.listchars:append "eol:↴"
local status_safe, indent = pcall(require, "indent_blankline")
if not status_safe then
  return
end
indent.setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = false,
	show_end_of_line = true,
}
