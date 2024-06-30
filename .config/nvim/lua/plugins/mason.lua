local status_safe, mason = pcall(require, "mason")
if not status_safe then
	return
end

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

local status_safe, mason_null_ls = pcall(require, "mason-null-ls")
if not status_safe then
	return
end

mason_null_ls.setup({
	ensure_installed = {
		"stylua",
		"shfmt",
		"prettier",
		"black",
		"php-cs-fixer",
	},
	automatic_installation = true,
})
