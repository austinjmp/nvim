local keymap = vim.keymap

return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = function()
        vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=None]])
        require("nvim-tree").setup({
            filters = {
                dotfiles = false,
            },
            view = {
                adaptive_size = true,
            },
        })
    end,	
    keys = {
        keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>"),
        keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>"),
    },
}
