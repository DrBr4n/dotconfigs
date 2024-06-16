vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.mouse = "a"
vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

-- Don't show mode, it's already in lualine
vim.opt.showmode = false

vim.opt.clipboard = "unnamedplus"

vim.opt.breakindent = true
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- vim.opt.smartindent = true

-- Case-insensitive searching unless \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.undofile = true
vim.opt.undodir = os.getenv("XDG_STATE_HOME") .. "nvim/undo"
vim.opt.swapfile = true
vim.opt.directory = os.getenv("XDG_STATE_HOME") .. "nvim/swap"
vim.opt.backup = true
vim.opt.backupdir = os.getenv("XDG_STATE_HOME") .. "nvim/backup"

vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.cursorline = true
vim.opt.scrolloff = 8

vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
