return {
	"ThePrimeagen/harpoon",
	lazy = true,
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	init = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add to Harpoon" })
		vim.keymap.set("n", "<leader>A", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon menu" })

		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon 1" })
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon 2" })
		vim.keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon 3" })
		vim.keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end, { desc = "Harpoon 4" })
		vim.keymap.set("n", "<leader>5", function()
			harpoon:list():select(5)
		end, { desc = "Harpoon 5" })
		vim.keymap.set("n", "<leader>6", function()
			harpoon:list():select(6)
		end, { desc = "Harpoon 6" })
		vim.keymap.set("n", "<leader>7", function()
			harpoon:list():select(7)
		end, { desc = "Harpoon 7" })

		vim.keymap.set("n", "<leader>p", function()
			harpoon:list():prev()
		end, { desc = "Harpoon [p]rev" })
		vim.keymap.set("n", "<leader>n", function()
			harpoon:list():next()
		end, { desc = "Harpoon [n]ext" })
	end,
}
