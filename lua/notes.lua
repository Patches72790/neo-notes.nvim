local M = {}

local NV_NOTES_PATH = os.getenv("NV_NOTES_PATH")

local function create_commands()
	vim.api.nvim_create_user_command("NeoNotes", function()
		require("telescope.builtin").find_files({ cwd = NV_NOTES_PATH })
		--vim.api.nvim_open_win(0, true, { relative = "win", row = 3, col = 3, width = 24, height = 24 })
	end, { desc = "Open neovim notes from default path location" })
end

M.setup = function()
	create_commands()
	vim.notify("setup neo-notes.nvim!")
end

return M
