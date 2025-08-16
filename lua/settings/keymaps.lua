-- NOTE: for setting keymap modes, refer to :h map-modes
local keySet = vim.keymap.set

-- remove search highlight
keySet("n", "<esc>", "<cmd>noh<cr>", { desc = "Remove search highlight" })

-- Save manually
keySet({ "n", "i", "x" }, "<c-s>", "<cmd>w<cr>", { desc = "Save file" })

-- quit
keySet("n", "QQ", "<cmd>wqa<cr>", { desc = "Quit and save all buffers" })
keySet("n", "QZ", "<cmd>qa!<cr>", { desc = "Quit without saving buffers" })

-- copy selected text to clipboard in visual mode
keySet("x", "<c-c>", '"+y', { desc = "Copy selected text to clipboard" })

-- copy current directory
keySet("n", "<leader>cd", '<cmd>let @+ = expand("%:p:h")<cr>', { desc = "Copy current directory" })

-- create splits
keySet("n", "<leader>s", "<cmd>split<cr>", { desc = "Horizontal split" })
keySet("n", "<leader>v", "<cmd>vsplit<cr>", { desc = "Vertical split" })

-- window navigation
keySet({ "n", "x" }, "<c-h>", "<c-w><c-h>", { desc = "Move focus to the left window" })
keySet({ "n", "x" }, "<c-j>", "<c-w><c-j>", { desc = "Move focus to the lower window" })
keySet({ "n", "x" }, "<c-k>", "<c-w><c-k>", { desc = "Move focus to the upper window" })
keySet({ "n", "x" }, "<c-l>", "<c-w><c-l>", { desc = "Move focus to the right window" })

-- window movement
keySet("n", "mh", "<c-w>H", { desc = "Move window to the left" })
keySet("n", "mj", "<c-w>J", { desc = "Move window to the bottom" })
keySet("n", "mk", "<c-w>K", { desc = "Move window to the top" })
keySet("n", "ml", "<c-w>L", { desc = "Move window to the right" })

-- window resizing
keySet({ "n", "i", "x" }, "<m-h>", "<c-w><", { desc = "Resize window to the left" })
keySet({ "n", "i", "x" }, "<m-j>", "<c-w>-", { desc = "Decrease window height" })
keySet({ "n", "i", "x" }, "<m-k>", "<c-w>+", { desc = "Increase window height" })
keySet({ "n", "i", "x" }, "<m-l>", "<c-w>>", { desc = "Resize window to the right" })
keySet({ "n", "i", "x" }, "<m-;>", "<c-w>=", { desc = "Equalize window sizes" })

-- buffer switching
keySet("n", "<leader>bs", "<cmd>ls<cr>:b ", { desc = "Switch buffers" })
keySet("n", "<leader>bd", "<cmd>ls<cr>:b ", { desc = "Delete buffer" })

-- LSP
keySet("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
keySet("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
keySet("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
keySet("n", "gK", vim.diagnostic.open_float, { desc = "Open diagnostic float" })

-- tab keymaps
keySet({ "n", "x" }, "<leader>tn", "<cmd>tabnew<cr>", { desc = "New tab" })
keySet({ "n", "x" }, "<leader>tx", "<cmd>tabclose<cr>", { desc = "Close tab" })
keySet({ "n", "x" }, "<leader>tm", ":tabmove ", { desc = "Move tab" })

-- terminal mode
keySet({ "n", "v" }, "<leader>To", "<cmd>terminal<cr>", { desc = "Open terminal" })
keySet({ "n", "v" }, "<leader>Tn", "<cmd>tabnew | terminal<cr>", { desc = "Open terminal (new tab)" })
keySet({ "n", "v" }, "<leader>Ts", "<cmd>sp | terminal<cr>", { desc = "Open terminal (horizonal split)" })
keySet({ "n", "v" }, "<leader>Tv", "<cmd>vsp | terminal<cr>", { desc = "Open terminal (vertical split)" })

-- save sessions
keySet("n", "<m-s>", ":mks! ", { desc = "Save session" })

-- toggle conceallevel
keySet({ "n", "v" }, "<m-->", function()
	local o = vim.opt
	if o.conceallevel:get() == 0 then
		o.conceallevel = 2
	else
		o.conceallevel = 0
	end
end, { desc = "toggle conceallevel" })
