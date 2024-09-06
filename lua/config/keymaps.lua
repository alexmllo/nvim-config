-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local Util = require("lazyvim.util")

map("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true })
map("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true })
map("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true })
map("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true })
map("n", "<C-\\>", "<Cmd>NvimTmuxNavigateLastActive<CR>", { silent = true })
map("n", "<C-Space>", "<Cmd>NvimTmuxNavigateNavigateNext<CR>", { silent = true })

-- Resize window
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>+")
map("n", "<C-w><down>", "<C-w>-")

-- Comment
map("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true, silent = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true, silent = true })

-- Delete keymaps
vim.keymap.del("n", "<leader>K")

-- Split windows
map("n", "ss", ":vsplit<Return>", { noremap = true, silent = true })
map("n", "sv", ":split<Return>", { noremap = true, silent = true })

-- Borderless terminal
vim.keymap.set("n", "<C-t>", function()
    Util.terminal(nil, { border = "none" })
end, { desc = "Term with border" })
