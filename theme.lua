require("catppuccin").setup({
	flavour = "mocha",
	term_colors = true,
	transparent_backround = true,
	color_overrides = {
		mocha = {
			base = "#171717", -- background
			surface2 = "#9A9A9A", -- comments
			text = "#F6F6F6"
		}
	},
})

vim.cmd("colorscheme catppuccin")
