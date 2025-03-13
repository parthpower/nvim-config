return {
	"nvim-tree/nvim-tree.lua",
	config = function ()
		require("nvim-tree").setup()
		vim.keymap.set('n', '<leader>pt', vim.cmd.NvimTreeToggle)
	end
}
