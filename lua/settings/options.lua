local opt = vim.opt

-- line number settings
opt.number = true
opt.relativenumber = true

-- number of spaces a tab counts for
opt.tabstop = 4

-- number of spaces to use for (auto)indent e.g. >>, <<
opt.shiftwidth = 4

-- enable autosave
opt.autowriteall = true

-- auto update file after modifying externally
opt.autoread = true

-- enable mouse mode, can be useful for resizing splits for example!
opt.mouse = "a"

-- only wrap whole words
opt.linebreak = true

-- every wrapped line continues visually indented
opt.breakindent = true

-- show mode information
opt.showmode = false

-- save undo history
opt.undofile = true

-- case-insensitive searching 
opt.ignorecase = true

-- case-insensitive searching unless \C or one or more capital letters in the search term
opt.smartcase = true

-- configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- show which line your cursor is on
opt.cursorline = true

-- set indicators for tabs
-- opt.list = true
-- opt.listchars = { tab = "| " }

-- integrate clipboard
opt.clipboard = "unnamed"

-- stop .swp files from being created
opt.swapfile = false
opt.backup = false

opt.conceallevel = 2

