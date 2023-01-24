function requirePath(path) 
  local files = io.popen('find ~/.config/nvim/lua/' .. path .. ' -type f')
  for is_file_lua in files:lines() do
	if string.match(is_file_lua, "%.lua$") then
		local req_file = is_file_lua:gmatch('(' .. path .. '%/.+)%.lua$'){0}:gsub('/', '.')
		status_ok, _ = pcall(require, req_file)
	end
  end
end

requirePath("settings")
requirePath("plugins")

