return {
	"catppuccin/nvim",
	name = "catppuccin-macchiato",
	priority = 1000,
	lazy = false,
	config = function()
		vim.cmd("colorscheme catppuccin-macchiato")
		require("catppuccin").setup({
			flavour = "frappe",
		})
	end,
}
