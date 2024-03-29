return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		-- Append file to harpoon list
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():append()
		end)
		-- Toggle harpoon quick menu
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
		-- Jump to first file in harpoon list
		vim.keymap.set("n", "<C-7>", function()
			harpoon:list():select(1)
		end)
		-- Jump to second file in harpoon list
		vim.keymap.set("n", "<C-8>", function()
			harpoon:list():select(2)
		end)
		-- Jump to third file in harpoon list
		vim.keymap.set("n", "<C-9>", function()
			harpoon:list():select(3)
		end)
		-- Jump to fourth file in harpoon list
		vim.keymap.set("n", "<C-0>", function()
			harpoon:list():select(4)
		end)
	end,
}
