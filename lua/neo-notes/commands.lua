local M = {}

local create_neo_notes_cmd = function()
	local NV_NOTES_PATH = os.getenv("NV_NOTES_PATH") or os.getenv("HOME") .. "/Notes"
	vim.api.nvim_create_user_command("NeoNotes", function()
		vim.cmd("tabnew")
		vim.api.nvim_set_current_dir(NV_NOTES_PATH)
		require("telescope.builtin").find_files({ cwd = NV_NOTES_PATH })
		--vim.api.nvim_open_win(0, true, { relative = "win", row = 3, col = 3, width = 24, height = 24 })
	end, { desc = "Open neovim notes from default path location" })
end

M.create_commands = function()
	create_neo_notes_cmd()
end

return M
