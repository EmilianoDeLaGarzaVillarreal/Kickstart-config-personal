return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
				comments = { italic = false },
			},
		})
		vim.g.transparent_enabled = true
		vim.cmd.colorscheme("tokyonight-night")

		-- Toggle background transparency
		local bg_transparent = true

		local toggle_transparency = function()
			bg_transparent = not bg_transparent
			require("tokyonight").setup({
				transparent = bg_transparent,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
					comments = { italic = false },
				},
			})
			vim.cmd.colorscheme("tokyonight-night")
		end

		vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
	end,
}
