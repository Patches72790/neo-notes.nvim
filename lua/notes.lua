local M = {}

M.setup = function()
    require('neo-notes.commands').create_commands()
	vim.notify("setup neo-notes.nvim!")
end

return M
