-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup({})

			vim.keymap.set("n", "L", "<cmd>bnext<CR>")
			vim.keymap.set("n", "H", "<cmd>bprevious<CR>")
		end,
	},
}
