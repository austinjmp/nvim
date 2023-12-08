return {
	"EdenEast/nightfox.nvim",
	name = "nightfox",
	priority = 1000,
	lazy = false,
	config = function()
		vim.cmd("colorscheme nightfox")
		require("nightfox").setup({})
	end,
}
