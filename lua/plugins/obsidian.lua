local workspaces = {
	{
		name = "personal",
		path = "/windows/obsidian/",
	},

	{
		name = "external drive",
		path = "/run/media/scrub/One Touch/scrub stuff/obsidian",
	},
}

-- Check if a file or directory exists in this path
local function exists(file)
	local ok, err, code = os.rename(file, file)
	if not ok then
		if code == 13 then
			-- Permission denied, but it exists
			return true
		end
	end
	return ok, err
end

-- generates table of all currently available workspaces
local function genWorkspaces(workspaces)
	local available_workspaces = {} -- to be filled with paths that are available

	for _, ws in ipairs(workspaces) do
		if exists(ws.path) then
			table.insert(available_workspaces, ws)
		end
	end

	return available_workspaces
end

return {
	-- NOTE: this is a community fork of epwalsh/obsidian.nvim as it is currently unmaintained
	-- may wanna switch back once the upstream bounces back
	"obsidian-nvim/obsidian.nvim",
	version = "*",
	dependencies = { "nvim-lua/plenary.nvim" },

	keys = {
		{ mode = "n", "<leader>o:", "<cmd>Obsidian<cr>", desc = "Obsidian - all commands" },
		{ mode = "n", "<leader>on", "<cmd>Obsidian quick_switch<cr>", desc = "Obsidian - switch notes" },
		{ mode = "n", "<leader>ow", "<cmd>Obsidian workspace<cr>", desc = "Obsidian - switch workspaces" },
		{ mode = "n", "<leader>ot", "<cmd>Obsidian tags<cr>", desc = "Obsidian - search tags" },
		{ mode = "n", "<leader>oa", "<cmd>Obsidian toc<cr>", desc = "Obsidian - search headings" },
		{ mode = "n", "<leader>ol", "<cmd>Obsidian links<cr>", desc = "Obsidian - search links" },
		{ mode = "n", "<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Obsidian - search backlinks" },
		{ mode = "n", "<leader>og", "<cmd>Obsidian search<cr>", desc = "Obsidian - grep workspace" },
		{ mode = "n", "<leader>op", "<cmd>Obsidian paste_img<cr>", desc = "Obsidian - paste image" },
		{ mode = "n", "<leader>orr", "<cmd>Obsidian rename<cr>", desc = "Obsidian - rename current file" },
	},

	opts = {
		workspaces = genWorkspaces(workspaces),
		new_notes_location = "current_dir",
		preferred_link_style = "markdown",
		disable_frontmatter = true,
		picker = { "snacks.nvim" },
	},
}
