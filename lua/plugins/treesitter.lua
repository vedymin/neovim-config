return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local treesitterConfigs = require("nvim-treesitter.configs")
		treesitterConfigs.setup({
			auto_install = true,
			ensure_installed = { "lua", "vim", "vimdoc", "javascript", "html", "svelte" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
