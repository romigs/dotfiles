local status_safe, telescope = pcall(require, "telescope")
if not status_safe then
  return
end
telescope.setup{}
