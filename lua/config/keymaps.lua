-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local telescope = require("telescope.builtin")
local opts = { noremap = true, silent = true }

-- Increase/Decrease
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Telescope
keymap.set("n", "<leader>f", telescope.find_files, {})
keymap.set("n", "<leader>a", telescope.live_grep, {})
keymap.set("n", "<leader>gg", telescope.git_status, {})

-- New tab
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<leader>1", ":bprev<Return>", opts)
keymap.set("n", "<leader>2", ":bnext<Return>", opts)
keymap.set("n", "<leader>3", ":bd<Return>", opts)
keymap.set("n", "<leader>ca", "bufdo bd", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")

-- LSP
keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
