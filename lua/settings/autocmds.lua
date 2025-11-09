local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- highlight on yank
local yank_grp = augroup("Yank", { clear = true })
autocmd("TextYankPost", {
	desc = "Highlight on yank",
	group = yank_grp,
	callback = function() vim.hl.on_yank() end,
})

-- open help files in vertical split
local help_grp = augroup("Help", { clear = true })
autocmd("FileType", {
	desc = "Open help in vertical split",
	pattern = { "help", "man" },
	group = help_grp,
	callback = function() vim.cmd("wincmd L") end
})

-- delete items from quickfix list with `dd`
local qf_grp = augroup("Quickfix", { clear = true })
autocmd("FileType", {
	desc = "attach keymaps to quickfix list buffer",
	pattern = "qf",
	group = qf_grp,
	callback = function()
		vim.keymap.set('n', 'dd', function()
            local qf_list = vim.fn.getqflist()

            local current_line_number = vim.fn.line('.')

            if qf_list[current_line_number] then
                table.remove(qf_list, current_line_number)

                vim.fn.setqflist(qf_list, 'r')

                local new_line_number = math.min(current_line_number, #qf_list)
                vim.fn.cursor(new_line_number, 1)
            end
        end, {
			buffer = true,
			noremap = true,
			silent = true,
			desc = "remove item from quickfix list"
		})
	end,
})
