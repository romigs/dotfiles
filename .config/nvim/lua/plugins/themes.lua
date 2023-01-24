-- Lua
local status_safe, theme = pcall(require, "onedark")
if not status_safe then
  return
end
theme.setup {
    style = 'deep',
     code_style = 
	{
        comments = 'italic',
        keywords = 'bold',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },
}
theme.load()
