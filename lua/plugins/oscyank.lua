return {
	"ojroques/nvim-osc52",
	config = function()
		require("osc52").setup()
		vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, {expr = true})
		vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
		vim.keymap.set('v', '<leader>c', require('osc52').copy_visual)

		-- Force unnamedplus yanks to go out via OSC52 (no system clipboard tool over ssh)
		local function copy(lines, _)
			require("osc52").copy(table.concat(lines, "\n"))
		end
		local function paste()
			return { vim.fn.split(vim.fn.getreg(""), "\n"), vim.fn.getregtype("") }
		end
		vim.g.clipboard = {
			name = "osc52",
			copy = { ["+"] = copy, ["*"] = copy },
			paste = { ["+"] = paste, ["*"] = paste },
		}
	end
}
