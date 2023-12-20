local keymap = vim.keymap

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = false,
				hidden = true,
			},
			live_grep = {
				theme = "dropdown",
				previewer = false,
			},
			buffers = {
				theme = "dropdown",
				previewer = false,
			},
		},
	})
end

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
	keys = {
		keymap.set("n", "<leader>pf", ":Telescope find_files<CR>"),
		keymap.set("n", "<leader>ps", ":Telescope live_grep<CR>"),
		keymap.set("n", "<C-p>", ":Telescope git_files<CR>"),
	},
}
